# Tarea 30 - Proyecto Docker

Proyecto web en PHP con conexión a MariaDB usando Docker Compose.

Incluye:
- Contenedor web (PHP + Apache + Xdebug)
- Contenedor de base de datos MariaDB
- Script SQL de inicialización
- Configuración para depuración con Xdebug

## Cómo ejecutar el proyecto

1. Clonar el repositorio
2. Ejecutar:

   docker compose up -d

3. Acceder en el navegador:

   http://localhost:8888

4. Para detener los contenedores:

   docker compose down

Este entorno permite trabajar de forma reproducible y facilita la depuración con PhpStorm y Xdebug.
