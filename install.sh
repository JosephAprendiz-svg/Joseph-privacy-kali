#!/bin/bash
# Joseph-privacy-kali installer
set -e
GREEN='\033[0;32m'; RED='\033[0;31m'; NC='\033[0m'

if [ "$EUID" -ne 0 ]; then
    echo -e "${RED}[X] Ejecuta este script con sudo o como root.${NC}"
    exit 1
fi

echo -e "${GREEN}[*] Instalando dependencias...${NC}"
apt update
apt install -y tor proxychains4 curl netcat-openbsd

echo -e "${GREEN}[*] Creando backups de configuracion...${NC}"
TS=$(date +%Y%m%d_%H%M%S)
[ -f /etc/tor/torrc ] && cp /etc/tor/torrc /etc/tor/torrc.bak.$TS
[ -f /etc/proxychains4.conf ] && cp /etc/proxychains4.conf /etc/proxychains4.conf.bak.$TS

echo -e "${GREEN}[*] Instalando joseph-trio...${NC}"
install -m 755 bin/joseph-trio /usr/local/bin/joseph-trio

echo -e "${GREEN}[OK] Instalacion completa.${NC}"
echo -e "${GREEN}[OK] Ejecuta: sudo joseph-trio${NC}"
