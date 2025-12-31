#!/usr/bin/env bash

wallpaper=$(find ~/wal/paper/ -type f -print | fzf --preview '/home/forest-terminal/wal/preview.sh {}')

swww img ${wallpaper} --transition-type wipe
