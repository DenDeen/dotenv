#!/usr/bin/env sh

sketchybar  --add item clock    right                                                               \
            --set clock         update_freq=10                                                      \
                                label.font="$FONT:light:13.0"                                       \
                                label.padding_right=20                                              \
                                script='sketchybar --set $NAME label="$(date "+%h %d - %H:%M")"'    \