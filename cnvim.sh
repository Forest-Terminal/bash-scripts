#!/bin/bash
eval "$(zoxide init bash)"
file=$1

if [ -f "$file" ]; then
	directory=$(dirname "$file")
	name=$(basename "$file")
	z $directory
	nvim $name
elif [ -d "$file" ]; then
	z $file
	nvim .
else
	z $file
	nvim .
fi
