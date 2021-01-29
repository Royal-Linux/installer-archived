# Important:
# * Make sure you are using the UTF-8 encoding
# * Don't change the variable names (e.g. intro_msg=)
# * Don't remove any occurrence of (e.g. \n or \n\n - new lines)
# * Don't remove any special characters (e.g. $a, or quotes)
# * Don't edit variables within the text (e.g. /dev/${DRIVE} or ${user})

translate() {
  key="$*"
  gettext -s "$key" | envsubst
}

translate_this() {
  clear
}

translate_this_var() {
  clear
}

start_menu_msg="ArchRoyal is an installer for the Arch Linux distribution, not a distribution based on Arch. Because you are installing Arch, you can (and should) read the Arch Wiki (wiki.archlinux.org) before reporting any post-installation issues. If an error occurs during the installation, use the command 'cat /root/archroyal.log | nc termbin.com 9999' in the terminal and share the returned URL along with a description of the issue on our Github."
start_menu_social="Github: https://github.com/ArchRoyal-Linux/installer\n"
force_quit_msg="Forcefully exited installer (ctrl+c), your system is in an unknown state and the installation may not have finished yet, so your installed system might not work. Check the logs (/root/archroyal.log) for more info."

### -------------------------------------------------------------------------------------------------

dialog_msg() {
  export TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/dialog/dialog/locale
  export TEXTDOMAIN=dialog

  title="$(translate "title")"
  backtitle="$(translate "backtitle")"
}

main_msg() {
  export TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/main/main/locale
  export TEXTDOMAIN=main

  error="$(translate "error")"
  yes="$(translate "yes")"
  no="$(translate "no")"
  ok="$(translate "ok")"
  cancel="$(translate "cancel")"
  other="$(translate "other")"
  default="$(translate "default")"
  edit="$(translate "edit")"
  back="$(translate "back")"
  done_msg="$(translate "done_msg")"
  partition="$(translate "partition")"
  size="$(translate "size")"
  add="$(translate "add")"
  new_user="$(translate "new_user")"
  change_pass="$(translate "change_pass")"
  change_fn="$(translate "change_fn")"
  change_sh="$(translate "change_sh")"
  change_su="$(translate "change_su")"
  del_user="$(translate "del_user")"
  install="$(translate "install")"
  mountpoint="$(translate "mountpoint")"
  custom="$(translate "custom")"
  write="$(translate "write")"
  none="$(translate "none")"
  select="$(translate "select")"
  drivers="$(translate "drivers")"
  os="$(translate "os")"
  custom_msg="$(translate "custom_msg")"
  custom_err_msg0="$(translate "custom_err_msg0")"
  custom_err_msg1="$(translate "custom_err_msg1")"
  write_confirm="$(translate "write_confirm")"
  intro_msg="$(translate "intro_msg")"
  wifi_msg0="$(translate "wifi_msg0")"
  wifi_msg1="$(translate "wifi_msg1")"
  connect_err0="$(translate "connect_err0")"
  connect_err1="$(translate "connect_err1")"
  locale_msg="$(translate "locale_msg")"
  zone_msg0="$(translate "zone_msg0")"
  zone_msg1="$(translate "zone_msg1")"
  keys_msg="$(translate "keys_msg")"
  drive_msg="$(translate "drive_msg")"
  part_msg="$(translate "part_msg")"
  menu_msg="$(translate "menu_msg")"
  fs_msg="$(translate "fs_msg")"
  swap_msg0="$(translate "swap_msg0")"
  swap_msg1="$(translate "swap_msg1")"
  swap_err_msg0="$(translate "swap_err_msg0")"
  swap_err_msg1="$(translate "swap_err_msg1")"
  swap_err_msg2="$(translate "swap_err_msg2")"
  efi_msg0="$(translate "efi_msg0")"
  gpt_msg="$(translate "gpt_msg")"
  install_type_msg="$(translate "install_type_msg")"
  passwd_msg0="$(translate "passwd_msg0")"
  passwd_msg1="$(translate "passwd_msg1")"
  part_err_msg="$(translate "part_err_msg")"
  part_err_msg1="$(translate "part_err_msg1")"
  part_err_msg2="$(translate "part_err_msg2")"
  manual_part_msg="$(translate "manual_part_msg")"
  root_err_msg="$(translate "root_err_msg")"
  root_err_msg1="$(translate "root_err_msg1")"
  write_confirm_msg="$(translate "write_confirm_msg")"
  return_msg="$(translate "return_msg")"
  arch_chroot_msg="$(translate "arch_chroot_msg")"
  mirror_msg0="$(translate "mirror_msg0")"
  mirror_msg1="$(translate "mirror_msg1")"
  mirror_editor_msg="$(translate "mirror_editor_msg")"
  manual_mirrors="$(translate "manual_mirrors")"
  update_mirrors_msg="$(translate "update_mirrors_msg")"
  cancel_mirrors="$(translate "cancel_mirrors")"
  mirror_cancel_msg="$(translate "mirror_cancel_msg")"
  wifi_option_msg="$(translate "wifi_option_msg")"
  wifi_util_msg="$(translate "wifi_util_msg")"
  net_util_msg0="$(translate "net_util_msg0")"
  net_util_msg1="$(translate "net_util_msg1")"
  pppoe_msg="$(translate "pppoe_msg")"
  base_msg0="$(translate "base_msg0")"
  base_msg1="$(translate "base_msg1")"
  hardened_msg0="$(translate "hardened_msg0")"
  hardened_msg1="$(translate "hardened_msg1")"
  LTS_msg0="$(translate "LTS_msg0")"
  LTS_msg1="$(translate "LTS_msg1")"
  zen_msg0="$(translate "zen_msg0")"
  zen_msg1="$(translate "zen_msg1")"
  os_prober_msg="$(translate "os_prober_msg")"
  grub_warn_msg0="$(translate "grub_warn_msg0")"
  grub_warn_msg1="$(translate "grub_warn_msg1")"
  syslinux_warn_msg="$(translate "syslinux_warn_msg")"
  exit_msg="$(translate "exit_msg")"
  install_err_msg0="$(translate "install_err_msg0")"
  install_err_msg1="$(translate "install_err_msg1")"
  multilib_msg="$(translate "multilib_msg")"
  dhcp_msg="$(translate "dhcp_msg")"
  host_msg="$(translate "host_msg")"
  host_err_msg="$(translate "host_err_msg")"
  user_exists_msg="$(translate "user_exists_msg")"
  user_menu_msg="$(translate "user_menu_msg")"
  user_msg0="$(translate "user_msg0")"
  user_msg1="$(translate "user_msg1")"
  user_msg2="$(translate "user_msg2")"
  user_err_msg="$(translate "user_err_msg")"
  user_err_msg1="$(translate "user_err_msg1")"
  user_err_msg2="$(translate "user_err_msg2")"
  fulluser_err_msg="$(translate "fulluser_err_msg")"
  fulluser_err_msg1="$(translate "fulluser_err_msg1")"
  graphics_msg="$(translate "graphics_msg")"
  desktop_cancel_msg="$(translate "desktop_cancel_msg")"
  nvidia_msg="$(translate "nvidia_msg")"
  touchpad_msg="$(translate "touchpad_msg")"
  desktop_msg="$(translate "desktop_msg")"
  dm_msg="$(translate "dm_msg")"
  dm_msg1="$(translate "dm_msg1")"
  environment_msg="$(translate "environment_msg")"
  startx_msg="$(translate "startx_msg")"
  extra_msg0="$(translate "extra_msg0")"
  extra_msg1="$(translate "extra_msg1")"
  extra_msg2="$(translate "extra_msg2")"
  extra_msg3="$(translate "extra_msg3")"
  extra_msg4="$(translate "extra_msg4")"
  extra_msg5="$(translate "extra_msg5")"
  extra_msg6="$(translate "extra_msg6")"
  extra_msg7="$(translate "extra_msg7")"
  extra_msg8="$(translate "extra_msg8")"
  software_msg0="$(translate "software_msg0")"
  software_msg1="$(translate "software_msg1")"
  software_type_msg="$(translate "software_type_msg")"
  software_warn_msg="$(translate "software_warn_msg")"
  software_noconfirm_msg="$(translate "software_noconfirm_msg")"
  complete_no_boot_msg="$(translate "complete_no_boot_msg")"
  not_complete_msg="$(translate "not_complete_msg")"
  complete_msg="$(translate "complete_msg")"
  part_frmt_msg="$(translate "part_frmt_msg")"
  swap_frmt_msg="$(translate "swap_frmt_msg")"
  vbox_msg="$(translate "vbox_msg")"
  vmware_msg="$(translate "vmware_msg")"
  hyperv_msg="$(translate "hyperv_msg")"
  vm_msg="$(translate "vm_msg")"
  bluetooth_msg="$(translate "bluetooth_msg")"
  blueman_msg="$(translate "blueman_msg")"
  retroarch_msg="$(translate "retroarch_msg")"
  btenable_msg="$(translate "btenable_msg")"
  nwmanager_msg0="$(translate "nwmanager_msg0")"
  nwmanager_msg1="$(translate "nwmanager_msg1")"
  vbox_enable_msg="$(translate "vbox_enable_msg")"
  efi_man_msg="$(translate "efi_man_msg")"
  efi_err_msg="$(translate "efi_err_msg")"
  efi_err_msg1="$(translate "efi_err_msg1")"
  vfat_msg="$(translate "vfat_msg")"
  loader_type_msg="$(translate "loader_type_msg")"
  loader_msg="$(translate "loader_msg")"
  loader_msg1="$(translate "loader_msg1")"
  loader_msg2="$(translate "loader_msg2")"
  loader_msg3="$(translate "loader_msg3")"
  loader_msg4="$(translate "loader_msg4")"
  failed_msg="$(translate "failed_msg")"
  shell_msg="$(translate "shell_msg")"
  nvidia_modeset_msg="$(translate "nvidia_modeset_msg")"
  nvidia_340msg="$(translate "nvidia_340msg")"
  nvidia_390msg="$(translate "nvidia_390msg")"
  nvidia_curmsg="$(translate "nvidia_curmsg")"
  ucode_msg="$(translate "ucode_msg")"
  ucode_failed_msg="$(translate "ucode_failed_msg")"
  shrc_msg="$(translate "shrc_msg")"
  shrc_msg1="$(translate "shrc_msg1")"
  shrc_msg3="$(translate "shrc_msg3")"
  shrc_msg4="$(translate "shrc_msg4")"
  nano_msg="$(translate "nano_msg")"
  vim_msg="$(translate "vim_msg")"
  ssh_msg="$(translate "ssh_msg")"
  ftp_msg="$(translate "ftp_msg")"
  apache_msg="$(translate "apache_msg")"
  nginx_msg="$(translate "nginx_msg")"
  cups_msg="$(translate "cups_msg")"
  part_util="$(translate "part_util")"
  part_util0="$(translate "part_util0")"
  part_util1="$(translate "part_util1")"
  part_util2="$(translate "part_util2")"
}

load_msg() {
  export TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/load/load/locale
  export TEXTDOMAIN=load

  wait_load="$(translate "wait_load")"
  connection_load="$(translate "connection_load")"
  boot_load="$(translate "boot_load")"
  swap_load="$(translate "swap_load")"
  frmt_load="$(translate "frmt_load")"
  mnt_load="$(translate "mnt_load")"
  pv_load="$(translate "pv_load")"
  lv_load="$(translate "lv_load")"
  encrypt_load="$(translate "encrypt_load")"
  mirror_load0="$(translate "mirror_load0")"
  mirror_load1="$(translate "mirror_load1")"
  efi_load1="$(translate "efi_load1")"
  grub_load1="$(translate "grub_load1")"
  grub_load2="$(translate "grub_load2")"
  syslinux_load="$(translate "syslinux_load")"
  uefi_config_load="$(translate "uefi_config_load")"
  f2fs_config_load="$(translate "f2fs_config_load")"
  kernel_config_load="$(translate "kernel_config_load")"
  encrypt_load1="$(translate "encrypt_load1")"
  dhcp_load="$(translate "dhcp_load")"
  ssh_load="$(translate "ssh_load")"
  cups_load="$(translate "cups_load")"
  ftp_load="$(translate "ftp_load")"
  http_load="$(translate "http_load")"
  dm_load="$(translate "dm_load")"
  pacman_load="$(translate "pacman_load")"
}

part_msg() {
  export TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/part/part/locale
  export TEXTDOMAIN=part

  method0="$(translate "method0")"
  method1="$(translate "method1")"
  method2="$(translate "method2")"
}

fs_msg() {
  export TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/fs/fs/locale
  export TEXTDOMAIN=fs

  fs0="$(translate "fs0")"
  fs1="$(translate "fs1")"
  fs2="$(translate "fs2")"
  fs3="$(translate "fs3")"
  fs4="$(translate "fs4")"
  fs5="$(translate "fs5")"
  fs6="$(translate "fs6")"
  fs7="$(translate "fs7")"
  fs8="$(translate "fs8")"
}

graphics_msg() {
  export TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/graphics/graphics/locale
  export TEXTDOMAIN=graphics

  gr1="$(translate "gr1")"
  gr2="$(translate "gr2")"
  gr4="$(translate "gr4")"
  gr5="$(translate "gr5")"
  gr6="$(translate "gr6")"
  gr7="$(translate "gr7")"
  gr8="$(translate "gr8")"
  gr9="$(translate "gr9")"
  gr10="$(translate "gr10")"
}

menu_msg() {
  export TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/menu/menu/locale
  export TEXTDOMAIN=menu

  start_menu="$(translate "start_menu")"
  start_menu0="$(translate "start_menu0")"
  start_menu1="$(translate "start_menu1")"
  start_menu2="$(translate "start_menu2")"
  start_menu3="$(translate "start_menu3")"
  start_menu4="$(translate "start_menu4")"
  start_menu5="$(translate "start_menu5")"
  start_menu6="$(translate "start_menu6")"
  menu="$(translate "menu")"
  menu0="$(translate "menu0")"
  menu1="$(translate "menu1")"
  menu2="$(translate "menu2")"
  menu3="$(translate "menu3")"
  menu4="$(translate "menu4")"
  menu5="$(translate "menu5")"
  menu11="$(translate "menu11")"
  menu12="$(translate "menu12")"
  menu13="$(translate "menu13")"
  menu_err_msg3="$(translate "menu_err_msg3")"
  menu_exit_msg="$(translate "menu_exit_msg")"
  steam_add_msg="$(translate "steam_add_msg")"
  audio="$(translate "audio")"
  audio_msg="$(translate "audio_msg")"
  database="$(translate "database")"
  database_msg="$(translate "database_msg")"
  graphic="$(translate "graphic")"
  graphic_msg="$(translate "graphic_msg")"
  internet="$(translate "internet")"
  internet_msg="$(translate "internet_msg")"
  multimedia="$(translate "multimedia")"
  multimedia_msg="$(translate "multimedia_msg")"
  office="$(translate "office")"
  office_msg="$(translate "office_msg")"
  programming="$(translate "programming")"
  program_msg="$(translate "program_msg")"
  terminal="$(translate "terminal")"
  terminal_msg="$(translate "terminal_msg")"
  text_editor="$(translate "text_editor")"
  text_editor_msg="$(translate "text_editor_msg")"
  util="$(translate "util")"
  util_msg="$(translate "util_msg")"
  servers="$(translate "servers")"
  servers_msg="$(translate "servers_msg")"
  fonts="$(translate "fonts")"
  fonts_msg="$(translate "fonts_msg")"
  games="$(translate "games")"
  games_msg="$(translate "games_msg")"
  extra_de="$(translate "extra_de")"
  extra_de_msg="$(translate "extra_de_msg")"
  extra_wm="$(translate "extra_wm")"
  extra_wm_msg="$(translate "extra_wm_msg")"
  reboot0="$(translate "reboot0")"
  reboot1="$(translate "reboot1")"
  reboot2="$(translate "reboot2")"
  reboot3="$(translate "reboot3")"
  reboot4="$(translate "reboot4")"
  reboot5="$(translate "reboot5")"
  reboot6="$(translate "reboot6")"
  customized_de="$(translate "customized_de")"
  customized_de_msg="$(translate "customized_de_msg")"
  more_de="$(translate "more_de")"
  more_de_msg="$(translate "more_de_msg")"
  more_wm="$(translate "more_wm")"
  more_wm_msg="$(translate "more_wm_msg")"
}

op_msg() {
  export TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/op/op/locale
  export TEXTDOMAIN=op

  welcome_op_msg="$(translate "welcome_op_msg")"
  about_op_msg="$(translate "about_op_msg")"
  connection_op_msg="$(translate "connection_op_msg")"
  locale_op_msg="$(translate "locale_op_msg")"
  zone_op_msg="$(translate "zone_op_msg")"
  key_op_msg="$(translate "key_op_msg")"
  part_op_msg="$(translate "part_op_msg")"
  partload_op_msg="$(translate "partload_op_msg")"
  manual_op_msg="$(translate "manual_op_msg")"
  edit_op_msg="$(translate "edit_op_msg")"
  mirror_op_msg="$(translate "mirror_op_msg")"
  install_op_msg="$(translate "install_op_msg")"
  config_op_msg="$(translate "config_op_msg")"
  host_op_msg="$(translate "host_op_msg")"
  passwd_op_msg="$(translate "passwd_op_msg")"
  user_op_msg="$(translate "user_op_msg")"
  user_op_msg1="$(translate "user_op_msg1")"
  de_op_msg="$(translate "de_op_msg")"
  software_op_msg="$(translate "software_op_msg")"
  complete_op_msg="$(translate "complete_op_msg")"
  menu_op_msg="$(translate "menu_op_msg")"
  install_opt_msg="$(translate "install_opt_msg")"
  install_opt0="$(translate "install_opt0")"
  install_opt1="$(translate "install_opt1")"
  install_opt2="$(translate "install_opt2")"
  install_opt3="$(translate "install_opt3")"
  install_opt4="$(translate "install_opt4")"
}

var_msg() {
  export TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/var/var/locale
  export TEXTDOMAIN=var

  gtk3_var="$(translate "gtk3_var")"
  drive_var="$(translate "drive_var")"
  drive_var1="$(translate "drive_var1")"
  drive_var2="$(translate "drive_var2")"
  drive_var3="$(translate "drive_var3")"
  encrypt_var0="$(translate "encrypt_var0")"
  encrypt_var1="$(translate "encrypt_var1")"
  encrypt_var2="$(translate "encrypt_var2")"
  root_var="$(translate "root_var")"
  manual_part_var0="$(translate "manual_part_var0")"
  manual_part_var1="$(translate "manual_part_var1")"
  manual_part_var2="$(translate "manual_part_var2")"
  manual_part_var3="$(translate "manual_part_var3")"
  manual_new_part_var="$(translate "manual_new_part_var")"
  manual_swap_var="$(translate "manual_swap_var")"
  mount_warn_var="$(translate "mount_warn_var")"
  mnt_var0="$(translate "mnt_var0")"
  fs_err_var="$(translate "fs_err_var")"
  install_var="$(translate "install_var")"
  user_edit_var="$(translate "user_edit_var")"
  user_shell_var="$(translate "user_shell_var")"
  user_var0="$(translate "user_var0")"
  user_var1="$(translate "user_var1")"
  sudo_var="$(translate "sudo_var")"
  sudo_var1="$(translate "sudo_var1")"
  deluser_var="$(translate "deluser_var")"
  root_confirm_var="$(translate "root_confirm_var")"
  part_confirm_var="$(translate "part_confirm_var")"
  software_confirm_var0="$(translate "software_confirm_var0")"
  software_confirm_var1="$(translate "software_confirm_var1")"
  efi_var="$(translate "efi_var")"
  vfat_var="$(translate "vfat_var")"
  efi_mnt_var="$(translate "efi_mnt_var")"
  f2_err_var="$(translate "f2_err_var")"
}

load_var_msg() {
  export TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/load.var/load/var/locale
  export TEXTDOMAIN=load.var

  load_var0="$(translate "load_var0")"
  load_var1="$(translate "load_var1")"
  install_load_var="$(translate "install_load_var")"
  software_load_var="$(translate "software_load_var")"
  locale_load_var="$(translate "locale_load_var")"
  zone_load_var="$(translate "zone_load_var")"
}

de_msg() {
  export TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/de/de/locale
  export TEXTDOMAIN=de

  de0="$(translate "de0")"
  de1="$(translate "de1")"
  de2="$(translate "de2")"
  de3="$(translate "de3")"
  de4="$(translate "de4")"
  de5="$(translate "de5")"
  de6="$(translate "de6")"
  de7="$(translate "de7")"
  de8="$(translate "de8")"
  de9="$(translate "de9")"
  de10="$(translate "de10")"
  de11="$(translate "de11")"
  de12="$(translate "de1")"
  de13="$(translate "de13")"
  de14="$(translate "de14")"
  de15="$(translate "de15")"
  de16="$(translate "de16")"
  de17="$(translate "de17")"
  de18="$(translate "de18")"
  de19="$(translate "de19")"
  de20="$(translate "de2")"
  de21="$(translate "de21")"
  de22="$(translate "de22")"
  de23="$(translate "de23")"
  de24="$(translate "de24")"
  de25="$(translate "de25")"

}

dm_msg() {
  export TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/dm/dm/locale
  export TEXTDOMAIN=dm

  dm0="$(translate "dm0")"
  dm1="$(translate "dm1")"
  dm2="$(translate "dm2")"
  dm3="$(translate "dm3")"

}

soft_msg() {
  export TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/soft/soft/locale
  export TEXTDOMAIN=soft

  # Audio
  audio0="$(translate "audio0")"
  audio1="$(translate "audio1")"
  audio2="$(translate "audio2")"
  audio3="$(translate "audio3")"
  audio4="$(translate "audio4")"
  audio5="$(translate "audio5")"
  audio6="$(translate "audio6")"
  audio7="$(translate "audio7")"
  audio8="$(translate "audio8")"
  audio9="$(translate "audio9")"
  audio10="$(translate "audio10")"
  audio11="$(translate "audio11")"
  audio13="$(translate "audio13")"
  audio14="$(translate "audio14")"

  # Database
  db0="$(translate "db0")"
  db1="$(translate "db1")"
  db2="$(translate "db2")"
  db3="$(translate "db3")"
  db4="$(translate "db4")"
  db5="$(translate "db5")"
  db6="$(translate "db6")"
  sys30="$(translate "sys30")"
  sys31="$(translate "sys31")"
  sys32="$(translate "sys32")"

  # Internet
  net0="$(translate "net0")"
  net1="$(translate "net1")"
  net2="$(translate "net2")"
  net3="$(translate "net3")"
  net4="$(translate "net4")"
  net5="$(translate "net5")"
  net6="$(translate "net6")"
  net7="$(translate "net7")"
  net8="$(translate "net8")"
  net9="$(translate "net9")"
  net10="$(translate "net10")"
  net11="$(translate "net11")"
  net12="$(translate "net12")"

  # Fonts
  font0="$(translate "font0")"
  font1="$(translate "font1")"
  font2="$(translate "font2")"
  font3="$(translate "font3")"
  font4="$(translate "font4")"
  font5="$(translate "font5")"
  font6="$(translate "font6")"

  # Games
  game0="$(translate "game0")"
  game1="$(translate "game1")"
  game2="$(translate "game2")"
  game3="$(translate "game3")"
  game4="$(translate "game4")"
  game5="$(translate "game5")"
  game6="$(translate "game6")"
  game7="$(translate "game7")"
  game8="$(translate "game8")"
  game9="$(translate "game9")"
  game10="$(translate "game10")"
  game11="$(translate "game11")"
  game12="$(translate "game12")"
  game13="$(translate "game13")"
  game14="$(translate "game14")"
  game15="$(translate "game15")"
  game16="$(translate "game16")"
  game17="$(translate "game17")"
  game18="$(translate "game18")"
  game19="$(translate "game19")"
  game20="$(translate "game20")"
  game21="$(translate "game21")"
  game22="$(translate "game22")"
  game23="$(translate "game23")"
  game24="$(translate "game24")"
  game25="$(translate "game25")"
  game26="$(translate "game26")"

  # Graphic
  graphic0="$(translate "graphic0")"
  graphic1="$(translate "graphic1")"
  graphic2="$(translate "graphic2")"
  graphic3="$(translate "graphic3")"
  graphic4="$(translate "graphic4")"
  graphic5="$(translate "graphic5")"
  graphic6="$(translate "graphic6")"
  graphic7="$(translate "graphic7")"
  graphic8="$(translate "graphic8")"
  graphic9="$(translate "graphic9")"
  graphic10="$(translate "graphic10")"
  graphic11="$(translate "graphic11")"

  # Multimedia
  media0="$(translate "media0")"
  media1="$(translate "media1")"
  media2="$(translate "media2")"
  media3="$(translate "media3")"
  media4="$(translate "media4")"
  media5="$(translate "media5")"
  media6="$(translate "media6")"
  media7="$(translate "media7")"
  media8="$(translate "media8")"
  media9="$(translate "media9")"
  media10="$(translate "media10")"
  media11="$(translate "media11")"
  media12="$(translate "media12")"
  media13="$(translate "media13")"

  # Office
  office0="$(translate "office0")"
  office1="$(translate "office1")"
  office2="$(translate "office2")"
  office3="$(translate "office3")"
  office4="$(translate "office4")"
  office5="$(translate "office5")"
  office6="$(translate "office6")"
  office7="$(translate "office7")"
  office8="$(translate "office8")"
  office9="$(translate "office9")"
  office10="$(translate "office10")"
  office11="$(translate "office11")"

  # Programming
  prg0="$(translate "prg0")"
  prg1="$(translate "prg1")"
  prg2="$(translate "prg2")"
  prg3="$(translate "prg3")"
  prg4="$(translate "prg4")"
  prg5="$(translate "prg5")"
  prg7="$(translate "prg7")"
  prg8="$(translate "prg8")"
  prg9="$(translate "prg9")"
  prg10="$(translate "prg10")"
  prg11="$(translate "prg11")"
  prg12="$(translate "prg12")"
  prg13="$(translate "prg13")"
  prg14="$(translate "prg14")"
  prg15="$(translate "prg15")"
  prg16="$(translate "prg16")"

  # Terminal
  term0="$(translate "term0")"
  term1="$(translate "term1")"
  term2="$(translate "term2")"
  term3="$(translate "term3")"
  term4="$(translate "term4")"
  term5="$(translate "term5")"
  term6="$(translate "term6")"
  term7="$(translate "term7")"
  term8="$(translate "term8")"
  term9="$(translate "term9")"
  term10="$(translate "term10")"
  term11="$(translate "term11")"
  term12="$(translate "term12")"
  term13="$(translate "term13")"

  # Text editor
  edit0="$(translate "edit0")"
  edit1="$(translate "edit1")"
  edit2="$(translate "edit2")"
  edit3="$(translate "edit3")"
  edit4="$(translate "edit4")"
  edit5="$(translate "edit5")"
  edit6="$(translate "edit6")"
  edit7="$(translate "edit7")"
  edit8="$(translate "edit8")"

  # Shell
  shell0="$(translate "shell0")"
  shell1="$(translate "shell1")"
  shell2="$(translate "shell2")"
  shell3="$(translate "shell3")"
  shell4="$(translate "shell4")"
  shell5="$(translate "shell5")"

  # Server
  srv1="$(translate "srv1")"
  srv2="$(translate "srv2")"
  srv3="$(translate "srv3")"
  srv4="$(translate "srv4")"
  srv5="$(translate "srv5")"
  srv6="$(translate "srv6")"
  srv7="$(translate "srv7")"
  srv8="$(translate "srv8")"
  srv9="$(translate "srv9")"
  srv10="$(translate "srv10")"
  srv11="$(translate "srv11")"
  srv12="$(translate "srv11")"
  sys1="$(translate "sys1")"
  sys10="$(translate "sys10")"

  # System
  sys2="$(translate "sys2")"
  sys3="$(translate "sys3")"
  sys4="$(translate "sys4")"
  sys5="$(translate "sys5")"
  sys6="$(translate "sys6")"
  sys7="$(translate "sys7")"
  sys8="$(translate "sys8")"
  sys9="$(translate "sys9")"
  sys11="$(translate "sys11")"
  sys12="$(translate "sys12")"
  sys13="$(translate "sys13")"
  sys14="$(translate "sys14")"
  sys15="$(translate "sys15")"
  sys16="$(translate "sys16")"
  sys17="$(translate "sys17")"
  sys18="$(translate "sys18")"
  sys19="$(translate "sys19")"
  sys20="$(translate "sys20")"
  sys21="$(translate "sys21")"
  sys22="$(translate "sys22")"
  sys23="$(translate "sys23")"
  sys24="$(translate "sys24")"
  sys25="$(translate "sys25")"
  sys26="$(translate "sys26")"
  sys27="$(translate "sys27")"
  sys28="$(translate "sys28")"
  sys34="$(translate "sys34")"
}

export a="\Z2*\Zn"
export h="\Z2<\Z1#\Z2>\Zn"

if "${reload}"; then
  var_msg
  load_var_msg
  translate_this_var
else
  dialog_msg
  main_msg
  load_msg
  part_msg
  fs_msg
  graphics_msg
  de_msg
  dm_msg
  menu_msg
  soft_msg
  op_msg
  translate_this
fi
