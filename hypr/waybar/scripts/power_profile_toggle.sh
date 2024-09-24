#!/bin/bash

# Get the current power profile
current_profile=$(powerprofilesctl get)

# Toggle between profiles
case "$current_profile" in
    "performance")
        powerprofilesctl set balanced
        notify-send "Power Profile" "Switched to Balanced"
        ;;
    "balanced")
        powerprofilesctl set power-saver
        notify-send "Power Profile" "Switched to Power Saver"
        ;;
    "power-saver")
        powerprofilesctl set performance
        notify-send "Power Profile" "Switched to Performance"
        ;;
    *)
        notify-send "Power Profile" "Unknown profile, unable to switch"
        ;;
esac

