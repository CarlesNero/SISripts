1. Script para ingresar nombre, apellidos y DNI


read -p "Ingrese su nombre: " nombre
read -p "Ingrese sus apellidos: " apellidos
read -p "Ingrese su DNI: " dni
echo "Nombre: $nombre"
echo "Apellidos: $apellidos"
echo "DNI: $dni"

2. Script que muestra los números del 1 al 100


for i in {1..100}
do
  echo $i
done

3. Script que pide un número y dice si es mayor, menor o igual a 15


read -p "Ingrese un número: " numero
if [ $numero -gt 15 ]; then
  echo "El número es mayor a 15"
elif [ $numero -lt 15 ]; then
  echo "El número es menor a 15"
else
  echo "El número es igual a 15"
fi

4. Script que comprueba si una palabra es un directorio en el home del usuario


read -p "Ingrese un nombre de directorio: " dir
if [ -d "$HOME/$dir" ]; then
  echo "El directorio existe en el home del usuario"
else
  echo "El directorio no existe en el home del usuario"
fi

5. Script que comprueba si la palabra ingresada es "puzzle"

read -p "Ingrese una palabra: " palabra
if [ "$palabra" == "puzzle" ]; then
  echo "Has entrado la palabra puzzle"
else
  echo "La palabra entrada no es puzzle"
fi

6. Script que resta dos números ingresados por teclado


read -p "Ingrese el primer número: " num1
read -p "Ingrese el segundo número: " num2
resultado=$((num1 - num2))
echo "El resultado de la resta es: $resultado"

7. Script que busca una palabra en un fichero de texto


read -p "Ingrese la palabra a buscar: " palabra
read -p "Ingrese el nombre del fichero: " fichero
if grep -q "$palabra" "$fichero"; then
  echo "La palabra '$palabra' se encontró en el fichero."
else
  echo "La palabra '$palabra' no se encontró en el fichero."
fi
8. Script que lista 4 directorios usando un for


dirs=( "/home" "/etc" "/var" "/usr" )
for dir in "${dirs[@]}"
do
  echo $dir
done

9. Menú con opciones de suma, resta y multiplicación


while true; do
  echo "1. Suma"
  echo "2. Resta"
  echo "3. Multiplicación"
  echo "4. Salir"
  read -p "Elija una opción: " opcion

  case $opcion in
    1)
      read -p "Ingrese el primer número: " num1
      read -p "Ingrese el segundo número: " num2
      echo "El resultado es: $((num1 + num2))"
      ;;
    2)
      read -p "Ingrese el primer número: " num1
      read -p "Ingrese el segundo número: " num2
      echo "El resultado es: $((num1 - num2))"
      ;;
    3)
      read -p "Ingrese el primer número: " num1
      read -p "Ingrese el segundo número: " num2
      echo "El resultado es: $((num1 * num2))"
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

10. Menú para crear directorio, listar directorio actual, editar /etc/passwd

while true; do
  echo "1. Crear un directorio"
  echo "2. Listar el directorio actual"
  echo "3. Editar el fichero /etc/passwd"
  echo "4. Salir"
  read -p "Elija una opción: " opcion

  case $opcion in
    1)
      read -p "Ingrese el nombre del directorio a crear: " dirname
      mkdir -p "$dirname"
      echo "Directorio '$dirname' creado."
      ;;
    2)
      ls -l
      ;;
    3)
      sudo nano /etc/passwd
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
