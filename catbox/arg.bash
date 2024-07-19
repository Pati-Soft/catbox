
declare CATBOX_VER="0.0.1"
declare CATBOX_NAME="catbox"

CATBOX_HELP_STR="Usage: $0 [OPTIONS]
Options:
	-v, --version    Show catbox verion.
	-h, --help       Show this help message.
"

if [[ $# -eq 0 ]]; then
	echo -e "$CATBOX_HELP_STR"
fi

while [[ $# -gt 0 ]]; do
	case "$1" in
		-v|--version|version)
			echo $CATBOX_NAME: $CATBOX_VER
			exit 0
			;;
		-h|--help|help)
			echo -e "$CATBOX_HELP_STR"
			exit 0
			;;
		*)
			echo "Error: Unknown option $1."
			exit 1
			;;
	esac
	shift
done
