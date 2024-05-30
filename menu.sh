opc=5
while [ $opc != 0 ];do

echo "Opcion 1.PS"
echo "Opcion 2.Crear un directorio"
echo "Opcion 0.Salir"
echo "Dime una opción"
read opc
case $opc in
1|uno|PS)ps;;
2)echo "dime el directorio a crear"
read direc
if [ -d !$direc ];then
mkdir $direc
else
echo "$direc existe"
fi ;;
0)exit;;
*)echo "Opción incorrecta"
esac
done
