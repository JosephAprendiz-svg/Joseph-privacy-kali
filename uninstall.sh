#!/bin/bash
# Joseph-privacy-kali uninstaller
GREEN='\033[0;32m'; RED='\033[0;31m'; NC='\033[0m'

if [ "$EUID" -ne 0 ]; then
    echo -e "${RED}[X] Ejecuta con sudo o como root.${NC}"
    exit 1
fi

echo -e "${GREEN}[*] Eliminando joseph-trio...${NC}"
rm -f /usr/local/bin/joseph-trio

echo -e "${GREEN}[OK] Desinstalado. Tus backups en /etc/ NO se tocaron.${NC}"
