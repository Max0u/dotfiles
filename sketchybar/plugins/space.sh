#!/usr/bin/env sh

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --animate tanh 20 --set $NAME icon.highlight=true label.width=0
else
    sketchybar --animate tanh 20 --set $NAME icon.highlight=false label.width=dynamic
fi