#!/bin/sh

echo "Actualizando los paquetes con pacman..."
sudo pacman -Syu --noconfirm || { echo 'Error al actualizar pacman'; sleep 5; exit 1; }

echo "Actualizando los paquetes con paru..."
paru -Syu --noconfirm || { echo 'Error al actualizar paru'; sleep 5; exit 1; }

echo "Actualización completada con éxito."

exit 0

