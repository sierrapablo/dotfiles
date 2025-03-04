#!/bin/sh

if pgrep -x "pavucontrol" > /dev/null; then
    echo "pavucontrol está en ejecución. Cerrando..."
    pkill -x "pavucontrol"
else
    echo "pavucontrol no está en ejecución. Abriendo..."
    pavucontrol &
fi
