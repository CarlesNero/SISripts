echo "dime num"
read num
if [ $num -gt 15 ];then
	echo "$num es mayor que 15"
elif [ $num -lt 15 ];then
	echo "$num es meno que 15"
else 
	echo "$num es 15"
fi

