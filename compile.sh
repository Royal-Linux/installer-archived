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
##         -o, --output-dir    Specify directory for generated ISOs/checksums
##         -l, --log-dir       Specify directory for logs
##         -h, --help          All client scripts have this, it can be omitted.
##
## Error codes:
##
##         Exit 1: Missing dependencies (check_dependencies)
##         Exit 2: Missing Arch iso (update_arch_iso)
##         Exit 3: Checksum did not match for Arch ISO (check_arch_iso)
##         Exit 4: Failed to create iso (create_iso)
##         Exit 5: Docker is not installed (compile_in_docker)
##         Exit 6: Failed to build/remove docker image (build_docker_image)
##

# Exit on error
set -o errexit
set -o errtrace

# Enable tracing of what gets executed
# set -o xtrace

ROOT=$(dirname $0)
source "$ROOT/util/opts/opts.sh" || exit # Bash implementation, slower

# Boolean and parameter options
[[ -n "$no_color" ]] && disable_color

# Clears the screen and adds a banner
prettify() {
    # Source colors
    colors

    clear
    echo -e "${color_white}-- ArchRoyal Linux --${color_blank}"
    echo -e ""
}

set_version() {
    # Label must be up to 11 chars long (incremental numbers)
    arch_royal_iso_label="ARCH-ROYAL110"
    arch_royal_iso_release="1.1.0"
    arch_royal_iso_name="arch-royal-${arch_royal_iso_release}-x86_64.iso"
}
