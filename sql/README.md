# Scripts SQL - FRAMED

## Descripción

La carpeta **sql/** contiene los scripts necesarios para crear y configurar la base de datos del proyecto **FRAMED (Fortalecimiento de la Regulación, Administración y Monitoreo de Establecimientos Farmacéuticos)**.

Los archivos están organizados en el orden en que deben ejecutarse para garantizar la correcta creación de la estructura de la base de datos, las relaciones entre tablas, los datos iniciales y los componentes de apoyo.

---

# Estructura de los Scripts

| Archivo | Descripción |
|----------|-------------|
| 01_creacion_tablas.sql | Crea las tablas principales del sistema. |
| 02_constraints.sql | Implementa las claves primarias, claves foráneas y restricciones de integridad. |
| 03_catalogos.sql | Inserta la información inicial de los catálogos del sistema. |
| 04_triggers.sql | Implementa los triggers para automatizar procesos y validaciones. |
| 05_procedimientos.sql | Contiene los procedimientos almacenados utilizados por la aplicación. |
| 06_vistas.sql | Crea las vistas utilizadas para consultas y reportes. |
| 07_datos_prueba.sql | Inserta registros de prueba para validar el funcionamiento del sistema. |
| 08_seguridad.sql | Configura los roles y permisos de acceso a la base de datos. |

---

# Orden de Ejecución

Los scripts deben ejecutarse en el siguiente orden:

1. 01_creacion_tablas.sql
2. 02_constraints.sql
3. 03_catalogos.sql
4. 04_triggers.sql
5. 05_procedimientos.sql
6. 06_vistas.sql
7. 07_datos_prueba.sql
8. 08_seguridad.sql

---

# Objetivo

La estructura de esta carpeta facilita la creación y configuración de la base de datos del proyecto, permitiendo que el proceso de instalación sea organizado, reproducible y sencillo de mantener.

---

# Observaciones

Los scripts fueron desarrollados para Oracle Database y hacen parte de la documentación técnica del proyecto FRAMED. Cualquier modificación a la estructura de la base de datos deberá reflejarse tanto en estos archivos como en la documentación asociada.
