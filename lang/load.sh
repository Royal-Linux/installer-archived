# Important:
# * Make sure you are using the UTF-8 encoding
# * Don't change the variable names (e.g. intro_msg=)
# * Don't remove any occurrence of (e.g. \n or \n\n - new lines)
# * Don't remove any special characters (e.g. $a, or quotes)
# * Don't edit variables within the text (e.g. /dev/${DRIVE} or ${user})

translate_this() {
    clear
}

translate_this_var() {
    clear
}

### -------------------------------------------------------------------------------------------------

dialog_msg() {
    TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/dialog/dialog/locale
    TEXTDOMAIN=dialog

    title=$(gettext -s "title")
    backtitle=$(gettext -s "backtitle")
}

main_msg() {
    TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/main/main/locale
    TEXTDOMAIN=main

    error=$(gettext -s "error")
    yes=$(gettext -s "yes")
    no=$(gettext -s "no")
    ok=$(gettext -s "ok")
    cancel=$(gettext -s "cancel")
    other=$(gettext -s "other")
    default=$(gettext -s "default")
    edit=$(gettext -s "edit")
    back=$(gettext -s "back")
    done_msg=$(gettext -s "done_msg")
    partition=$(gettext -s "partition")
    size=$(gettext -s "size")
    add=$(gettext -s "add")
    new_user=$(gettext -s "new_user")
    change_pass=$(gettext -s "change_pass")
    change_fn=$(gettext -s "change_fn")
    change_sh=$(gettext -s "change_sh")
    change_su=$(gettext -s "change_su")
    del_user=$(gettext -s "del_user")
    install=$(gettext -s "install")
    mountpoint=$(gettext -s "mountpoint")
    custom=$(gettext -s "custom")
    write=$(gettext -s "write")
    none=$(gettext -s "none")
    select=$(gettext -s "select")
    drivers=$(gettext -s "drivers")
    os=$(gettext -s "os")
    custom_msg=$(gettext -s "custom_msg")
    custom_err_msg0=$(gettext -s "custom_err_msg0")
    custom_err_msg1=$(gettext -s "custom_err_msg1")
    write_confirm=$(gettext -s "write_confirm")
    intro_msg=$(gettext -s "intro_msg")
    wifi_msg0=$(gettext -s "wifi_msg0")
    wifi_msg1=$(gettext -s "wifi_msg1")
    connect_err0=$(gettext -s "connect_err0")
    connect_err1=$(gettext -s "connect_err1")
    locale_msg=$(gettext -s "locale_msg")
    zone_msg0=$(gettext -s "zone_msg0")
    zone_msg1=$(gettext -s "zone_msg1")
    keys_msg=$(gettext -s "keys_msg")
    drive_msg=$(gettext -s "drive_msg")
    part_msg=$(gettext -s "part_msg")
    menu_msg=$(gettext -s "menu_msg")
    fs_msg=$(gettext -s "fs_msg")
    swap_msg0=$(gettext -s "swap_msg0")
    swap_msg1=$(gettext -s "swap_msg1")
    swap_err_msg0=$(gettext -s "swap_err_msg0")
    swap_err_msg1=$(gettext -s "swap_err_msg1")
    swap_err_msg2=$(gettext -s "swap_err_msg2")
    efi_msg0=$(gettext -s "efi_msg0")
    gpt_msg=$(gettext -s "gpt_msg")
    install_type_msg=$(gettext -s "install_type_msg")
    passwd_msg0=$(gettext -s "passwd_msg0")
    passwd_msg1=$(gettext -s "passwd_msg1")
    part_err_msg=$(gettext -s "part_err_msg")
    part_err_msg1=$(gettext -s "part_err_msg1")
    part_err_msg2=$(gettext -s "part_err_msg2")
    manual_part_msg=$(gettext -s "manual_part_msg")
    root_err_msg=$(gettext -s "root_err_msg")
    root_err_msg1=$(gettext -s "root_err_msg1")
    write_confirm_msg=$(gettext -s "write_confirm_msg")
    return_msg=$(gettext -s "return_msg")
    arch_chroot_msg=$(gettext -s "arch_chroot_msg")
    mirror_msg0=$(gettext -s "mirror_msg0")
    mirror_msg1=$(gettext -s "mirror_msg1")
    mirror_editor_msg=$(gettext -s "mirror_editor_msg")
    manual_mirrors=$(gettext -s "manual_mirrors")
    update_mirrors_msg=$(gettext -s "update_mirrors_msg")
    cancel_mirrors=$(gettext -s "cancel_mirrors")
    mirror_cancel_msg=$(gettext -s "mirror_cancel_msg")
    wifi_option_msg=$(gettext -s "wifi_option_msg")
    wifi_util_msg=$(gettext -s "wifi_util_msg")
    net_util_msg0=$(gettext -s "net_util_msg0")
    net_util_msg1=$(gettext -s "net_util_msg1")
    pppoe_msg=$(gettext -s "pppoe_msg")
    base_msg0=$(gettext -s "base_msg0")
    base_msg1=$(gettext -s "base_msg1")
    hardened_msg0=$(gettext -s "hardened_msg0")
    hardened_msg1=$(gettext -s "hardened_msg1")
    LTS_msg0=$(gettext -s "LTS_msg0")
    LTS_msg1=$(gettext -s "LTS_msg1")
    zen_msg0=$(gettext -s "zen_msg0")
    zen_msg1=$(gettext -s "zen_msg1")
    os_prober_msg=$(gettext -s "os_prober_msg")
    grub_warn_msg0=$(gettext -s "grub_warn_msg0")
    grub_warn_msg1=$(gettext -s "grub_warn_msg1")
    syslinux_warn_msg=$(gettext -s "syslinux_warn_msg")
    exit_msg=$(gettext -s "exit_msg")
    install_err_msg0=$(gettext -s "install_err_msg0")
    install_err_msg1=$(gettext -s "install_err_msg1")
    multilib_msg=$(gettext -s "multilib_msg")
    dhcp_msg=$(gettext -s "dhcp_msg")
    host_msg=$(gettext -s "host_msg")
    host_err_msg=$(gettext -s "host_err_msg")
    user_exists_msg=$(gettext -s "user_exists_msg")
    user_menu_msg=$(gettext -s "user_menu_msg")
    user_msg0=$(gettext -s "user_msg0")
    user_msg1=$(gettext -s "user_msg1")
    user_msg2=$(gettext -s "user_msg2")
    user_err_msg=$(gettext -s "user_err_msg")
    user_err_msg1=$(gettext -s "user_err_msg1")
    user_err_msg2=$(gettext -s "user_err_msg2")
    fulluser_err_msg=$(gettext -s "fulluser_err_msg")
    fulluser_err_msg1=$(gettext -s "fulluser_err_msg1")
    graphics_msg=$(gettext -s "graphics_msg")
    desktop_cancel_msg=$(gettext -s "desktop_cancel_msg")
    nvidia_msg=$(gettext -s "nvidia_msg")
    touchpad_msg=$(gettext -s "touchpad_msg")
    desktop_msg=$(gettext -s "desktop_msg")
    dm_msg=$(gettext -s "dm_msg")
    dm_msg1=$(gettext -s "dm_msg1")
    environment_msg=$(gettext -s "environment_msg")
    startx_msg=$(gettext -s "startx_msg")
    extra_msg0=$(gettext -s "extra_msg0")
    extra_msg1=$(gettext -s "extra_msg1")
    extra_msg2=$(gettext -s "extra_msg2")
    extra_msg3=$(gettext -s "extra_msg3")
    extra_msg4=$(gettext -s "extra_msg4")
    extra_msg5=$(gettext -s "extra_msg5")
    extra_msg6=$(gettext -s "extra_msg6")
    extra_msg7=$(gettext -s "extra_msg7")
    extra_msg8=$(gettext -s "extra_msg8")
    software_msg0=$(gettext -s "software_msg0")
    software_msg1=$(gettext -s "software_msg1")
    software_type_msg=$(gettext -s "software_type_msg")
    software_warn_msg=$(gettext -s "software_warn_msg")
    software_noconfirm_msg=$(gettext -s "software_noconfirm_msg")
    complete_no_boot_msg=$(gettext -s "complete_no_boot_msg")
    not_complete_msg=$(gettext -s "not_complete_msg")
    complete_msg=$(gettext -s "complete_msg")
    part_frmt_msg=$(gettext -s "part_frmt_msg")
    swap_frmt_msg=$(gettext -s "swap_frmt_msg")
    vbox_msg=$(gettext -s "vbox_msg")
    vmware_msg=$(gettext -s "vmware_msg")
    hyperv_msg=$(gettext -s "hyperv_msg")
    vm_msg=$(gettext -s "vm_msg")
    bluetooth_msg=$(gettext -s "bluetooth_msg")
    blueman_msg=$(gettext -s "blueman_msg")
    btenable_msg=$(gettext -s "btenable_msg")
    nwmanager_msg0=$(gettext -s "nwmanager_msg0")
    nwmanager_msg1=$(gettext -s "nwmanager_msg1")
    vbox_enable_msg=$(gettext -s "vbox_enable_msg")
    efi_man_msg=$(gettext -s "efi_man_msg")
    efi_err_msg=$(gettext -s "efi_err_msg")
    efi_err_msg1=$(gettext -s "efi_err_msg1")
    vfat_msg=$(gettext -s "vfat_msg")
    loader_type_msg=$(gettext -s "loader_type_msg")
    loader_msg=$(gettext -s "loader_msg")
    loader_msg1=$(gettext -s "loader_msg1")
    loader_msg2=$(gettext -s "loader_msg2")
    loader_msg3=$(gettext -s "loader_msg3")
    failed_msg=$(gettext -s "failed_msg")
    shell_msg=$(gettext -s "shell_msg")
    nvidia_modeset_msg=$(gettext -s "nvidia_modeset_msg")
    nvidia_340msg=$(gettext -s "nvidia_340msg")
    nvidia_390msg=$(gettext -s "nvidia_390msg")
    nvidia_curmsg=$(gettext -s "nvidia_curmsg")
    ucode_msg=$(gettext -s "ucode_msg")
    ucode_failed_msg=$(gettext -s "ucode_failed_msg")
    shrc_msg=$(gettext -s "shrc_msg")
    shrc_msg1=$(gettext -s "shrc_msg1")
    shrc_msg2=$(gettext -s "shrc_msg2")
    shrc_msg3=$(gettext -s "shrc_msg3")
    shrc_msg4=$(gettext -s "shrc_msg4")
    nano_msg=$(gettext -s "nano_msg")
    vim_msg=$(gettext -s "vim_msg")
    ssh_msg=$(gettext -s "ssh_msg")
    ftp_msg=$(gettext -s "ftp_msg")
    apache_msg=$(gettext -s "apache_msg")
    nginx_msg=$(gettext -s "nginx_msg")
    cups_msg=$(gettext -s "cups_msg")
    part_util=$(gettext -s "part_util")
    part_util0=$(gettext -s "part_util0")
    part_util1=$(gettext -s "part_util1")
    part_util2=$(gettext -s "part_util2")
}

load_msg() {
    TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/load/load/locale
    TEXTDOMAIN=load

    wait_load=$(gettext -s "wait_load")
    connection_load=$(gettext -s "connection_load")
    boot_load=$(gettext -s "boot_load")
    swap_load=$(gettext -s "swap_load")
    frmt_load=$(gettext -s "frmt_load")
    mnt_load=$(gettext -s "mnt_load")
    pv_load=$(gettext -s "pv_load")
    lv_load=$(gettext -s "lv_load")
    encrypt_load=$(gettext -s "encrypt_load")
    mirror_load0=$(gettext -s "mirror_load0")
    mirror_load1=$(gettext -s "mirror_load1")
    efi_load1=$(gettext -s "efi_load1")
    grub_load1=$(gettext -s "grub_load1")
    grub_load2=$(gettext -s "grub_load2")
    syslinux_load=$(gettext -s "syslinux_load")
    uefi_config_load=$(gettext -s "uefi_config_load")
    f2fs_config_load=$(gettext -s "f2fs_config_load")
    kernel_config_load=$(gettext -s "kernel_config_load")
    encrypt_load1=$(gettext -s "encrypt_load1")
    dhcp_load=$(gettext -s "dhcp_load")
    ssh_load=$(gettext -s "ssh_load")
    cups_load=$(gettext -s "cups_load")
    ftp_load=$(gettext -s "ftp_load")
    http_load=$(gettext -s "http_load")
    dm_load=$(gettext -s "dm_load")
    pacman_load=$(gettext -s "pacman_load")

}

part_msg() {
    TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/part/part/locale
    TEXTDOMAIN=part

    method0=$(gettext -s "method0")
    method1=$(gettext -s "method1")
    method2=$(gettext -s "method2")
}

fs_msg() {
    TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/fs/fs/locale
    TEXTDOMAIN=fs

    fs0=$(gettext -s "fs0")
    fs1=$(gettext -s "fs1")
    fs2=$(gettext -s "fs2")
    fs3=$(gettext -s "fs3")
    fs4=$(gettext -s "fs4")
    fs5=$(gettext -s "fs5")
    fs6=$(gettext -s "fs6")
    fs7=$(gettext -s "fs7")
    fs8=$(gettext -s "fs8")
}

graphics_msg() {
    TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/graphics/graphics/locale
    TEXTDOMAIN=graphics

    gr1=$(gettext -s "gr1")
    gr2=$(gettext -s "gr2")
    gr4=$(gettext -s "gr4")
    gr5=$(gettext -s "gr5")
    gr6=$(gettext -s "gr6")
    gr7=$(gettext -s "gr7")
    gr8=$(gettext -s "gr8")
    gr9=$(gettext -s "gr9")
    gr10=$(gettext -s "gr10")

}

menu_msg() {
    TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/menu/menu/locale
    TEXTDOMAIN=menu

    menu=$(gettext -s "menu")
    menu0=$(gettext -s "menu0")
    menu1=$(gettext -s "menu1")
    menu2=$(gettext -s "menu2")
    menu3=$(gettext -s "menu3")
    menu4=$(gettext -s "menu4")
    menu5=$(gettext -s "menu5")
    menu11=$(gettext -s "menu11")
    menu12=$(gettext -s "menu12")
    menu13=$(gettext -s "menu13")
    menu_err_msg3=$(gettext -s "menu_err_msg3")
    menu_exit_msg=$(gettext -s "menu_exit_msg")
    steam_add_msg=$(gettext -s "steam_add_msg")
    audio=$(gettext -s "audio")
    audio_msg=$(gettext -s "audio_msg")
    database=$(gettext -s "database")
    database_msg=$(gettext -s "database_msg")
    graphic=$(gettext -s "graphic")
    graphic_msg=$(gettext -s "graphic_msg")
    internet=$(gettext -s "internet")
    internet_msg=$(gettext -s "internet_msg")
    multimedia=$(gettext -s "multimedia")
    multimedia_msg=$(gettext -s "multimedia_msg")
    office=$(gettext -s "office")
    office_msg=$(gettext -s "office_msg")
    programming=$(gettext -s "programming")
    program_msg=$(gettext -s "program_msg")
    terminal=$(gettext -s "terminal")
    terminal_msg=$(gettext -s "terminal_msg")
    text_editor=$(gettext -s "text_editor")
    text_editor_msg=$(gettext -s "text_editor_msg")
    util=$(gettext -s "util")
    util_msg=$(gettext -s "util_msg")
    servers=$(gettext -s "servers")
    servers_msg=$(gettext -s "servers_msg")
    fonts=$(gettext -s "fonts")
    fonts_msg=$(gettext -s "fonts_msg")
    games=$(gettext -s "games")
    games_msg=$(gettext -s "games_msg")
    extra_de=$(gettext -s "extra_de")
    extra_de_msg=$(gettext -s "extra_de_msg")
    extra_wm=$(gettext -s "extra_wm")
    extra_wm_msg=$(gettext -s "extra_wm_msg")
    reboot0=$(gettext -s "reboot0")
    reboot1=$(gettext -s "reboot1")
    reboot2=$(gettext -s "reboot2")
    reboot3=$(gettext -s "reboot3")
    reboot4=$(gettext -s "reboot4")
    reboot5=$(gettext -s "reboot5")
    reboot6=$(gettext -s "reboot6")
    customized_de=$(gettext -s "customized_de")
    customized_de_msg=$(gettext -s "customized_de_msg")
    more_de=$(gettext -s "more_de")
    more_de_msg=$(gettext -s "more_de_msg")
    more_wm=$(gettext -s "more_wm")
    more_wm_msg=$(gettext -s "more_wm_msg")
}

op_msg() {
    TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/op/op/locale
    TEXTDOMAIN=op

    welcome_op_msg=$(gettext -s "welcome_op_msg")
    connection_op_msg=$(gettext -s "connection_op_msg")
    locale_op_msg=$(gettext -s "locale_op_msg")
    zone_op_msg=$(gettext -s "zone_op_msg")
    key_op_msg=$(gettext -s "key_op_msg")
    part_op_msg=$(gettext -s "part_op_msg")
    partload_op_msg=$(gettext -s "partload_op_msg")
    manual_op_msg=$(gettext -s "manual_op_msg")
    edit_op_msg=$(gettext -s "edit_op_msg")
    mirror_op_msg=$(gettext -s "mirror_op_msg")
    install_op_msg=$(gettext -s "install_op_msg")
    config_op_msg=$(gettext -s "config_op_msg")
    host_op_msg=$(gettext -s "host_op_msg")
    passwd_op_msg=$(gettext -s "passwd_op_msg")
    user_op_msg=$(gettext -s "user_op_msg")
    user_op_msg1=$(gettext -s "user_op_msg1")
    de_op_msg=$(gettext -s "de_op_msg")
    software_op_msg=$(gettext -s "software_op_msg")
    complete_op_msg=$(gettext -s "complete_op_msg")
    menu_op_msg=$(gettext -s "menu_op_msg")
    install_opt_msg=$(gettext -s "install_opt_msg")
    install_opt0=$(gettext -s "install_opt0")
    install_opt1=$(gettext -s "install_opt1")
    install_opt2=$(gettext -s "install_opt2")
    install_opt3=$(gettext -s "install_opt3")
    install_opt4=$(gettext -s "install_opt4")
}

var_msg() {
    TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/var/var/locale
    TEXTDOMAIN=var

    gtk3_var=$(gettext -s "gtk3_var")
    drive_var=$(gettext -s "drive_var")
    drive_var1=$(gettext -s "drive_var1")
    drive_var2=$(gettext -s "drive_var2")
    drive_var3=$(gettext -s "drive_var3")
    encrypt_var0=$(gettext -s "encrypt_var0")
    encrypt_var1=$(gettext -s "encrypt_var1")
    encrypt_var2=$(gettext -s "encrypt_var2")
    root_var=$(gettext -s "root_var")
    manual_part_var0=$(gettext -s "manual_part_var0")
    manual_part_var1=$(gettext -s "manual_part_var1")
    manual_part_var2=$(gettext -s "manual_part_var2")
    manual_part_var3=$(gettext -s "manual_part_var3")
    manual_new_part_var=$(gettext -s "manual_new_part_var")
    manual_swap_var=$(gettext -s "manual_swap_var")
    mount_warn_var=$(gettext -s "mount_warn_var")
    mnt_var0=$(gettext -s "mnt_var0")
    fs_err_var=$(gettext -s "fs_err_var")
    install_var=$(gettext -s "install_var")
    user_edit_var=$(gettext -s "user_edit_var")
    user_shell_var=$(gettext -s "user_shell_var")
    user_var0=$(gettext -s "user_var0")
    user_var1=$(gettext -s "user_var1")
    sudo_var=$(gettext -s "sudo_var")
    sudo_var1=$(gettext -s "sudo_var1")
    deluser_var=$(gettext -s "deluser_var")
    root_confirm_var=$(gettext -s "root_confirm_var")
    part_confirm_var=$(gettext -s "part_confirm_var")
    software_confirm_var0=$(gettext -s "software_confirm_var0")
    software_confirm_var1=$(gettext -s "software_confirm_var1")
    efi_var=$(gettext -s "efi_var")
    vfat_var=$(gettext -s "vfat_var")
    efi_mnt_var=$(gettext -s "efi_mnt_var")
    f2_err_var=$(gettext -s "f2_err_var")
}

load_var_msg() {
    TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/load.var/load/var/locale
    TEXTDOMAIN=load.var

    load_var0=$(gettext -s "load_var0")
    load_var1=$(gettext -s "load_var1")
    install_load_var=$(gettext -s "install_load_var")
    software_load_var=$(gettext -s "software_load_var")
    locale_load_var=$(gettext -s "locale_load_var")
    zone_load_var=$(gettext -s "zone_load_var")
}

de_msg() {
    TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/de/de/locale
    TEXTDOMAIN=de

    de0=$(gettext -s "de0")
    de1=$(gettext -s "de1")
    de2=$(gettext -s "de2")
    de3=$(gettext -s "de3")
    de4=$(gettext -s "de4")
    de5=$(gettext -s "de5")
    de6=$(gettext -s "de6")
    de7=$(gettext -s "de7")
    de8=$(gettext -s "de8")
    de9=$(gettext -s "de9")
    de10=$(gettext -s "de10")
    de11=$(gettext -s "de11")
    de12=$(gettext -s "#de1")
    de13=$(gettext -s "de13")
    de14=$(gettext -s "de14")
    de15=$(gettext -s "de15")
    de16=$(gettext -s "de16")
    de17=$(gettext -s "de17")
    de18=$(gettext -s "de18")
    de19=$(gettext -s "de19")
    de20=$(gettext -s "#de2")
    de21=$(gettext -s "de21")
    de22=$(gettext -s "de22")
    de23=$(gettext -s "de23")
    de24=$(gettext -s "de24")
    de25=$(gettext -s "de25")

}

dm_msg() {
    TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/dm/dm/locale
    TEXTDOMAIN=dm

    dm0=$(gettext -s "dm0")
    dm1=$(gettext -s "dm1")
    dm2=$(gettext -s "dm2")
    dm3=$(gettext -s "dm3")

}

soft_msg() {
    TEXTDOMAINDIR="${archroyal_directory}"/lang/locale/soft/soft/locale
    TEXTDOMAIN=soft

    # Audio
    audio0=$(gettext -s "audio0")
    audio1=$(gettext -s "audio1")
    audio2=$(gettext -s "audio2")
    audio3=$(gettext -s "audio3")
    audio4=$(gettext -s "audio4")
    audio5=$(gettext -s "audio5")
    audio6=$(gettext -s "audio6")
    audio7=$(gettext -s "audio7")
    audio8=$(gettext -s "audio8")
    audio9=$(gettext -s "audio9")
    audio10=$(gettext -s "audio10")
    audio11=$(gettext -s "audio11")
    audio13=$(gettext -s "audio13")
    audio14=$(gettext -s "audio14")

    # Database
    db0=$(gettext -s "db0")
    db1=$(gettext -s "db1")
    db2=$(gettext -s "db2")
    db3=$(gettext -s "db3")
    db4=$(gettext -s "db4")
    db5=$(gettext -s "db5")
    db6=$(gettext -s "db6")
    sys30=$(gettext -s "sys30")
    sys31=$(gettext -s "sys31")
    sys32=$(gettext -s "sys32")

    # Internet
    net0=$(gettext -s "net0")
    net1=$(gettext -s "net1")
    net2=$(gettext -s "net2")
    net3=$(gettext -s "net3")
    net4=$(gettext -s "net4")
    net5=$(gettext -s "net5")
    net6=$(gettext -s "net6")
    net7=$(gettext -s "net7")
    net8=$(gettext -s "net8")
    net9=$(gettext -s "net9")
    net10=$(gettext -s "net10")
    net11=$(gettext -s "net11")
    net12=$(gettext -s "net12")

    # Fonts
    font0=$(gettext -s "font0")
    font1=$(gettext -s "font1")

    # Games
    game0=$(gettext -s "game0")
    game1=$(gettext -s "game1")
    game2=$(gettext -s "game2")
    game3=$(gettext -s "game3")
    game4=$(gettext -s "game4")
    game5=$(gettext -s "game5")
    game6=$(gettext -s "game6")
    game7=$(gettext -s "game7")
    game8=$(gettext -s "game8")
    game9=$(gettext -s "game9")
    game10=$(gettext -s "game10")
    game11=$(gettext -s "game11")

    # Graphic
    graphic0=$(gettext -s "graphic0")
    graphic1=$(gettext -s "graphic1")
    graphic2=$(gettext -s "graphic2")
    graphic3=$(gettext -s "graphic3")
    graphic4=$(gettext -s "graphic4")
    graphic5=$(gettext -s "graphic5")
    graphic6=$(gettext -s "graphic6")
    graphic7=$(gettext -s "graphic7")
    graphic8=$(gettext -s "graphic8")
    graphic9=$(gettext -s "graphic9")
    graphic10=$(gettext -s "graphic10")
    graphic11=$(gettext -s "graphic11")

    # Multimedia
    media0=$(gettext -s "media0")
    media1=$(gettext -s "media1")
    media2=$(gettext -s "media2")
    media3=$(gettext -s "media3")
    media4=$(gettext -s "media4")
    media5=$(gettext -s "media5")
    media6=$(gettext -s "media6")
    media7=$(gettext -s "media7")
    media8=$(gettext -s "media8")
    media9=$(gettext -s "media9")
    media10=$(gettext -s "media10")
    media11=$(gettext -s "media11")
    media12=$(gettext -s "media12")

    # Office
    office0=$(gettext -s "office0")
    office1=$(gettext -s "office1")
    office2=$(gettext -s "office2")
    office3=$(gettext -s "office3")
    office4=$(gettext -s "office4")
    office5=$(gettext -s "office5")
    office6=$(gettext -s "office6")
    office7=$(gettext -s "office7")
    office8=$(gettext -s "office8")
    office9=$(gettext -s "office9")
    office10=$(gettext -s "office10")
    office11=$(gettext -s "office11")

    # Programming
    prg0=$(gettext -s "prg0")
    prg1=$(gettext -s "prg1")
    prg2=$(gettext -s "prg2")
    prg3=$(gettext -s "prg3")
    prg4=$(gettext -s "prg4")
    prg5=$(gettext -s "prg5")
    prg7=$(gettext -s "prg7")
    prg8=$(gettext -s "prg8")
    prg9=$(gettext -s "prg9")
    prg10=$(gettext -s "prg10")
    prg11=$(gettext -s "prg11")
    prg12=$(gettext -s "prg12")
    prg13=$(gettext -s "prg13")
    prg14=$(gettext -s "prg14")
    prg15=$(gettext -s "prg15")

    # Terminal
    term0=$(gettext -s "term0")
    term1=$(gettext -s "term1")
    term2=$(gettext -s "term2")
    term3=$(gettext -s "term3")
    term4=$(gettext -s "term4")
    term5=$(gettext -s "term5")
    term6=$(gettext -s "term6")
    term7=$(gettext -s "term7")
    term8=$(gettext -s "term8")
    term9=$(gettext -s "term9")
    term10=$(gettext -s "term10")
    term11=$(gettext -s "term11")
    term12=$(gettext -s "term12")
    term13=$(gettext -s "term13")

    # Text editor
    edit0=$(gettext -s "edit0")
    edit1=$(gettext -s "edit1")
    edit2=$(gettext -s "edit2")
    edit3=$(gettext -s "edit3")
    edit4=$(gettext -s "edit4")
    edit5=$(gettext -s "edit5")
    edit6=$(gettext -s "edit6")
    edit7=$(gettext -s "edit7")
    edit8=$(gettext -s "edit8")

    # Shell
    shell0=$(gettext -s "shell0")
    shell1=$(gettext -s "shell1")
    shell2=$(gettext -s "shell2")
    shell3=$(gettext -s "shell3")
    shell4=$(gettext -s "shell4")
    shell5=$(gettext -s "shell5")

    # Server
    srv1=$(gettext -s "srv1")
    srv2=$(gettext -s "srv2")
    srv3=$(gettext -s "srv3")
    srv4=$(gettext -s "srv4")
    srv5=$(gettext -s "srv5")
    srv6=$(gettext -s "srv6")
    srv7=$(gettext -s "srv7")
    srv8=$(gettext -s "srv8")
    srv9=$(gettext -s "srv9")
    srv10=$(gettext -s "srv10")
    srv11=$(gettext -s "srv11")
    sys1=$(gettext -s "sys1")
    sys10=$(gettext -s "sys10")

    # System
    sys2=$(gettext -s "sys2")
    sys3=$(gettext -s "sys3")
    sys4=$(gettext -s "sys4")
    sys5=$(gettext -s "sys5")
    sys6=$(gettext -s "sys6")
    sys7=$(gettext -s "sys7")
    sys8=$(gettext -s "sys8")
    sys9=$(gettext -s "sys9")
    sys11=$(gettext -s "sys11")
    sys12=$(gettext -s "sys12")
    sys13=$(gettext -s "sys13")
    sys14=$(gettext -s "sys14")
    sys15=$(gettext -s "sys15")
    sys16=$(gettext -s "sys16")
    sys17=$(gettext -s "sys17")
    sys18=$(gettext -s "sys18")
    sys19=$(gettext -s "sys19")
    sys20=$(gettext -s "sys20")
    sys21=$(gettext -s "sys21")
    sys22=$(gettext -s "sys22")
    sys23=$(gettext -s "sys23")
    sys24=$(gettext -s "sys24")
    sys25=$(gettext -s "sys25")
    sys26=$(gettext -s "sys26")
    sys27=$(gettext -s "sys27")
    sys28=$(gettext -s "sys28")
    sys34=$(gettext -s "sys34")
}

a="\Z2*\Zn"
h="\Z2<\Z1#\Z2>\Zn"

if "$reload" ; then
	var_msg
	load_var_msg
	translate_this_var
else
    # load all messages

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
