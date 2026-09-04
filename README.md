# 🛠️ Workspace Setup (Orquestador de Entorno de Desarrollo)

Este repositorio contiene la configuración base para el contenedor de desarrollo (**Dev Container**) y el espacio de trabajo multi-raíz de VS Code (**Multi-Root Workspace**). 

Su propósito es orquestar la inicialización del entorno, clonando los repositorios de las aplicaciones y servicios correspondientes (como `app` y futuros servicios).

---

## 📂 Arquitectura de Repositorios

- **`setup` (este repositorio)**:
  - Configuración del Dev Container (`.devcontainer/devcontainer.json`).
  - Espacio de trabajo de VS Code (`workspace.code-workspace`).
  - Script de clonación e inicialización (`setup.sh`).
  - Scripts globales de conveniencia (`npm run dev`, `npm run build`).
- **`app/` (Repositorio independiente: [portal-academico](https://github.com/enmaorozco/portal-academico))**:
  - Aplicación completa Next.js 15, Tailwind CSS y SQLite.
  - Se clona dentro de la carpeta `app/` durante la configuración inicial y cuenta con su propio control de versiones Git.

---

## 🚀 Inicialización y Clonación

Al abrir este entorno por primera vez en Dev Containers (o localmente), el script [`setup.sh`](./setup.sh) se ejecuta automáticamente para clonar los repositorios hijos:

```bash
npm run setup
# o directamente:
bash setup.sh
```

### Clonación de Repositorios Adicionales (Futuros)

Para agregar nuevos repositorios al espacio de trabajo:
1. Añade la orden de clonación correspondiente dentro de [`setup.sh`](./setup.sh).
2. Añade la nueva carpeta a la lista de ignorados en [`.gitignore`](./.gitignore).
3. Añade la carpeta a `workspace.code-workspace` para visualizarla en VS Code.

---

## 💻 Desarrollo

Desde la raíz puedes ejecutar comandos delegados a la aplicación:

| Comando | Acción |
|---|---|
| `npm run setup` | Clona y configura los repositorios (`app`, etc.) |
| `npm run dev` | Inicia el servidor de desarrollo de `app` en el puerto 3000 |
| `npm run build` | Compila la aplicación para producción |
| `npm run start` | Inicia el servidor en modo producción |
