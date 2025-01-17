sketchybar --add item volume right                      \
           --set volume script="$PLUGIN_DIR/volume.sh"  \
                        updates=on                      \
                        icon.background.drawing=on      \
                        icon.background.color=$BLUE     \
                        icon.background.height=8        \
                        icon.background.corner_radius=3 \
                        icon.width=0                    \
                        icon.align=right                \
                        label.drawing=off               \
                        background.drawing=on           \
                        background.color=$BACKGROUND_2  \
                        background.height=8             \
                        background.corner_radius=3      \
                        align=left                      \
           --subscribe volume volume_change

sketchybar --add alias "Centre de contrôle,Sound" right                      \
           --rename "Centre de contrôle,Sound" volume_alias                  \
           --set volume_alias icon.drawing=off                           \
                              label.drawing=off                          \
                              alias.color=$WHITE                         \
                              background.padding_right=0                 \
                              click_script="$PLUGIN_DIR/volume_click.sh"
