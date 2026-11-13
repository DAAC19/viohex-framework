#!/usr/bin/env bash
# Levanta DVWA en un contenedor desechable publicado solo en la interfaz local.
# Al detenerlo con Ctrl+C, --rm borra el contenedor y su base de datos.
set -euo pipefail

if ! command -v docker >/dev/null; then
    echo "Docker no está instalado: sudo apt install docker.io -y" >&2
    exit 1
fi

sudo systemctl start docker
echo "DVWA en http://127.0.0.1:8080"
sudo docker run --rm -it -p 127.0.0.1:8080:80 vulnerables/web-dvwa
