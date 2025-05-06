#!/usr/bin/env sh

sketchybar  --add item space_separator  left                                            \
            --add item window_title     left                                            \
            --set window_title          script="$CONFIG_DIR/plugins/window_title.sh"    \
                                        label.font="$FONT:light:13.0"                   \
                                        label.padding_left=15                           \
            --subscribe window_title front_app_switched