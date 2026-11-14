#!/usr/bin/env bash
# Levanta DVWA en un contenedor local para usarlo como objetivo de práctica con OWASP ZAP.
set -euo pipefail

if ! command -v docker >/dev/null; then
  echo "Docker no está instalado o no está en el PATH." >&2
  exit 1
fi

sudo systemctl start docker
echo "DVWA en http://127.0.0.1:8080  (proxy de ZAP en 127.0.0.1:8090)"
sudo docker run --rm -it -p 127.0.0.1:8080:80 vulnerables/web-dvwa
