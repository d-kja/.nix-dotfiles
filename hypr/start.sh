#!/usr/bin/env bash

# Initial setup 
nm-applet --indicator &

waybar &
dunst &
mako &

swww init &
swww img ~/.config/hypr/background/option-01.jpeg &
