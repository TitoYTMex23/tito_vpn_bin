#!/data/data/com.termux/files/usr/bin/bash

echo "🚀 TitoVPN Installer v2.0"
echo ""

# 1. Instalar compilador
echo "📦 Instalando compilador..."
pkg install shc upx -y

# 2. Descargar script
echo "📥 Descargando código fuente..."
curl -L https://raw.githubusercontent.com/TitoYTMex23/tito_vpn_bin/main/tito_vpn_source.sh -o tito_vpn.sh

# 3. Compilar EN EL DISPOSITIVO DEL USUARIO
echo "🔧 Compilando para esta arquitectura..."
shc -f tito_vpn.sh -o tito_vpn
upx --best tito_vpn

# 4. Hacer ejecutable
chmod +x tito_vpn

echo ""
echo "✅ INSTALACIÓN COMPLETA!"
echo "Ejecuta: ./tito_vpn"
