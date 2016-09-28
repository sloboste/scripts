#!/usr/bin/env bash
#
# Connect HDMI monitor

xrandr --auto
xrandr --output HDMI1 --above LVDS1
