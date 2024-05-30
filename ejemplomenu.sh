opc=5
while [ $opc != 0 ];do
echo "1.Listar"
echo "2.Ver fichero passwd"
echo "0.Salida"
echo "Elegir opc"

read opc

case $opc in
1|uno|Uno) ls -l;;
2) cat /etc/passwd;;
0) exit;;
*) echo "Opcion elegida incorrecta";;
esac
done
