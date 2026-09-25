#!/usr/bin/env bash
set -e

echo "=================================================="
echo "  Iniciando configuración inicial del espacio setup"
echo "=================================================="

cd "$(dirname "$0")"

setup_repo() {
  local name="$1"
  local url="$2"

  if [ ! -d "$name/.git" ]; then
    if [ -e "$name" ]; then
      echo "Error: '$name' existe, pero no es un repositorio Git." >&2
      return 1
    fi
    echo "Clonando $name..."
    git clone "$url" "$name"
  fi

  echo "Instalando dependencias de $name..."
  (cd "$name" && npm install)
}

setup_repo portal-academico https://github.com/enmaorozco/portal-academico.git
setup_repo inventario-ventas https://github.com/enmaorozco/inventario-ventas.git
setup_repo licencias-municipales https://github.com/enmaorozco/licencias-municipales.git
setup_repo doctor-orientador https://github.com/enmaorozco/doctor-orientador.git

echo "=================================================="
echo "✓ Espacio de trabajo setup configurado con éxito!"
echo "=================================================="

