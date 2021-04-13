#!/usr/bin/env bash

# Terminate already running bar instances
killall -q waybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
waybar -c ~/.config/waybar/config -s ~/.config/waybar/style.css