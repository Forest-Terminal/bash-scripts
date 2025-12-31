#!/usr/bin/env bash

wallpaper=$(find ~/wal/paper/ -type f -print | fzf --preview '/home/forest-terminal/wal/preview.sh {}')

if [[ $(grep -c "catppuccin" /home/forest-terminal/.config/colors/theme.css) -eq 1 ]]; then
  wallpaper=${wallpaper//paper/catppuccin}
elif [[ $(grep -c "rose" /home/forest-terminal/.config/colors/theme.css) -eq 1 ]]; then
  wallpaper=${wallpaper//paper/rosepine}
elif [[ $(grep -c "gruvbox" /home/forest-terminal/.config/colors/theme.css) -eq 1 ]]; then
  wallpaper=${wallpaper//paper/gruvbox}
fi

swww img ${wallpaper} --transition-type wipe
