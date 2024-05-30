
mostrar_menu() {
    echo "Seleccione una herramienta de monitorización:"
    echo "1. top"
    echo "2. ps"
    echo "3. df"
    echo "4. who"
    echo "5. Salir"
}

ejecutar_herramienta() {
    case $opcion in
        1)
            top
            ;;
        2)
            ps aux
            ;;
        3)
            df -h
            ;;
        4)
            who
            ;;
        5)
            echo "Saliendo del programa."
            exit 0
            ;;
        *)
            echo "Opción no válida."
            ;;
    esac
}

while true; do
    mostrar_menu
    read -p "Ingrese el número de la herramienta a ejecutar (1-5): " opcion

    if ! [[ "$opcion" =~ ^[1-5]$ ]]; then
        echo "Por favor, ingrese un número válido (1-5)."
        continue
    fi

    ejecutar_herramienta $opcion
done
