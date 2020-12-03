#!/bin/sh

sleep 2 # waiting for keyboard ready
export DISPLAY=:0

setxkbmap="/usr/bin/setxkbmap"
$setxkbmap -layout us -option ctrl:nocaps
$setxkbmap -layout us -option altwin:swap_alt_win -device 15 
