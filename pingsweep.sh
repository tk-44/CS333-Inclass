#!/bin/bash
# Ping sweep the Lab

base="onyxnode"

main(){
	if [ $# -eq 0 ]; then
		cmd_up
		exit 0
	fi

for cmd in "$@"; do
	case "$cmd" in
	help|h) cmd_help;;
	*)
	echo "Unknown command: $cmd"
	cmd_help
	exit 1
	;;
   esac
done
	}

for q in {1..200}
do
	curr="$base$q"
	ping -c 1 $curr >> ping.log
done

