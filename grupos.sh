read -p "Ingrese el nombre del usuario: " usuario
read -p "Ingrese el nombre del grupo: " grupo

# Comprobar si el usuario existe
if grep -q  "$usuario" /etc/passwd; then
    echo "El usuario $usuario existe."
else
    echo "El usuario $usuario no existe."
fi

# Comprobar si el grupo existe
if grep -q "$grupo" /etc/group; then
    echo "El grupo $grupo existe."
else
    echo "El grupo $grupo no existe."
fi
