!#/usr/bin/env sh

pkill polybar && while pgrep polybar; do sleep 1;done;

polybar bar1 --config="~/.config/polybar/polybar.conf" &
