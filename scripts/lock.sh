#!/bin/bash
# revert() {
#   rm /tmp/*screen*.png
#   xset dpms 0 0 0
# }
# trap revert HUP INT TERM
# xset +dpms dpms 0 0 5
# scrot -d 1 /tmp/locking_screen.png
# convert -blur 0x8 /tmp/locking_screen.png /tmp/screen_blur.png
# convert -composite /tmp/screen_blur.png ~/dotfiles/pictures/Evil_Rick_Sprite.png -gravity South -geometry -20x1200 /tmp/screen.png
# i3lock -i /tmp/screen.png
# revert
icon=$HOME/workspace/dotfiles/pictures/ricket.png
grim -o eDP-1 /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
[[ -f $icon ]] && convert /tmp/screen.png $icon -gravity center -composite -matte /tmp/screen.png
#dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop
swaylock -u -i /tmp/screen.png
rm /tmp/screen.png