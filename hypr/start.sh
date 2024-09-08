#!/usr/bin/env bash

# Initial setup 
swww init &
swww img ~/.config/hypr/background/option-01.jpeg &

nm-applet --indicator &

waybar &
dunst
