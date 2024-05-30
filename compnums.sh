echo "Introduce el primer número:" 

read num1 

echo "Introduce el segundo número:" 

read num2 

if [ "$num1" -eq "$num2" ]; then 

    echo "Los números son iguales." 

else 

    echo "Los números son diferentes." 

fi 
