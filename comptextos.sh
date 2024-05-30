echo "Introduce la primera cadena de texto:"
read texto1

echo "Introduce la segunda cadena de texto:"
read texto2

if [ "$texto1" = "$texto2" ]; then
    echo "Las cadenas de texto son iguales."
else
    echo "Las cadenas de texto son diferentes."
fi
