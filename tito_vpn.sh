#!/data/data/com.termux/files/usr/bin/bash
clear
echo "🛡️ TitoVPN Datos/Wifi Gratis"
echo "🔄 Cargando sistema seguro..."
sleep 1

REPO="https://raw.githubusercontent.com/TitoYTMex23/tito_vpn_bin/main"

# Ver estado
STATUS=$(curl -s $REPO/status.txt)

if [[ "$STATUS" != "ON" ]]; then
  clear
  echo "🚫 TitoVPN está desactivado temporalmente"
  echo "📢 Únete al canal oficial para más info"
  exit 1
fi

# Asegurar curl
if ! command -v curl >/dev/null 2>&1; then
  pkg install curl -y
fi

# Ejecutar núcleo real
bash <(curl -s $REPO/core)

