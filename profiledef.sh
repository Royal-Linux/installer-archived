#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="archroyal"
iso_label="ARCHROYAL010"
iso_publisher="ArchRoyal Installer <https://archroyalinstaller.org>"
iso_application="ArchRoyal Installer"
iso_version="1.3.1"
install_dir="archroyal"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
