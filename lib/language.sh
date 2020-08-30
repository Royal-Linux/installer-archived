#!/usr/bin/env bash

language() {

	echo "$(date -u "+%F %H:%M") : Start archroyal installer" >"${log}"
	op_title=" -| Language Select |- "
	ILANG=$(dialog --nocancel --menu "\nArchRoyal Installer\n\n \Z2*\Zn Select your install language:" 20 60 10 \
		"English" "-" \
		"Spanish" "Español" 3>&1 1>&2 2>&3)

	case "$ILANG" in
        "Spanish") export LANGUAGE=es ;;
		*) export LANGUAGE=en ;;
    esac

}

# vim: ai:ts=4:sw=4:et
