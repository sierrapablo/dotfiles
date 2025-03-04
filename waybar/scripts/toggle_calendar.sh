#!/bin/sh

if pgrep -x "gnome-calendar" > /dev/null; then
    echo "gnome-calendar está en ejecución. Cerrando..."
    pkill -x "gnome-calendar"
else
    echo "gnome-calendar no está en ejecución. Abriendo..."
    gnome-calendar &
fi
