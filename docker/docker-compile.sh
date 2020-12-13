#!/usr/bin/env bash

######## DON'T RENAME THIS FILE ########
# Don't run this script directly. Run 'compile' from
# project root. It will set requiredenvironment variables.

# This script would be executed from inside docker container and
# copies scripts and other stuff from project to docker container.
# From inside docker container, [project root] is accessible at '/usr/src/app' path.
# This script would be executed as 'root' inside container. Non root user is 'builder'.

# Viriables

project_dir="/usr/src/app"
custom_iso="${project_dir}"/customiso
squashfs="${custom_iso}"/arch/x86_64/squashfs-root
out_dir="${project_dir}"/out # Directory for generated ISO

# Label must be up to 11 chars long (incremental numbers)
# archroyal_iso_label="ARCHROYAL" # from ENV
# archroyal_iso_release="0.0.1"  # from ENV
archroyal_iso_name="archroyal-${archroyal_iso_release}-x86_64.iso"

# Packages to add to local repo
local_aur_packages=(
    'numix-icon-theme-git'
    'numix-circle-icon-theme-git'
    'oh-my-zsh-git'
    'opensnap'
    'perl-linux-desktopfiles'
    'obmenu-generator'
    'yay-bin'
    'openbox-themes'
    'arch-wiki-cli'
    'pygtk'
    'python2-distutils-extra'
    'oblogout'
)

init() {
    # Check for existing Arch iso
    if (ls "${project_dir}"/archlinux-*-x86_64.iso &>/dev/null); then
        # Outputs Arch iso filename prev: iso
        local_arch_iso="$(ls "${project_dir}"/archlinux-*-x86_64.iso | tail -n1 | sed 's!.*/!!')"
    fi

    if [ ! -d "${out_dir}" ]; then
        mkdir "${out_dir}"
    fi

    # Remove existing ArchRoyal iso with same name
    if [ -e "${out_dir}"/"${archroyal_iso_name}" ]; then
        rm "${out_dir}"/"${archroyal_iso_name}"
    fi
}

extract_arch_iso() {
    cd "${project_dir}" || exit

    if [ -d "${custom_iso}" ]; then
        rm -rf "${custom_iso}"
    fi

    echo -e "\nExtracting Arch Linux image ...\n"

    if [ -f "${local_arch_iso}" ]; then
        # Extract Arch iso to mount directory and continue with build
        7z x "${local_arch_iso}" -o"${custom_iso}"
        echo -e "Done extracting image\n"
    else
        echo -e "Error: \"${local_arch_iso}\" is missing\!\n"
        exit 2
    fi
}

copy_config_files() {
    # Change directory into the iso, where the filesystem is stored.
    # Unsquash root filesystem 'airootfs.sfs', this creates a directory 'squashfs-root' containing the entire system
    echo "Unsquashing Arch image ..."
    cd "${custom_iso}"/arch/x86_64 || exit
    unsquashfs airootfs.sfs
    echo "Done unsquashing airootfs.sfs"
    echo ""

    echo "Adding console and locale config files to iso ..."
    # Copy over vconsole.conf (sets font at boot), locale.gen (enables locale(s) for font) & uvesafb.conf
    cp "${project_dir}"/etc/vconsole.conf "${project_dir}"/etc/locale.gen "${squashfs}"/etc/
    arch-chroot "${squashfs}" /bin/bash locale-gen

    # Copy over main ArchRoyal config and installer script, make them executable
    echo "Adding archroyal config and installer scripts to iso ..."
    cp "${project_dir}"/etc/archroyal.conf "${project_dir}"/etc/pacman.conf "${squashfs}"/etc/
    cp "${project_dir}"/archroyal-installer "${squashfs}"/usr/bin/archroyal
    cp "${project_dir}"/extra/sysinfo "${project_dir}"/extra/iptest "${squashfs}"/usr/bin/
    chmod +x "${squashfs}"/usr/bin/archroyal "${squashfs}"/usr/bin/sysinfo "${squashfs}"/usr/bin/iptest

    # Create ArchRoyal and lang directories, copy over all lang files
    echo "Adding language files to iso ..."
    mkdir -p "${squashfs}"/usr/share/archroyal/lang "${squashfs}"/usr/share/archroyal/extra "${squashfs}"/usr/share/archroyal/boot "${squashfs}"/usr/share/archroyal/etc
    cp -r "${project_dir}"/lang/* "${squashfs}"/usr/share/archroyal/lang/

    # Create shell function library, copy /lib to squashfs-root
    echo "Adding archroyal scripts to iso ..."
    mkdir "${squashfs}"/usr/lib/archroyal
    cp "${project_dir}"/lib/* "${squashfs}"/usr/lib/archroyal/

    # Copy over extra files (dot files, desktop configurations, help file, issue file, hostname file)
    echo -e "Adding dot files and desktop configurations to iso ..."
    rm "${squashfs}"/root/install.txt
    cp "${project_dir}"/extra/shellrc/.zshrc "${squashfs}"/root/
    cp "${project_dir}"/extra/.help "${project_dir}"/extra/.dialogrc "${squashfs}"/root/
    cp "${project_dir}"/extra/shellrc/.zshrc "${squashfs}"/etc/zsh/zshrc
    cat "${project_dir}"/extra/.helprc | tee -a "${squashfs}"/root/.zshrc >/dev/null
    cp "${project_dir}"/etc/hostname "${project_dir}"/etc/issue_cli "${squashfs}"/etc/
    cp -r "${project_dir}"/boot/splash.png "${project_dir}"/boot/loader/ "${squashfs}"/usr/share/archroyal/boot/
    cp "${project_dir}"/etc/nvidia340.xx "${squashfs}"/usr/share/archroyal/etc/

    if [ -d branding ]; then
        cp "${project_dir}"/branding/wallpapers/* "${squashfs}"/usr/share/archroyal/extra/wallpapers/
    else
        echo "Missing branding directory, skipping ..."
    fi

    # Copy over built packages and create repository
    echo "Adding built AUR packages to iso ..."
    mkdir "${custom_iso}"/arch/x86_64/squashfs-root/usr/share/archroyal/pkg

    # for pkg in $(echo "${local_aur_packages[@]}"); do
    #     cp /home/builder/"${pkg}"/*.pkg.tar.xz "${squashfs}"/usr/share/archroyal/pkg/
    # done

    # cd "${squashfs}"/usr/share/archroyal/pkg || exit
    # repo-add archroyal-local.db.tar.gz *.pkg.tar.xz
    # cd "${project_dir}" || exit

    echo "Done adding files to iso"
    echo ""
}

build_system() {
    echo "Installing packages to new system ..."
    # Install fonts, fbterm, fetchmirrors etc.
    # TODO: Make packages offline if possible
    pacman --root "${squashfs}" --cachedir "${squashfs}"/var/cache/pacman/pkg --noconfirm -Sy terminus-font acpi zsh-syntax-highlighting pacman-contrib
    pacman --root "${squashfs}" --cachedir "${squashfs}"/var/cache/pacman/pkg -Sl | awk '/\[installed\]$/ {print $1 "/" $2 "-" $3}' > "${custom_iso}"/arch/pkglist.x86_64.txt
    pacman --root "${squashfs}" --cachedir "${squashfs}"/var/cache/pacman/pkg --noconfirm -Scc
    rm -f "${squashfs}"/var/cache/pacman/pkg/*
    echo "Done installing packages to new system"
    echo ""

    # cd back into root system directory, remove old system
    cd "${custom_iso}"/arch/x86_64 || exit
    rm airootfs.sfs

    # Recreate the iso using compression, remove unsquashed system, generate checksums
    echo "Recreating ArchRoyal image ..."
    mksquashfs squashfs-root airootfs.sfs -b 1024k -comp xz
    rm -r squashfs-root
    md5sum airootfs.sfs > airootfs.md5
    echo "Done recreating ArchRoyal image"
    echo ""
}

configure_boot() {
    echo "Configuring boot ..."
    # arch_iso_label="$(<"${custom_iso}"/loader/entries/archiso-x86_64-linux.conf awk 'NR==6{print $NF}' | sed 's/.*=//')"
    # arch_iso_hex="$(<<<"${arch_iso_label}" xxd -p)"
    # archroyal_iso_hex="$(<<<"${archroyal_iso_label}" xxd -p)"

    # Replace profiledef file
    # rm "${custom_iso}"/profiledef.sh
    cp "${working_dir}"/profiledef.sh "${custom_iso}"/

    cp "${project_dir}"/boot/splash.png "${custom_iso}"/syslinux/

    sed -i 's/Arch Linux install medium/ArchRoyal Installer/' "${custom_iso}"/loader/entries/archiso-x86_64-linux.conf
    sed -i 's/Arch Linux install medium/ArchRoyal Installer/' "${custom_iso}"/syslinux/archiso_sys-linux.cfg
    sed -i 's/Arch Linux/ArchRoyal/' "${custom_iso}"/syslinux/archiso_sys-linux.cfg
    sed -i 's/Arch Linux install medium/ArchRoyal Installer/' "${custom_iso}"/syslinux/archiso_pxe-linux.cfg
    sed -i 's/Arch Linux/ArchRoyal/' "${custom_iso}"/syslinux/archiso_pxe-linux.cfg
    sed -i 's/Arch Linux/ArchRoyal Installer/' "${custom_iso}"/syslinux/archiso_head.cfg

    echo -e "Done configuring boot"
    echo -e ""
}

create_iso() {
    echo "Creating new ArchRoyal image ..."
    cd "${project_dir}" || exit
    mkarchiso -v "${custom_iso}" || exit

    if [ "$?" -eq 0 ]; then
        rm -rf "${custom_iso}"
        generate_checksums
        chmod -R a+rwX "${out_dir}"
        # chown -R :users "${out_dir}"
    else
        echo "Error: Image creation failed, exiting."
        exit 4
    fi
}

generate_checksums() {
    echo "Generating image checksum ..."
    cd "${out_dir}"
    echo -e "$(sha256sum "${archroyal_iso_name}")" > "${archroyal_iso_name}".sha256sum
    echo "Done generating image checksum"
    echo ""
}

init
extract_arch_iso
copy_config_files
build_system
configure_boot
create_iso

echo -e "\"${archroyal_iso_name}\" image generated successfully. Check 'out' directory.\n"
exit 0
