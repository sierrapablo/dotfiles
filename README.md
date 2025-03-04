# Dotfiles

Este repositorio contiene mis configuraciones personales para varias herramientas y aplicaciones que uso en mi entorno de desarrollo.

## Contenido del Repositorio

### 📂 Alacritty
Configuraciones del emulador de terminal Alacritty.
- `alacritty.toml`: Configuración principal.
- `themes/one_dark.toml`: Tema de color One Dark.

### 📂 Neovim
Configuraciones para Neovim con LazyVim y varios plugins.
- `init.lua`: Archivo principal de configuración.
- `lua/options.lua`: Opciones generales.
- `lua/plugins/`: Configuración de plugins como LSP, Telescope, Treesitter, etc.
- `lazy-lock.json`: Archivo de bloqueo para LazyVim.

### 📂 Scripts
Varios scripts útiles para automatizar tareas:
- `commit.sh`: Automatización de commits.
- `lazygit-auto.sh`: Ejecución de LazyGit.
- `menu_launcher.sh`: Script para lanzar un menú.
- `tmux-start.sh`: Inicio de sesiones de tmux.
- `update_system.sh`: Actualización del sistema.

### 📂 Starship
Configuración de Starship Prompt.
- `starship.toml`: Configuración personalizada.

### 📂 Superfile
Configuración adicional para gestión de hotkeys y temas.
- `config.toml`, `hotkeys.toml`, `theme/onedark.toml`.

### 📂 Tmux
Configuración de tmux.
- `.tmux.conf`: Configuración principal de tmux.

### 📂 Zsh
Configuración del shell Zsh.
- `.zshrc`: Configuración personalizada de Zsh con Oh My Zsh y Starship.

### 📂 Hyprland
Configuración del entorno de escritorio Hyprland

### 📂 Waybar
Configuración de la barra de tareas Waybar

### 📂 Wofi
Configuración del lanzador de aplicaciones Wofi

## Instalación
Para aplicar estas configuraciones en tu sistema, clona este repositorio y crea enlaces simbólicos a los archivos en sus ubicaciones correspondientes.
```sh
# Clonar el repositorio
git clone https://github.com/sierrapablo/dotfiles.git ~/.dotfiles

# Crear enlaces simbólicos
ln -s ~/.dotfiles/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
...
```

## Autor
Pablo Sierra - [@sierrapablo](https://github.com/sierrapablo)

