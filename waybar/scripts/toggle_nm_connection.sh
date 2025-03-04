#!/bin/sh

if pgrep -x "nm-connection-e" > /dev/null; then
    echo "nm-connection-editor está en ejecución. Cerrando..."
    pkill -x "nm-connection-e"
else
    echo "nm-connection-editor no está en ejecución. Abriendo..."
    nm-connection-editor &
fi
