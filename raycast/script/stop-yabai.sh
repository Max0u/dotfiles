#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Stop yabai
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.author Maxime

yabai -m config top_padding 0
yabai -m config external_bar all:10:0

skhd --stop-service
yabai --stop-service
brew services stop sketchybar

defaults write com.apple.finder ShowStatusBar -bool true