#!/bin/sh

if pgrep -x "thunar" > /dev/null; then
    echo "thunar está en ejecución. Cerrando..."
    pkill -x "thunar"
else
    echo "thunar no está en ejecución. Abriendo..."
    thunar &
fi
