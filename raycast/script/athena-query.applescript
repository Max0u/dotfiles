#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Athena Query
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "Query Id", "optional": true }

# Documentation:
# @raycast.description Open Athena query id 
# @raycast.author Maxime

on run argv
    tell application "Arc"
      tell front window      
        tell space 2
            if ( item 1 of argv ) is not "" then
                make new tab with properties {URL:"https://us-east-1.console.aws.amazon.com/athena/home?region=us-east-1#/query-editor/history/${( item 1 of argv )}"}
            else
                make new tab with properties {URL:"https://us-east-1.console.aws.amazon.com/athena/home?region=us-east-1#/query-editor/"}
            end if
        end tell
      end tell
      activate
    end tell
end run