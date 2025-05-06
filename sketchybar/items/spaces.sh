#!/usr/bin/env sh

sketchybar --add event aerospace_workspace_change
for sid in $(aerospace list-workspaces  --monitor 1); do
    sketchybar  --add       item "space.$sid" left                      \
                --subscribe "space.$sid" aerospace_workspace_change     \
                --set       "space.$sid"                                \
                            icon="$sid"                                 \
                            icon.font="$FONT:Light:13.0"                \
                            icon.align=center                           \
                            icon.width=30                               \
                            background.padding_left=5                   \
                            background.padding_right=5                  \
                            background.color=0xff033259                 \
                            background.corner_radius=5                  \
                            background.height=30                        \
                            background.drawing=off                      \
                            script="$CONFIG_DIR/plugins/space.sh $sid"
done