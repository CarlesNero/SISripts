echo "Introduce el nombre de usuario:"
read nombre_usuario

echo "Líneas en /etc/passwd con el nombre de usuario '$nombre_usuario':"
grep "$nombre_usuario" /etc/passwd
