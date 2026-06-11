<h1 align="center">Joseph-privacy-kali</h1>

<p align="center">
  <b>Ghost-Kali Setup</b> - Integracion profesional de <b>Mullvad + Tor + Proxychains</b><br>
  para maxima privacidad y anonimato en Kali Linux. Un solo comando, todo el poder.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Kali-Linux-557C94?logo=kalilinux&logoColor=white">
  <img src="https://img.shields.io/badge/License-MIT-green.svg">
  <img src="https://img.shields.io/badge/Bash-Script-4EAA25?logo=gnubash&logoColor=white">
  <img src="https://img.shields.io/badge/version-1.0.0-blue.svg">
  <img src="https://img.shields.io/badge/status-active-success.svg">
</p>

---

## Que es?

**Joseph-privacy-kali** es un script todo-en-uno con menu interactivo que automatiza
la activacion de **Mullvad VPN**, **Tor** y **Proxychains** en Kali Linux.

Olvidate de configurar todo a mano: con un solo comando levantas un stack completo
de anonimato con **Kill Switch**, **rotacion de identidad Tor** y **test de fugas DNS**.

## Caracteristicas

| Funcion | Descripcion |
|---------|-------------|
| Automatizacion | Levanta Mullvad + Tor + Proxychains con un clic |
| Kill Switch | Corta internet si la VPN se cae (zero leaks) |
| Identidad Tor | Cambia tu IP de salida sin reiniciar |
| Test de seguridad | Verifica IP publica y fugas DNS |
| Menu interactivo | 7 modos en una sola interfaz limpia |

## Modelo de amenaza (Threat Model)

**Que protege:**
- Oculta tu IP real frente a sitios y servicios
- Cifra tu trafico (VPN) y lo enruta por la red Tor
- Bloquea fugas DNS y corta la red si la VPN cae

**Que NO hace:**
- No te hace 100% indetectable
- No protege contra errores de comportamiento (OPSEC) del usuario

## Requisitos

1. Kali Linux (o cualquier distro Debian-based)
2. Tor + proxychains4 + netcat + curl
3. Cuenta activa de Mullvad VPN (cada usuario usa la suya)

## Instalacion

    git clone https://github.com/JosephAprendiz-svg/Joseph-privacy-kali.git
    cd Joseph-privacy-kali
    sudo ./install.sh

El instalador hace backups automaticos de tus configs antes de tocar nada.

## Desinstalacion

    sudo ./uninstall.sh

## Uso

    sudo joseph-trio

| Opcion | Funcion |
|:------:|---------|
| 1 | Modo Privacidad - Solo Mullvad |
| 2 | Modo Anonimo Total - Mullvad + Tor + Proxychains |
| 3 | Nueva identidad Tor - Cambiar IP de salida |
| 4 | Kill Switch ON |
| 5 | Kill Switch OFF |
| 6 | Test de seguridad - IP + fugas DNS |
| 7 | Apagar todo |

## Ejemplos de uso anonimo

    proxychains4 nmap -sT -Pn objetivo.com
    proxychains4 curl https://check.torproject.org/api/ip

## Disclaimer

Esta herramienta es solo para fines educativos y pentesting autorizado.
El uso indebido es responsabilidad exclusiva del usuario final.

## Licencia

Distribuido bajo licencia MIT. Ver LICENSE para mas detalles.

Hecho por JosephAprendiz-svg
