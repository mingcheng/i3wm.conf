#!/bin/env bash

# https://stackoverflow.com/questions/12782318/add-udev-rule-for-external-display
# https://wiki.archlinux.org/index.php/Multihead

export DISPLAY=:0.0

xrandr --output eDP1 --primary

xrandr | grep "DP1 connected"
if [[ $? == 0 ]]; then
  # is connected
  xrandr --output DP1 --right-of eDP1 --auto --scale 2x2
else
  # not connected
  xrandr --output DP1 --off
fi

xrandr | grep "DP2 connected"
if [[ $? == 0 ]]; then
  # is connected
  xrandr --output DP2 --right-of eDP1 --auto --scale 2x2
else
  # not connected
  xrandr --output DP2 --off
fi

xrandr | grep "HDMI1 connected"
if [[ $? == 0 ]]; then
  # is connected
  xrandr --output HDMI1 --right-of eDP1 --auto --scale 2x2
else
  # not connected
  xrandr --output HDMI1 --off
fi

xrandr | grep "HDMI2 connected"
if [[ $? == 0 ]]; then
  # is connected
  xrandr --output HDMI2 --right-of eDP1 --auto --scale 2x2
else
  # not connected
  xrandr --output HDMI2 --off
fi

touch /tmp/hotplug-monitor-dp1.status
