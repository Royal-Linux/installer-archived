#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="archroyal"
iso_label="ARCHROYAL023"
iso_publisher="ArchRoyal Installer <https://github.com/ArchRoyal-Linux/installer>"
iso_application="ArchRoyal Installer"
iso_version="0.2.3"
install_dir="archroyal"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/usr/bin/archroyal"]="0:0:755"
)
