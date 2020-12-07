#!/usr/bin/env bash

# Main script for the installation,
# which calls all other scripts

# Disable warning about variables not being assigned (since they are in other files)
# shellcheck disable=SC2154

init() {
    if [[ $(basename "$0") = "archroyal" ]]; then
        archroyal_directory="/usr/share/archroyal" # prev: arl_dir
        archroyal_config="/etc/archroyal.sh"       # prev: arl_conf
        archroyal_scripts="/usr/lib/archroyal"     # prev: arl_lib
    else
        archroyal_directory=$(dirname "$(readlink -f "$0")") # ArchRoyal git repository
        archroyal_config="${archroyal_directory}"/etc/archroyal.sh
        archroyal_scripts="${archroyal_directory}"/lib
    fi

    trap '' 2

    for script in "${archroyal_scripts}"/*.sh; do
        [[ -e "${script}" ]] || break
        # shellcheck source=/usr/lib/archroyal/*.sh
        source "${script}"
    done

    # shellcheck source=/etc/archroyal.sh
    source "${archroyal_config}"
    language
    # load lang file
    source "${archroyal_directory}/lang/load.sh"
    export reload=true
}

main() {
    set_keys
    update_mirrors
    check_connection
    set_locale
    set_zone
    prepare_drives
    install_options
    set_hostname
    set_user
    add_software
    install_base
    configure_system
    add_user
    reboot_system
}

dialog() {
    # If terminal height is more than 25 lines add a backtitle
    if "${screen_h}"; then   # /etc/archroyal.sh
        if "${LAPTOP}"; then # /etc/archroyal.sh
            # Show battery life next to ArchRoyal heading
            backtitle="${backtitle} $(acpi)"
        fi
        # op_title is the current menu title
        /usr/bin/dialog --colors --backtitle "${backtitle}" --title "${op_title}" "$@"
    else
        # title is the main title (ArchRoyal)
        /usr/bin/dialog --colors --title "${title}" "$@"
    fi
}

if [[ "${UID}" -ne "0" ]]; then
    echo "Error: archroyal requires root privilege"
    echo "       Use: sudo archroyal"
    exit 1
fi

# Read optional arguments
opt="$1" # /etc/archroyal.sh
init
main

# vim: ai:ts=4:sw=4:et
