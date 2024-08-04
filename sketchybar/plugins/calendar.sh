#!/usr/bin/env sh

sketchybar --set $NAME icon="$(LANG=fr_FR.UTF-8  date '+%a %d. %b')" label="$(date '+%H:%M')"
