echo "Usuarios del sistema ordenados alfabéticamente:"  

cut -d: -f1 /etc/passwd | sort 
