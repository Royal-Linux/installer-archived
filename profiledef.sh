#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="archroyal"
iso_label="ARCHROYAL021"
iso_publisher="ArchRoyal Installer <https://github.com/ArchRoyal-Linux/installer>"
iso_application="ArchRoyal Installer"
iso_version="0.2.1"
install_dir="archroyal"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
