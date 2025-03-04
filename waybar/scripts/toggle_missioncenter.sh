#!/bin/sh

if pgrep -x "missioncenter" > /dev/null; then
    echo "missioncenter está en ejecución. Cerrando..."
    pkill -x "missioncenter"
else
    echo "missioncenter no está en ejecución. Abriendo..."
    missioncenter &
fi
