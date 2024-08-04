#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title SSO
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description Enable SSO
# @raycast.author Maxime

echo "tell application \"System Events\" to keystroke key code 53" | osascript

export PATH="$PATH:${HOME}/.local/bin/";

if ! aws-sso-util &> /dev/null; then
  echo "aws-sso-util is required (https://github.com/benkehoe/aws-sso-util)";
  exit 1;
fi

aws-sso-util login --all;

echo "tell application \"System Events\" to keystroke \"w\" using command down" | osascript

exit 0