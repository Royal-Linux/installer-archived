#!/usr/bin/env bash

## Copyright (C) 2020 Ulises Jeremias Cornejo Fandos
## Licensed under GPL v3.0
##
##     @script.name [option] ARGUMENTS...
##
## Options:
##         -c, --no-color      Disable color output
##         -d, --docker        Compile inside docker
##         -i, --no-input      Don't ask user for input
##         -o, --output-dir    Specify directory for generated ISOs/checksums
##         -l, --log-dir       Specify directory for logs
##         -h, --help          All client scripts have this, it can be omitted.

# Error codes:
# * Exit 1: Missing dependencies (check_dependencies)
# * Exit 2: Missing Arch iso (update_arch_iso)
# * Exit 3: Checksum did not match for Arch ISO (check_arch_iso)
# * Exit 4: Failed to create iso (create_iso)
# * Exit 5: Docker is not installed (compile_in_docker)
# * Exit 6: Failed to build/remove docker image (build_docker_image)

ROOT=$(dirname $0)
source "$ROOT/util/opts/opts.sh" || exit # Bash implementation, slower

# Boolean and parameter options
[[ -n "$no_color"  ]] && echo "Option specified: --no-color"
[[ -n "$docker" ]] && echo "Option specified: --docker"
[[ -n "$no_option" ]] && echo "Option specified: --docker"
[[ -n "$output_dir"   ]] && echo "Option specified: --output-dir is $output_dir"
[[ -n "$log_dir"   ]] && echo "Option specified: --log-dir is $log_dir"

# Arguments
for argument in "${arguments[@]}"; do
    echo "Argument specified: $argument"
done
