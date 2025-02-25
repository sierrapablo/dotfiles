#!/bin/sh

# Actualización de pacman
echo "Actualizando los paquetes con pacman..."
sudo pacman -Syu --noconfirm || { echo 'Error al actualizar pacman'; sleep 5; exit 1; }

# Actualización de AUR con paru
echo "Actualizando los paquetes con paru..."
paru -Syu --noconfirm || { echo 'Error al actualizar paru'; sleep 5; exit 1; }

echo "Actualización completada con éxito."

# Salir del script
exit 0

