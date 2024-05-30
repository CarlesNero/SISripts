echo "Introduce el primer dominio:"
read dominio1

echo "Introduce el segundo dominio:"
read dominio2

info_dominio1=$(/usr/bin/host "$dominio1")
info_dominio2=$(/usr/bin/host "$dominio2")

echo "Información DNS del dominio $dominio1:"
echo "$info_dominio1"
echo "--------------------------------------------"
echo "Información DNS del dominio $dominio2:"
echo "$info_dominio2"

