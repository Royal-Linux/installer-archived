#!/usr/bin/env bash

## Copyright (C) 2020 Ulises Jeremias Cornejo Fandos
## This project is based on Anarchy - Copyright (C) 2017 Dylan Schacht
## Licensed under GPL v2.0
##
##     @script.name [OPTION] ARGUMENTS...
##
## Options:
##
##         -h, --help          All client scripts have this, it can be omitted.
##         -c, --no-color      Disable color output
##         -d, --docker        Compile inside docker. only for 'x86_64' architecture
##         -i, --no-input      Don't ask user for input
##         -p, --purge         Remove build artifacts like work and profile dirs
##
##         --arch=ARCH         Generates the ISO with the specified architecture. ARCH can take 'x86_64', 'i686' or 'both' value.
##                             Default value: 'x86_64'
##
##         --output-dir=DIR    Specify directory for generated ISOs/checksums
##

# Exit on error
# set -o errexit
# set -o errtrace

# Enable tracing of what gets executed
# set -o xtrace

WORKING_DIR="$(pwd)"
ARCHISO_DIR=/usr/share/archiso/configs/releng
SRC_DIR="${WORKING_DIR}"/src
UTIL_DIR="${WORKING_DIR}"/util

if [ "${IS_CONTAINER}" = "yes" ]; then
  WORKING_DIR=/archroyal
  SRC_DIR=/archroyal

  # Update packages with reflector
  reflector --verbose --latest 5 --sort rate --save /etc/pacman.d/mirrorlist
fi

. "${UTIL_DIR}"/opts/opts.sh

arch=${arch:-"x86_64"}

OUTPUT_DIR=${output_dir:-"${WORKING_DIR}"/out}
PROFILE_DIR="${WORKING_DIR}"/profile
WORK_DIR="${WORKING_DIR}"/work

# Check root permission
check_root() {
  [ "$(id -u)" -ne 0 ] && echo "$0 needs to be run with root permissions" && exit
}

# Remove build artifacts like work and profile dirs
run_purge() {
  rm -fr "${PROFILE_DIR}" "${WORK_DIR}"
}

# Check if dependencies are installed
check_deps() {
  echo "Checking dependencies"

  if ! pacman -Qi archiso >/dev/null 2>&1; then
    echo "'archiso' is not installed, but is required by $0, do you want to install it?"
    echo "Install [Y/n]: "
    read -r ans

    case "${ans}" in
    n | N | no | NO | No | nO)
      echo "Not installing 'archiso', exiting"
      exit
      ;;
    *)
      pacman -Sy --noconfirm archiso
      ;;
    esac
  fi

  if ! pacman -Qi mkinitcpio-archiso >/dev/null 2>&1; then
    echo "'mkinitcpio-archiso' is not installed, but is required by $0, do you want to install it?"
    echo "Install [Y/n]: "
    read -r ans

    case "${ans}" in
    n | N | no | NO | No | nO)
      echo "Not installing 'mkinitcpio-archiso', exiting"
      exit
      ;;
    *)
      pacman -Sy --noconfirm mkinitcpio-archiso
      ;;
    esac
  fi
}

prepare_build_dir() {
  # Show message with architecture
  echo "Building for architecture: ${ARCHITECTURE}"

  # Create temporary directory if not exists
  [ ! -d "${PROFILE_DIR}" ] && mkdir "${PROFILE_DIR}"

  # Copy Archiso files to tmp dir
  cp -r "${ARCHISO_DIR}"/* "${PROFILE_DIR}"/

  # Copy ArchRoyal files to tmp dir
  cp -rf "${SRC_DIR}"/root/. "${PROFILE_DIR}"/airootfs/root/
  cp -rf "${SRC_DIR}"/usr/. "${PROFILE_DIR}"/airootfs/usr/
  cp -rf "${SRC_DIR}"/etc/. "${PROFILE_DIR}"/airootfs/etc/

  # Copy splash.png to bootloader directory
  cp -f "${WORKING_DIR}"/assets/splash.png "${PROFILE_DIR}"/airootfs/usr/share/archroyal/boot/splash.png

  # Copy ArchRoyal logo to extras
  cp -f "${WORKING_DIR}"/assets/logo.png "${PROFILE_DIR}"/airootfs/usr/share/archroyal/extra/archroyal-icon.png

  echo "archroyal" >>"${PROFILE_DIR}"/airootfs/root/.zlogin

  # Replace profiledef file
  rm "${PROFILE_DIR}"/profiledef.sh
  cp "${WORKING_DIR}"/profiledef.sh "${PROFILE_DIR}"/

  # Remove motd since it's not useful in ArchRoyal
  rm "${PROFILE_DIR}"/airootfs/etc/motd

  if [ "${arch}" == 'i686' ]; then
    mv "${PROFILE_DIR}"/packages.x86_64 "${PROFILE_DIR}"/packages.i686
    sed -i '/^edk2-shell$/d' "${PROFILE_DIR}"/packages.i686
  fi

  # Add archroyal packages
  if [ "${arch}" == 'i686' ]; then
    cat "${WORKING_DIR}"/archroyal-packages.i686 >>"${PROFILE_DIR}"/packages.i686
  else
    cat "${WORKING_DIR}"/archroyal-packages.x86_64 >>"${PROFILE_DIR}"/packages.x86_64
  fi

  # Re-add custom bootloader entries
  cp -f "${WORKING_DIR}"/assets/splash.png "${PROFILE_DIR}"/syslinux/splash.png
  sed -i 's/Arch Linux install medium/ArchRoyal Installer/' "${PROFILE_DIR}"/efiboot/loader/entries/archiso-x86_64-linux.conf
  sed -i 's/Arch Linux install medium/ArchRoyal Installer/' "${PROFILE_DIR}"/syslinux/archiso_sys-linux.cfg
  sed -i 's/Arch Linux/ArchRoyal/' "${PROFILE_DIR}"/syslinux/archiso_sys-linux.cfg
  sed -i 's/Arch Linux install medium/ArchRoyal Installer/' "${PROFILE_DIR}"/syslinux/archiso_pxe-linux.cfg
  sed -i 's/Arch Linux/ArchRoyal/' "${PROFILE_DIR}"/syslinux/archiso_pxe-linux.cfg
  sed -i 's/Arch Linux/ArchRoyal Installer/' "${PROFILE_DIR}"/syslinux/archiso_head.cfg

  # If arquitecture is i686, add extra changes
  if [ "${arch}" == 'i686' ]; then
    sed -i -e 's@\bx86_64\b@i686@g' \
      -e '/^bootmodes=/ s@\(\s\+'"'"'uefi-x64\.systemd-boot\.\S\+'"'"'\)\+@@' \
      "${PROFILE_DIR}"/profiledef.sh
    find "${PROFILE_DIR}"/airootfs "${PROFILE_DIR}"/efiboot "${PROFILE_DIR}"/syslinux -type f -exec \
      sed -i -e 's@\bx86_64\b@i686@g' -e 's@pacman-key --populate archlinux@\032@g' {} +

    # Add mirrorlist32 for i686 build and edit pacman.conf
    wget --no-verbose "https://www.archlinux32.org/mirrorlist/?country=all&protocol=http&protocol=https&ip_version=4&use_mirror_status=on" -O /etc/pacman.d/mirrorlist32 &&
      sed -i -e 's/#//' /etc/pacman.d/mirrorlist32
    sed -i -e 's/\/mirrorlist/\032/' -e 's/ auto/ i686/' "${PROFILE_DIR}"/pacman.conf

    # Add archlinux32 keyring and clean pacman database
    wget --no-verbose "http://pool.mirror.archlinux32.org/i686/core/archlinux32-keyring-20210331-1.0-any.pkg.tar.zst" -O /var/cache/pacman/pkg/archlinux32-keyring.pkg.tar.zst
    pacman -U /var/cache/pacman/pkg/archlinux32-keyring.pkg.tar.zst --needed --noconfirm
    pacman -Scc --noconfirm
  fi

}

ssh_config() {
  echo "Adding SSH config"

  # Check optional configuration file for SSH connection
  if [ -f autoconnect.sh ]; then
    . autoconnect.sh

    # Copy PUBLIC_KEY to authorized_keys
    if [ ! -d airootfs/etc/skel/.ssh ]; then
      mkdir -p airootfs/etc/skel/.ssh
    fi
    cp "${PUBLIC_KEY}" airootfs/etc/skel/.ssh/authorized_keys
    chmod 700 airootfs/etc/skel/.ssh
    chmod 600 airootfs/etc/skel/.ssh/authorized_keys
  fi
}

geniso() {
  echo "Generating iso"
  cd "${WORKING_DIR}" || exit
  mkarchiso -v "${PROFILE_DIR}" || exit
}

checksum_gen() {
  echo "Generating checksum"

  cd "${OUTPUT_DIR}" || exit
  filename="$(basename "$(find . -name "archroyal-*${arch}.iso")")"

  if [ ! -f "${filename}" ]; then
    echo "Mising file ${filename}"
    exit
  fi

  sha512sum --tag "${filename}" >"${filename}".sha512sum || exit
  echo "Created checksum file ${filename}.sha512sum"
}

main() {
  check_root
  check_deps
  prepare_build_dir
  ssh_config
  geniso
  checksum_gen
}

if [ -n "${purge}" ]; then
  [ -d "${PROFILE_DIR}" ] && run_purge
  [ -d "${WORK_DIR}" ] && run_purge
fi

if [ -n "${docker}" ]; then
  if [ "${arch}" == "x86_64" ]; then
    check_root
    [ ! -d "${OUTPUT_DIR}" ] && mkdir "${OUTPUT_DIR}"
    docker build --rm -t archroyal --no-cache . &&
      docker run --rm -v "${OUTPUT_DIR}":/archroyal/out -t -i --privileged archroyal &&
      docker image rm archroyal
    exit
  else
    # CONTAINER == 'true' | ARCHITECTURE != 'x86_64'
    echo "The --container option is only available for 64-bit architecture."
    exit 1
  fi
fi

if [ "${arch}" == 'both' ]; then
  arch='i686' && main && run_purge && arch='x86_64' && main
  if [ -n "${purge}" ]; then
    [ -d "${PROFILE_DIR}" ] && run_purge
    [ -d "${WORK_DIR}" ] && run_purge
  fi
else
  main
  if [ -n "${purge}" ]; then
    [ -d "${PROFILE_DIR}" ] && run_purge
    [ -d "${WORK_DIR}" ] && run_purge
  fi
fi
