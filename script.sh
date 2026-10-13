# 1. Crea directorio del proyecto y entra en el

mkdir mi-proyecto
cd mi-proyecto

# 2. Crea archivo clima.sh (Usamos 'cat' para ingresar el codigo dentro de clima.sh)

cat << 'EOF' > clima.sh
#!/bin/bash

echo "¿Qué ciudad quieres consultar?"
read ciudad

echo "Buscando el clima para: $ciudad..."
echo "--------------------------------------"

curl -s "wttr.in/${ciudad}?m"
EOF

# 3. Damos permisos al script

chmod +x clima.sh

# 4. Lo ejecutamos

./clima.sh

