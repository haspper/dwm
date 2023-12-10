#!/bin/bash

xrandr --dpi 135
dwm &
~/.local/bin/lookc
picom -b
sxhkd -c .config/sxhkd/sxhkdrc &

while true
do
  xsetroot -name " $(cat /sys/class/power_supply/BAT0/capacity)% | $(date +"%a %d %b %Y | %I:%M %p %Z")";
    sleep 1m;
done
