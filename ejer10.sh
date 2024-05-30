echo "1.buscar usuario"
echo "2.muliplicar"
echo "3.numero de grupos"
echo "4.salir"
echo "elige opcion"

read opc
case $opc in 
1) echo "dime usuario"
read usuario
grep $usuario /etc/passwd;;
2)echo "dime num"
read num1
echo "otro"
read num2
multi=$(( $num1 * $num2 ))
echo "el valor de multi es $multi";;
3) wc -l /etc/group;;
4)exit;;
*)echo "opcion incorrecta";;
esac 
