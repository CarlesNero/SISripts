echo "Dime un num"
read num1
echo "Dime otro num"
read num2
prod=`expr $num1 \*  $num2`
echo "El resultado de la multiplicación es: $prod"
prod2=$(($num1 / $num2))
echo "El resultado de la división es $prod2"
