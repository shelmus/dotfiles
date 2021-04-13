#!/bin/bash
#$(f="screenshot-$(date +'%Y-%m-%d-%H%M%S').png" && grim "~/Picures/$f" && notify-send "Screenshot saved to: ~/Pictures/$f")

$(f="$(xdg-user-dir PICTURES)/screenshot-$(date +'%Y-%m-%d-%H%M%S').png" && grim "$f" && notify-send "Screenshot saved to: $f")