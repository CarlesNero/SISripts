suma(){
resultado=$(( $num1 + $num2))
echo "el resultado de la suma es $resultado"
}
echo "dime un número"
read num1
echo "dime otro número"
read num2
suma $num1 $num2
