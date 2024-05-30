usuario=$(whoami)

echo "Líneas en /etc/passwd con el nombre de usuario '$usuario':"
grep "$usuario" /etc/passwd
