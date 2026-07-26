# Manual de Instalación

## 1. Introducción

Este documento describe el procedimiento para instalar y configurar el proyecto FRAMED en un entorno Oracle.

---

# 2. Requisitos de Software

Para la instalación del sistema se requiere:

- Oracle Database 23ai o superior.
- Oracle APEX 24 o superior.
- Navegador web compatible.
- Git.
- GitHub.

---

# 3. Clonar el Repositorio

```bash
git clone https://github.com/USUARIO/FRAMED.git
```

---

# 4. Crear la Base de Datos

Ejecutar los scripts contenidos en la carpeta **sql** respetando el siguiente orden:

1. 01_creacion_tablas.sql
2. 02_constraints.sql
3. 03_catalogos.sql
4. 04_triggers.sql
5. 05_procedimientos.sql
6. 06_vistas.sql
7. 07_datos_prueba.sql
8. 08_seguridad.sql

---

# 5. Importar Oracle APEX

Importar el archivo exportado de la aplicación mediante el asistente de Oracle APEX.

---

# 6. Verificación

Comprobar:

- Creación correcta de tablas.
- Restricciones.
- Procedimientos.
- Triggers.
- Vistas.
- Datos iniciales.

---

# 7. Puesta en Marcha

Acceder mediante navegador web e iniciar sesión con un usuario autorizado.

---

# 8. Mantenimiento

Se recomienda realizar respaldos periódicos de la base de datos y mantener actualizado el repositorio GitHub con cada nueva versión del proyecto.
