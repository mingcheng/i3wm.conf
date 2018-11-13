#!/bin/sh

# https://stackoverflow.com/questions/12782318/add-udev-rule-for-external-display
# https://wiki.archlinux.org/index.php/Multihead

sleep 3 # waiting for graph card reset
export DISPLAY=:0
xrandr="/usr/bin/xrandr"

$xrandr --output eDP1 --primary

$xrandr | grep "DP1 connected"
if [[ $? == 0 ]]; then
  $xrandr --output DP1 --right-of eDP1 --auto --scale $1x$1
else
  $xrandr --output DP1 --off
fi

$xrandr | grep "DP2 connected"
if [[ $? == 0 ]]; then
  $xrandr --output DP2 --right-of eDP1 --auto --scale $1x$1
else
  $xrandr --output DP2 --off
fi

$xrandr | grep "HDMI1 connected"
if [[ $? == 0 ]]; then
  $xrandr --output HDMI1 --right-of eDP1 --auto --scale $1x$1
else
  $xrandr --output HDMI1 --off
fi

$xrandr | grep "HDMI2 connected"
if [[ $? == 0 ]]; then
  $xrandr --output HDMI2 --right-of eDP1 --auto --scale $1x$1
else
  $xrandr --output HDMI2 --off
fi

# output status to tempate file.
$xrandr >> /tmp/hotplug-monitor-dp1.status
