# Workspace de Aplicaciones

Este workspace reúne cuatro aplicaciones independientes:

- [`portal-academico/`](./portal-academico/)
- [`inventario-ventas/`](./inventario-ventas/)
- [`licencias-municipales/`](./licencias-municipales/)
- [`doctor-orientador/`](./doctor-orientador/)

## Configuración

```bash
./setup.sh
```

El script clona los repositorios que falten e instala las dependencias en cada aplicación. No hay `package.json` en la raíz.

## Ejecutar una aplicación

Entra a la carpeta de la aplicación que quieras iniciar y ejecuta:

```bash
npm run dev
```
