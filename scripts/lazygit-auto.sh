#!/usr/bin/expect

# Ejecuta lazygit
spawn lazygit

# Espera a que la interfaz cargue y envía la tecla "n"
expect "?" {
    send "n\r"
}

# Deja la sesión abierta para seguir usando lazygit
interact

