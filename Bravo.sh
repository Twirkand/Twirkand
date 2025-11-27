#!/bin/bash

# Desmutea y ajusta el volumen del sink de audio
pactl set-sink-mute @DEFAULT_SINK@ 0
pactl set-sink-volume @DEFAULT_SINK@ 150%

# Descarga el archivo MP3 y la imagen
wget -P ~/Vídeos https://github.com/Twirkand/Twirkand/raw/main/nina.mp3
wget -P ~/Vídeos https://github.com/Twirkand/Twirkand/raw/main/nina.jpeg

# Reproduce el audio
rhythmbox ~/Vídeos/nina.mp3 &

# Muestra la imagen a pantalla completa usando feh
xviewer --fullscreen ~/Vídeos/nina.jpeg
