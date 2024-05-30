suma() {
    resultado=$(($1 + $2))
    echo "El resultado de la suma es: $resultado"
}

resta() {
    resultado=$(($1 - $2))
    echo "El resultado de la resta es: $resultado"
}

multiplicacion() {
    resultado=$(($1 * $2))
    echo "El resultado de la multiplicación es: $resultado"
}

division() {
    if [ $2 -eq 0 ]; then
        echo "No se puede dividir por cero."
    else
        resultado=$(awk "BEGIN {printf \"%.2f\", $1 / $2}")
        echo "El resultado de la división es: $resultado"
    fi
}

echo "Seleccione una operación:"
echo "1. Suma"
echo "2. Resta"
echo "3. Multiplicación"
echo "4. División"

read opcion

echo "Ingrese el primer valor:"
read valor1
echo "Ingrese el segundo valor:"
read valor2

case $opcion in
    1)
        suma $valor1 $valor2
        ;;
    2)
        resta $valor1 $valor2
        ;;
    3)
        multiplicacion $valor1 $valor2
        ;;
    4)
        division $valor1 $valor2
        ;;
    *)
        echo "Opción no válida."
        ;;
esac
