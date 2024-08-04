#!/usr/bin/env sh

SOURCE=$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleCurrentKeyboardLayoutInputSourceID)

case ${SOURCE} in
'com.apple.keylayout.French') LABEL='🇫🇷' ;;
'com.apple.keylayout.ABC') LABEL='🇬🇧' ;;
esac

sketchybar --set $NAME label="$LABEL"
