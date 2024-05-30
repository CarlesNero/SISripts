fecha=`date|cut -d' ' -f2`

if [ $fecha = 17 ]; then
	echo "Es día 17"
else
	echo "Hoy es día $fecha "
fi
