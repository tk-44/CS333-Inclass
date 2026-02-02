#!/bin/bash
# Ping sweep the Lab

base="onyxnode"

cmd_pingSweep() {
	for q in {1..200}
	do
		curr="$base$q"
		ping -c 1 $curr >> ping.log
	done
}

cmd_help() {
	echo "-p to pingsweep"
}

main(){
	for cmd in "$@"; do
		case "$cmd" in
			-h) cmd_help ;;
			-p) cmd_pingSweep ;;
			*)
				echo "Unknown command: $cmd"
				cmd_help
				exit 1
				;;
		esac
	done
}

main "$@"

