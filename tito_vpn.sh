#!/data/data/com.termux/files/usr/bin/bash

clear
echo "🇨🇺 TitoVPN Datos/Wifi Gratis"
echo "🔐 Cargando cliente seguro..."
sleep 1

# Asegurar curl
if ! command -v curl >/dev/null 2>&1; then
  pkg install curl -y
fi

# Ejecutar script real desde GitHub
bash <(curl -s https://raw.githubusercontent.com/TitoYTMex23/tito_vpn_bin/main/.core)
