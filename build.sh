#!/usr/bin/env bash

## Copyright (C) 2020 Ulises Jeremias Cornejo Fandos
## Licensed under GPL v3.0
##
##     @script.name [OPTION] ARGUMENTS...
##
## Options:
##
##         -c, --no-color      Disable color output
##         -d, --docker        Compile inside docker
##         -i, --no-input      Don't ask user for input
##         --output-dir=DIR    Specify directory for generated ISOs/checksums
##         -h, --help          All client scripts have this, it can be omitted.

# Exit on error
# set -o errexit
# set -o errtrace

# Enable tracing of what gets executed
# set -o xtrace

ROOT=$(dirname $0)
source "$ROOT/util/opts/opts.sh" || exit

WORKING_DIR="$(pwd)"
ARCHISO_DIR=/usr/share/archiso/configs/releng
SRC_DIR="${WORKING_DIR}"/src

if [ "${IS_CONTAINER}" = "yes" ]; then
  WORKING_DIR=/archroyal
  SRC_DIR=/archroyal

  # Update packages with reflector
  reflector --verbose --latest 5 --sort rate --save /etc/pacman.d/mirrorlist
fi

OUTPUT_DIR=${output_dir:-"${WORKING_DIR}"/out}
PROFILE_DIR="${WORKING_DIR}"/profile

# Check root permission
check_root() {
  [ "$(id -u)" -ne 0 ] && echo "$0 needs to be run with root permissions" && exit
}

# Check if dependencies are installed
check_deps() {
  if ! pacman -Qi archiso >/dev/null 2>&1 || ! pacman -Qi mkinitcpio-archiso >/dev/null 2>&1; then
    pacman -Sy --noconfirm archiso mkinitcpio-archiso
  fi
}

prepare_build_dir() {
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
  # cp -f "${WORKING_DIR}"/assets/logo.png "${PROFILE_DIR}"/airootfs/usr/share/archroyal/extra/archroyal-icon.png

  echo "archroyal" >>"${PROFILE_DIR}"/airootfs/root/.zlogin

  # Replace profiledef file
  rm "${PROFILE_DIR}"/profiledef.sh
  cp "${WORKING_DIR}"/profiledef.sh "${PROFILE_DIR}"/

  # Remove motd since it's not useful in ArchRoyal
  rm "${PROFILE_DIR}"/airootfs/etc/motd

  # Set installer's hostname and console font
  echo "archroyal" >"${PROFILE_DIR}"/airootfs/etc/hostname
  echo "FONT=ter-v16n" >>"${PROFILE_DIR}"/airootfs/etc/vconsole.conf

  # Add archroyal packages
  packages=(
    'dialog'
    'git'
    'networkmanager'
    'wget'
    'zsh-syntax-highlighting'
  )

  for package in "${packages[@]}"; do
    echo "${package}" >>"${PROFILE_DIR}"/packages.x86_64
  done

  # Re-add custom bootloader entries
  cp -f "${WORKING_DIR}"/assets/splash.png "${PROFILE_DIR}"/syslinux/splash.png
  sed -i 's/Arch Linux install medium/ArchRoyal Installer/' "${PROFILE_DIR}"/efiboot/loader/entries/archiso-x86_64-linux.conf
  sed -i 's/Arch Linux install medium/ArchRoyal Installer/' "${PROFILE_DIR}"/syslinux/archiso_sys-linux.cfg
  sed -i 's/Arch Linux/ArchRoyal/' "${PROFILE_DIR}"/syslinux/archiso_sys-linux.cfg
  sed -i 's/Arch Linux install medium/ArchRoyal Installer/' "${PROFILE_DIR}"/syslinux/archiso_pxe-linux.cfg
  sed -i 's/Arch Linux/ArchRoyal/' "${PROFILE_DIR}"/syslinux/archiso_pxe-linux.cfg
  sed -i 's/Arch Linux/ArchRoyal Installer/' "${PROFILE_DIR}"/syslinux/archiso_head.cfg
}

ssh_config() {
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
  cd "${WORKING_DIR}" || exit
  mkarchiso -v "${PROFILE_DIR}" || exit
}

checksum_gen() {
  cd "${OUTPUT_DIR}" || exit
  filename="$(basename "$(find . -name 'archroyal-*.iso')")"

  if [ ! -f "${filename}" ]; then
    echo "Mising file ${filename}"
    exit
  fi

  sha512sum --tag "${filename}" >"${filename}".sha512sum || exit
}

main() {
  check_root
  check_deps
  prepare_build_dir
  ssh_config
  geniso
  checksum_gen
}

if [ -n "${docker}" ]; then
  check_root
  [ ! -d "${OUTPUT_DIR}" ] && mkdir "${OUTPUT_DIR}"
    docker build --rm -t archroyal --no-cache . &&
    docker run --rm -v "${OUTPUT_DIR}":/archroyal/out -t -i --privileged archroyal &&
    docker image rm archroyal
  exit
fi

main
