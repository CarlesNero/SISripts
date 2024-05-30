echo "Introduce el número de líneas a mostrar:"
read numero_lineas

echo "Primeras $numero_lineas líneas del archivo /etc/group:"
head -n "$numero_lineas" /etc/group
