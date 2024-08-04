#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Start yabai
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.author Maxime

skhd --start-service
yabai --start-service
brew services start sketchybar

defaults write com.apple.finder ShowStatusBar -bool false