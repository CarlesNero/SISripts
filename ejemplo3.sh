echo "dime un num"
read num1
echo "dime otro "
read num2
if [ $num1 \> $num2 ];then
echo "$num1 es el mas grande"
elif [ $num1 = $num2 ];then
echo "Los números $num1 son iguales"
else
echo "$num2 es el mas grande"
fi
