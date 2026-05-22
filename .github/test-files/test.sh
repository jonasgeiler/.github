#!/bin/sh
###### STRICT MODE ######
# shellcheck enable=all
IFS="$(printf ' \n\t')"
set -eu
#########################

# Determine operating system.
kernel_name="$(uname --kernel-name 2>/dev/null)"
case "${kernel_name}" in
'Linux') os='Linux' ;;
'Darwin') os='macOS' ;;
CYGWIN* | MINGW* | MSYS*) os='Windows' ;;
*)
	# Most Windows environments set an "OS" variable we can check as a fallback.
	if [ "${OS:-}" = 'Windows_NT' ]; then
		os='Windows'
	else
		echo "Error: Could not determine operating system from kernel name \"${kernel_name}\"." >&2
		exit 1
	fi
	;;
esac

# Output the detected operating system.
echo "You are running this script on ${os}."
