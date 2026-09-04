#!/usr/bin/env bash
set -e

echo "=================================================="
echo "  Iniciando configuración inicial del espacio setup"
echo "=================================================="

# 1. Repositorio: app (Portal Académico)
if [ ! -d "app/.git" ]; then
  if [ -d "app" ] && [ -f "app/package.json" ]; then
    echo "Carpeta 'app' detectada localmente."
  else
    echo "Clonando repositorio app (portal-academico)..."
    git clone https://github.com/enmaorozco/portal-academico.git app
  fi
else
  echo "Repositorio 'app' ya configurado y versionado."
fi

# 2. Espacio para clonar futuros repositorios adicionales:
# if [ ! -d "servicio-auth/.git" ]; then
#   echo "Clonando servicio-auth..."
#   git clone https://github.com/enmaorozco/servicio-auth.git servicio-auth
# fi

# 3. Instalación de dependencias
if [ -d "app" ]; then
  echo "Instalando dependencias de app..."
  (cd app && npm install)
fi

echo "=================================================="
echo "✓ Espacio de trabajo setup configurado con éxito!"
echo "=================================================="

