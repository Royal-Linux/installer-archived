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
    TEXTDOMAINDIR=./locale/dialog/dialog/locale
    TEXTDOMAIN=dialog

    title=$(gettext -s "title")
    backtitle=$(gettext -s "backtitle")
}

main_msg() {
    TEXTDOMAINDIR=./locale/main/main/locale
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

    wait_load="\n Please wait..."

    connection_load="Please wait while we test your connection..."

    boot_load="Creating boot partition..."

    swap_load="Creating swap space..."

    frmt_load="Formatting..."

    mnt_load="Mounting..."

    pv_load="Creating physical volumes"

    lv_load="Creating logical volumes"

    encrypt_load="Encrypting drive..."

    mirror_load0="Retrieving new mirror list..."

    mirror_load1="Please wait while ranking mirrors..."

    efi_load1="Configuring efi boot..."

    grub_load1="Installing grub to drive..."

    grub_load2="Configuring grub..."

    syslinux_load="Installing syslinux to drive..."

    uefi_config_load="Please wait while configuring kernel for uEFI..."

    f2fs_config_load="Please wait while configuring kernel for F2FS..."

    kernel_config_load="Please wait while configuring kernel..."

    encrypt_load1="Please wait while configuring kernel for encryption..."

    dhcp_load="Enabling DHCP..."

    ssh_load="Enabling SSH..."

    cups_load="Enabling print system..."

    ftp_load="Enabling FTP..."

    http_load="Enabling HTTP..."

    dm_load="Enabling lightdm..."

    pacman_load="Please wait while we update your pacman databases..."

}

part_msg() {

    method0="Auto Partition Drive"

    method1="Auto partition encrypted LVM"

    method2="Manual Partition Drive"

}

fs_msg() {

    fs0="4th extended file system"

    fs1="3rd extended file system"

    fs2="2nd extended file system"

    fs3="B-Tree File System"

    fs4="Journaled File System"

    fs5="Reiser File System"

    fs6="F2FS File System"

    fs7="VFAT/FAT32 File System"

    fs8="XFS"

}

graphics_msg() {

    gr1="Vesa ${os} $drivers"
    gr2="NVIDIA $drivers"
    gr4="AMD/ATI ${os} $drivers"
    gr5="Intel ${os} $drivers"
    gr6="NVIDIA $drivers"
    gr7="NVIDIA 340xx $drivers"
    gr8="NVIDIA ${os} $drivers"
    gr9="NVIDIA 390xx $drivers"
    gr10="AMDGPU Video ${drivers}"

}

menu_msg() {

    menu="Menu Items: \n\n $a Start a 'Command Line Session' to run custom commands\n $a Return to installer with 'arch-royal'"

    menu0="Re-Set Locale"

    menu1="Re-Set Timezone"

    menu2="Re-Set Keymap"

    menu3="Partition Drive"

    menu4="Update Mirror list"

    menu5="Install Base System"

    menu11="Reboot System"

    menu12="Exit Installer"

    menu13="Command Line Session"

    menu_err_msg3="Drive already mounted, ready to install system. \n\n $a Are you sure you want to return to partition menu?"

    menu_exit_msg="System not installed yet... \n\n $a Are you sure you want to exit?"

    steam_add_msg="Installing Steam requires multilib to be enabled. \n\n $a Enable multilib repos now?"

    audio="Audio"

    audio_msg="Audio Software =>"

    database="Database"

    database_msg="Database Software =>"

    graphic="Graphics"

    graphic_msg="Graphics Software =>"

    internet="Internet"

    internet_msg="Internet Software =>"

    multimedia="Multimedia"

    multimedia_msg="Multimedia Software =>"

    office="Office"

    office_msg="Office Software =>"

    programming="Programming"

    program_msg="Programming Software =>"

    terminal="Terminal"

    terminal_msg="Terminal Emulators =>"

    text_editor="Text Editors"

    text_editor_msg="Text Editing Software =>"

    util="Utilities"

    util_msg="Utilities Software =>"

    servers="Server"

    servers_msg="Server software =>"

    fonts="Fonts"

    fonts_msg="Linux Fonts =>"

    games="Games"

    games_msg="Linux Games =>"

    extra_de="Extra Desktop"

    extra_de_msg="Extra Desktop Environment =>"

    extra_wm="Extra WM"

    extra_wm_msg="Extra Windows Managers =>"

    reboot0="Reboot System"

    reboot1="Return To Command Prompt"

    reboot2="Arch-royal-Chroot Into Installed System"

    reboot3="Add New User Account"

    reboot4="View Install Log"

    reboot5="Install Additional Software"

    reboot6="Power Off System"

    customized_de="Customized Desktop"

    customized_de_msg="Customized Desktop Environments =>"

    more_de="Clean Desktop Environments"

    more_de_msg="Default Desktop Environments =>"

    more_wm="More Window Managers"

    more_wm_msg="Default Window Managers =>"

}

op_msg() {

    welcome_op_msg=" -| Arch-royal Linux |- "

    connection_op_msg=" -| Check Connection |- "

    locale_op_msg=" -| Set Locale |- "

    zone_op_msg=" -| Set Timezone |- "

    key_op_msg=" -| Set Keymap |- "

    part_op_msg=" -| Partition Drive |- "

    partload_op_msg=" -| Partitioning Drive |- "

    manual_op_msg=" -| Partition Menu |- "

    edit_op_msg=" -| Edit Partition |- "

    mirror_op_msg=" -| Update Mirrorlist |- "

    install_op_msg=" -| Install System |- "

    config_op_msg=" -| Configure System |- "

    host_op_msg=" -| Set Hostname |- "

    passwd_op_msg=" -| Set Password |- "

    user_op_msg=" -| Add User |- "

    user_op_msg1=" -| Edit User |- "

    de_op_msg=" -| Install Desktop |- "

    software_op_msg=" -| Install Software |- "

    complete_op_msg=" -| Install Complete |- "

    menu_op_msg=" -| Main Menu |- "

    install_opt_msg="Select your desired install option: \n\n $a Quick install select 'Arch-royal-Desktop' or 'Arch-royal-Server' \n $a Advanced install options select 'Arch-royal-Advanced'"

    install_opt0="Manually selection install options"

    install_opt1="Quick desktop install"

    install_opt2="Quick LTS desktop install"

    install_opt3="Quick server install"

    install_opt4="Quick LTS server install"

}

var_msg() {

    gtk3_var="Install $DE gtk3? \n\n $a (experimental version)"

    drive_var="WARNING! Will erase all data on drive! \n\n $a Location: /dev/$DRIVE \n $a Size: $drive_gigs GiB \n $a Filesystem: $FS \n $a Would you like to continue?"

    drive_var1="WARNING! Will erase all data on drive! \n\n $a Location: /dev/$DRIVE \n $a Size: $drive_gigs GiB \n $a Filesystem: $FS \n $a Swap space: $SWAPSPACE MiB \n $a Would you like to continue?"

    drive_var2="WARNING! Will erase all data on drive! \n\n $a Location: /dev/$DRIVE \n $a Size: $drive_gigs GiB \n $a Filesystem: $FS \n $a Swap space $SWAPSPACE MiB \n $a Boot: UEFI \n $a Would you like to continue?"

    drive_var3="WARNING! Will erase all data on drive! \n\n $a Location: /dev/$DRIVE \n $a Size: $drive_gigs GiB \n $a Filesystem: $FS \n $a Boot: UEFI \n $a Would you like to continue?"

    encrypt_var0="Warning this will encrypt /dev/$DRIVE! \n\n $a Continue?"

    encrypt_var1="\nPlease enter a new password for /dev/$DRIVE \n\n $a Note this password is used to unencrypt your drive at boot"

    encrypt_var2="\nNew /dev/$DRIVE password again. \n\n $a Encryption password again:"

    root_var="Create a new root mount point: \n $a Note: Root mount point must be created first. \n\n $a Partition: /dev/$part \n $a Size: $part_size \n\n Create new root mount point?"

    manual_part_var0="Partition already mounted. \n\n $a Mount point: $part_mount \n $a Partition: /dev/$part \n $a Size: $part_size\n\n Edit to create new mount point"

    manual_part_var1="Would you like to unmount partition: /dev/$part and remove $part_mount mount point? \n\n $a Note will unmount all partitions mounted under"

    manual_part_var2="Warning: partition: /dev/$part is set as your root filesystem, this will erase all mount point under it. \n\n $a Are you sure you want to continue?"

    manual_part_var3="Would you like to edit the partition scheme now? \n\n $a Drive: /dev/$part \n $a Size: $part_size \n\n Edit partition scheme? -Don't forget to 'write' changes"

    manual_new_part_var="Would you like to create a new mount point? \n\n $a Partition: /dev/$part \n $a Size: $part_size \n\n Edit to create new mount point"

    manual_swap_var="Would you like to remove SWAP filesystem from /dev/$part? \n\n $a Select 'yes' to remove SWAP filesystem."

    mount_warn_var="Warning: disk /dev/$part contains mounted partitions. \n\n $a Would you like to unmount and edit partition scheme?"

    mnt_var0="Select a new mount point for /dev/$part: \n\n $a Select 'custom' to create new mount point"

    fs_err_var="$error A separate '/boot' partition must be setup when using an $FS filesystem. \n\n $a Returning to partition menu..."

    install_var="Begin installing Arch-royal Linux base system onto /dev/$DRIVE?\n\n $a Download size: $software_size \n $a Estimated install time: $down_min minutes.\n $a Estimated speed: $connection_speed $connection_rate \n $a Packages to add: \n\nbase${base_install}"

    user_edit_var="Edit user:\n $a Username: $user\n $a Login Shell: $user_sh\n $a Full Username : $full_user\n $a Sudo User: $sudo"

    user_shell_var="Select a new shell for $user:\n $a Set user login shell"

    user_var0="\nPlease enter a new login password for: $user \n\n $a Set $user password"

    user_var1="\nRe-enter login password for: $user \n\n $a $user password again"

    sudo_var="Enable sudo privilege for $user? \n\n $a Enables administrative privilege for $user."

    sudo_var1="Disable sudo privilege for $user? \n\n $a Disables administrative privilege for $user."

    deluser_var="Delete user: $user? \n\n $a Removes user account from system"

    root_confirm_var="Confirm creating mount point? \n\n $a Mount point: '/' Root File System \n $a Partition: /dev/$part \n $a Size: $part_size \n $a Filesystem: $FS \n\n Write changes to disk?"

    part_confirm_var="Confirm creating mount point? \n\n $a Mount point: $mnt \n $a Partition: /dev/$part \n $a Size: $part_size \n $a Filesystem: $FS \n\n Write changes to disk?"

    software_confirm_var0="Add the following packages to install list? \n\n $a Number of packages: $software_int \n $a Download size: $software_size \n $a Packages to add: \n\n$software_list"

    software_confirm_var1="Proceed with installing software? \n\n $a Number of packages: $software_int \n $a Total download size: $software_size \n $a Estimated install time: $down_min minutes \n $a Estimated speed: $connection_speed $connection_rate \n $a Packages to install: \n\n$download_list"

    efi_var="A mounted EFI system has been detected at $esp_part \n\n $a Would you like to enable EFI boot?"

    vfat_var="The EFI system mounted at $esp_part does not contain a valid vfat filesystem. \n\n $a Would you like to format and create new vfat system?"

    efi_mnt_var="The EFI partition detected at $esp_part has not been mounted. \n\n Mount EFI boot partition now?"

    f2_err_var="$error You must create a separate boot partition in order to use an $FS filesystem. \n\n $a Returning to partition menu..."

}

load_var_msg() {

    load_var0="Partitioning /dev/$DRIVE..."

    load_var1="Please wait while creating $FS filesystem..."

    install_load_var="$h\nInstalling Arch-royal Linux to: /dev/$DRIVE \n\n $a Download size: $software_size"

    software_load_var="$h\nInstalling additional software \n\n $a Download size: $software_size"

    locale_load_var="Generating $LOCALE locale..."

    zone_load_var="Setting timezone $ZONE..."

}

de_msg() {

    de0="Xfce4 Light Desktop"
    de1="Mate Light Desktop"
    de2="LXDE Light Desktop"
    de3="LXQT Light Desktop"
    de4="Gnome Modern Desktop"
    de5="Cinnamon Desktop"
    de6="Kde Plasma Desktop"
    de7="Enlightenment Desktop"
    de8="Openbox Window Manager"
    de9="Awesome Window Manager"
    de10="i3 Tiling Window Manager"
    de11="Fluxbox Window Manager"
    #de12="Dynamic Window Manager"
    de13="bspwm Window Manager"
    de14="Deepin Desktop"
    de15="Arch-royal XFCE4 Edition"
    de16="xmonad Window Manager"
    de17="Budgie Light Desktop"
    de18="Arch-royal OpenBox Edition"
    de19="Gnome Classic Desktop"
    #de20="WindowMaker Window Manager"
    de21="Sway Window Manager"
    de22="Arch-royal Gnome Edition"
    de23="Arch-royal Cinnamon Edition"
    de24="Arch-royal Budgie Edition"
    de25="Qtile Window Manager"

}

dm_msg() {

    dm0="GNOME Desktop Display Manager"
    dm1="Multi Desktop Display Manager"
    dm2="Lxdm Desktop Display Manager"
    dm3="Simple Desktop Display Manager"

}

soft_msg() {

    # Audio
    audio0="Audio editing program"
    audio1="Advanced audio player"
    audio2="CLI music player"
    audio3="JACK Audio Connection Kit"
    audio4="Music visualizer program"
    audio5="Linux MultiMedia Studio"
    audio6="Music Player Daemon"
    audio7="GUI client for MPD"
    audio8="PulseAudio Volume Control"
    audio9="Console frontend for Pandora"
    audio10="Music player and library organizer"
    audio11="Equalizer for pulseaudio"
    audio13="Qt5 based audio-player"
    audio14="Music playback application"

    # Database
    db0="A document-oriented database"
    #db1="High-performance, open source database"
    db2="SQL server implimentation"
    db3="Sqlite module for PHP"
    db4="Advanced key-value store"
    db5="Powerful and scalable NoSQL database"
    db6="SQL database engine written in C"
    sys30="Fast SQL database server"
    sys31="Sophisticated object-relational DBMS"
    sys32="Web-based tool to administrate MySQL"

    # Internet
    net0="Chromium Web Browser"
    net1="FTP, FTPS and SFTP client"
    net2="Firefox Web Browser"
    net3="Console Web Browser"
    net4="Watch YouTube videos"
    net5="A fast and secure web browser"
    net6="Email and news client"
    net7="Console torrent client"
    net8="Graphical torrent client"
    net9="Highly-configurable IRC client"
    net10="GTK-based IRC client"
    net11="GTK-based IRC client"
    net12="Lightweight web browser"

    # Fonts
    # font0="Unicode fonts"
    font1="Fonts which support CN, JP, KR"

    # Games
    game0="Free FPS focused mainly on online multiplayer"
    game1="Port of classic BSD command line games"
    game2="Multiperson, first-person tank shooter"
    game3="Open-source flight simulator"
    game4="Classic UNIX-based chess game"
    game5="Similar to  SuperMario games"
    game6="Kart racing game featuring Tux"
    game7="Modern multiplayer FPS"
    game8="Fast paced multiplayer FPS"
    game9="Free, open-source first person shooter"
    game10="Valve's digital software delivery system"
    game11="AisleRiot Solitaire collection"

    # Graphic
    graphic0="3D graphics creation suite"
    graphic1="Photography development application"
    graphic2="GNU Image Manipulation"
    graphic3="Set of tools for drawing graphs"
    graphic4="Command-line image manipulation program"
    graphic5="Drawing and editing program"
    graphic6="Lightweight image viewer"
    graphic7="A powerful raw image processing program"
    graphic8="Image processing system"
    graphic9="Professional vector graphics editor"
    graphic10="Paint icons and pixel based artwork"
    graphic11="Painting application for digital painters"

    # Multimedia
    media0="Multithreaded video transcoder"
    media1="Media Player"
    media2="Video editing software"
    media3="Screen capture software"
    media4="A free front-end for MPlayer"
    media5="GNOME media player"
    media6="VLC graphical media player"
    media7="Media player-MPlayer based"
    media8="Multimedia codecs"
    media9="Full featured video editor for Linux"
    media10="Screencast GIF tool"
    media11="Powerful and simple media player"
    media12="Download videos and audio from YouTube"

    # Office
    office0="Free word processing"
    office1="Graphic Art And Office Suite"
    office2="Powerful spreadsheet application"
    office3="Powerful spreadsheet application"
    office4="Office word processor latest"
    office5="Office word processor maintenance"
    office6="Lightweight PDF and XPS viewer"
    office7="Minimalistic document viewer"
    office8="A collaborative office text editor"
    office9="Office document viewer for GNOME"
    office10="Create labels and business cards"
    office11="Desktop publishing software"

    # Programming
    prg0="Common Lisp interpreter, compiler and debugger"
    prg1="The D programming language and compiler"
    prg2="The dart programming language SDK"
    prg3="The Go programming language"
    prg4="Developer tools for Go language"
    prg5="Java Runtime Environments"
    prg7="OpenJDK Java 8 development kit"
    prg8="OpenJFX 8 client application platform"
    prg9="A feature-rich programming language"
    prg10="A general-purpose scripting language"
    prg11="High-level scripting language"
    prg12="An object-oriented language"
    prg13="Object-oriented and functional based"
    prg14="OpenJDK Java 11 development kit"
    prg15="OpenJDK Java 12 development kit"

    # Terminal
    term0="Framebuffer Terminal Emulator"
    term1="GNOME Dropdown Terminal"
    term2="Simple terminal emulator"
    term3="Light Weight Terminal"
    term4="urxvt Terminal Emulator"
    term5="Terminator Terminal Emulator"
    term6="XFCE4 Terminal Emulator"
    term7="Drop-down terminal (Quake style)"
    term8="A simple terminal emulator for X"
    term9="A simple VTE-based terminal"
    term10="EFL based terminal emulator"
    term11="Quake and Doom inspired terminal"
    term12="Terminal which mimics a cathode display"
    term13="A tiling terminal emulator for Linux using GTK+ 3"

    # Text editor
    edit0="OS in a text editor"
    edit1="A text editor using GTK2"
    edit2="GNOME Text editor"
    edit3="Graphical interface for Vim"
    edit4="XFCE4 Text editor"
    edit5="Popular fork of VIM editor"
    edit6="Console Text Editor fork of vi"
    edit7="Atom feature rich text editor"
    edit8="A WYSIWYG text editor"

    # Shell
    shell0="DASH command shell (Debian Almquist shell)"
    shell1="Fish command shell (friendly interactive shell)"
    shell2="Korn command shell (mksh enhanced ksh)"
    shell3="tcsh/C command Shell (The C Shell)"
    shell4="Z-Shell command shell (Powerful & Feature rich)"
    shell5="Bourne again shell (Default Linux shell)"

    # Server
    srv1="Linux Apache MariaDB PHP server stack"
    srv2="Linux Nginx MariaDB PHP server stack"
    srv3="Nginx HTTP/Proxy Server (Stable Branch)"
    srv4="Nginx HTTP/Proxy Server (Latest Branch)"
    srv5="Light Flexible HTTP Server"
    srv6="Secure fast mail server"
    srv7="Very Secure FTP daemon"
    srv8="Full-featured Web proxy cache server"
    srv9="SMB Fileserver and AD Domain server"
    srv10="The ISC DNS Server"
    srv11="The CUPS Printing System"
    sys1="Apache High Proformance HTTP Server"
    sys10="Secure Shell Deamon"

    # System
    sys2="Light system monitor for X"
    sys3="Source control management"
    sys4="Partition and disk managment"
    sys5="A mouse server for the console"
    sys6="CLI process Info"
    sys7="Arch wiki CLI utility"
    sys8="CD/DVD writing suite"
    sys9="CLI network analyzer"
    sys11="GNU Screen"
    sys12="Display System Info"
    sys13="Simple command-line screenshot"
    sys14="Terminal multiplxer"
    sys15="Twin-panel file manager"
    sys16="Desktop virtualization"
    sys17="Uncomplicated Firewall"
    sys18="Wget CLI downloader"
    sys19="Lightweight dynamic menu for X"
    sys20="Console-based file manager"
    sys21="Lightweight file manager for X"
    sys22="Deletes unneeded files"
    #sys23="Graphical file manager for X"
    sys24="Graphical calculator application"
    sys25="Basic cli calculator"
    sys26="GNOME graphical package manager"
    sys27="GNOME Software Tools"
    sys28="NTFS drivers and utilities"
    sys34="Screensaver for xorg"

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
