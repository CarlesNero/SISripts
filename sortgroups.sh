echo "Grupos del sistema ordenados alfabéticamente (de mayor a menor):"
cut -d: -f1 /etc/group | sort -r
