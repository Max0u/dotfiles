#!/usr/bin/env python3

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Reorder
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.author Maxime

import json
from typing import Dict, List
import subprocess

def get_id_by_name(name: str, apps: List[Dict]) -> str:
    for app in apps:
        if app["app"] == name:
            return app["id"]
    return None


result = subprocess.run("yabai -m query --windows".split(" "), capture_output=True, text=True)

current_apps = json.loads(result.stdout)

print(get_id_by_name("iTerm2", current_apps))

