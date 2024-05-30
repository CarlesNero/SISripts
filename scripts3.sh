1. Script para comprobar si un usuario y un grupo existen en el sistema

read -p "Ingrese el nombre del usuario: " usuario
read -p "Ingrese el nombre del grupo: " grupo

# Comprobar si el usuario existe
if grep  "$usuario" /etc/passwd; then
    echo "El usuario $usuario existe."
else
    echo "El usuario $usuario no existe."
fi

# Comprobar si el grupo existe
if grep  "$grupo" /etc/group; then
    echo "El grupo $grupo existe."
else
    echo "El grupo $grupo no existe."
fi

2. Script para comprobar si el usuario actual es Pepe

if [ "$USER" == "Pepe" ]; then
    echo "Hola, Pepe"
else
    echo "Adiós"
fi

if ["$USER" = "root" ]; then
	echo "Usuario conectado"
else
	"Chau"
fi

3. Script que comprueba si estamos en el día 17

if [ $(date +%d) -eq 17 ]; then
    echo "Hoy es el día 17."
else
    echo "Hoy no es el día 17."
fi

4. Script que verifica si la segunda columna de un archivo contiene la palabra "pepe"
Primero, crea el archivo archivo.txt con contenido de ejemplo:

plaintext
Copiar código
Juan:pepe
Ana:maria
Luis:pepe
Luego, el script:

archivo="archivo.txt"

cut -d' ' -f2 pepe.txt> a.txt
if grep -q pepe a.txt;then
echo "pepe existe en la 2 columna"
else echo "pepe no existe"
fi

5. Script que obtiene las líneas del archivo /etc/passwd que empiezan con 'r'

grep ^r /etc/passwd

6. Script para obtener personas que vienen de Rusia
Primero, crea el archivo personas.txt con contenido de ejemplo:

plaintext
Copiar código
Juan:España
Olga:Rusia
Ana:Argentina
Pavel:Rusia

archivo="personas.txt"

while IFS=: read -r nombre pais
do
    if [ "$pais" == "Rusia" ]; then
        echo "$nombre viene de Rusia"
    fi
done < "$archivo"




7. Script que determina si se ha ingresado una letra mayúscula, una letra minúscula o un número

read -p "Ingrese un carácter: " char

if [[ "$char" =~ [A-Z] ]]; then
    echo "Has ingresado una letra mayúscula."
elif [[ "$char" =~ [a-z] ]]; then
    echo "Has ingresado una letra minúscula."
elif [[ "$char" =~ [0-9] ]]; then
    echo "Has ingresado un número."
else
    echo "No has ingresado una letra ni un número."
fi

8. Script en el que se ingresan números o letras hasta presionar el número 0 para salir

while true; do
    read -p "Ingrese un número o una letra (0 para salir): " input
    if [ "$input" == "0" ]; then
        echo "Saliendo..."
        break
    else
        echo "Ingresaste: $input"
    fi
done

9. Script que saluda a cuatro personas que ha ingresado un usuario

personas=()

for i in {1..4}
do
    read -p "Ingrese el nombre de la persona $i: " nombre
    personas+=("$nombre")
done

for nombre in "${personas[@]}"
do
    echo "Hola, $nombre!"
done

10. Menú con opciones de buscar un usuario, multiplicar dos números, obtener nombres de los grupos en el sistema y salir


while true; do
    echo "1. Buscar un usuario"
    echo "2. Multiplicar dos números"
    echo "3. Obtener nombres de los grupos en el sistema"
    echo "4. Salir"
    read -p "Elija una opción: " opcion

    case $opcion in
        1)
            read -p "Ingrese el nombre del usuario: " usuario
            if id "$usuario" &>/dev/null; then
                echo "El usuario $usuario existe."
            else
                echo "El usuario $usuario no existe."
            fi
            ;;
        2)
            read -p "Ingrese el primer número: " num1
            read -p "Ingrese el segundo número: " num2
            echo "El resultado de la multiplicación es: $((num1 * num2))"
            ;;
        3)
            echo "Los nombres de los grupos en el sistema son:"
            cut -d: -f1 /etc/group
            ;;
        4)
            echo "Saliendo..."
            break
            ;;
        *)
            echo "Opción no válida"
            ;;
    esac
done
