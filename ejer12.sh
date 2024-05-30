echo "dime un directorio dentro de /home"
read directorio
if [ -d /home/$directorio ];then
echo "$directorio existe"
else
echo "$directorio no existe"
fi
