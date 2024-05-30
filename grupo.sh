echo "Dime los grupos"

read grupo

if grep -q $grupo /etc/group;then
echo "$grupo existe"
else
echo "$grupo no existe"
fi
