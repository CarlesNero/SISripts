echo "Introduce la operación a realizar: suma, resta, división"
read operacion

echo "Introduce un valor"
read operando1

echo "Introduce otro valor"
read operando2

case $operacion in
    suma)
        resultado=$(($operando1 + $operando2))
        echo "El resultado de la suma es: $resultado"
        ;;
    resta)
        resultado=$(($operando1 - $operando2))
        echo "El resultado de la resta es: $resultado"
        ;;
    división)
        if [ $operando2 -eq 0 ]; then
            echo "No se puede dividir por cero."
            exit 1
        fi
        resultado=$(awk "BEGIN {printf \"%.2f\", $operando1 / $operando2}")
        echo "El resultado de la división es: $resultado"
        ;;
    *)
        echo "Operación no válida. Por favor, introduce 'suma', 'resta' o 'división'."
        exit 1
        ;;
esac
