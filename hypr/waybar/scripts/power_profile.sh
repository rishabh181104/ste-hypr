#!/bin/bash

# Get the current power profile
current_profile=$(powerprofilesctl get)

# Define the icon and label for each profile
case "$current_profile" in
    "performance")
        icon="󰾤"
        label="Performance"
        ;;
    "balanced")
        icon="󰾢"
        label="Balanced"
        ;;
    "power-saver")
        icon="󰾥"
        label="Power Saver"
        ;;
    *)
        icon="󰾧"
        label="Unknown"
        ;;
esac

# Output JSON for Waybar
echo "{\"text\": \"$icon $label\", \"tooltip\": \"Current profile: $label\"}"

