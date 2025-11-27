#!/bin/bash

pactl set-sink-mute @DEFAULT_SINK@ 0
pactl set-sink-volume @DEFAULT_SINK@ 150%
wget -P ~/Vídeos https://storage.soundinstants.com/pou-estourado.mp3
xrandr --output DP-1 --rotate inverted
rhythmbox ~/Vídeos/pou-estourado.mp3

