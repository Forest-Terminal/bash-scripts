#!/bin/bash

cmd=$1

case "$cmd" in
	"init")
	read -p "New todo: " input
if [ -z "$input" ]; then
	echo "Input is null"
	exit 0
fi
	echo "echo -e \"\033[0;34mTODO:\033[0m $input ($RANDOM)\"" >> "/home/forest-terminal/.zshrc"
	;;
"end")
	read -p "Kill code: " input
if [ -z "$input" ]; then
	echo "Input is null"
	exit 0
fi
phrase="todo section"
	sed -i "/($input)\"$/d" "/home/forest-terminal/.zshrc"
;;
*)
	echo "Comnand not found"
	;;
esac

