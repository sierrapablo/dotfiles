#!/bin/sh

if pgrep -x "blueman-manager" > /dev/null; then
    echo "blueman-manager está en ejecución. Cerrando..."
    pkill -x "blueman-manager"
else
    echo "blueman-manager no está en ejecución. Abriendo..."
    blueman-manager &
fi
