# Scripts SQL - Proyecto FRAMED

## Descripción

Esta carpeta contiene la estructura completa de la base de datos del proyecto **FRAMED (Fortalecimiento de la Regulación, Administración y Monitoreo de Establecimientos Farmacéuticos)** desarrollada para Oracle Database.

El modelo incluye la creación de tablas, restricciones, catálogos, componentes de apoyo y scripts complementarios para facilitar el despliegue y mantenimiento de la base de datos.

---

## Estructura de los scripts

| Archivo | Descripción |
|---------|-------------|
| `00_script_maestro_framed.sql` | Script completo utilizado como base del proyecto. |
| `01_creacion_tablas.sql` | Creación de todas las tablas del modelo de datos. |
| `02_constraints.sql` | Restricciones adicionales, relaciones y modificaciones posteriores a las tablas. |
| `03_catalogos.sql` | Inserción de catálogos y datos maestros del sistema. |
| `04_triggers.sql` | Triggers para auditoría, validaciones y automatización de procesos. |
| `05_procedimientos.sql` | Procedimientos almacenados para operaciones principales del sistema. |
| `06_vistas.sql` | Vistas para consultas, indicadores y reportes utilizados por Oracle APEX. |
| `07_datos_prueba.sql` | Datos de prueba para validar el funcionamiento de la base de datos. |
| `08_seguridad.sql` | Roles, permisos y configuración básica de seguridad. |

---

## Orden de ejecución

Se recomienda ejecutar los scripts en el siguiente orden:

1. `01_creacion_tablas.sql`
2. `02_constraints.sql`
3. `03_catalogos.sql`
4. `04_triggers.sql`
5. `05_procedimientos.sql`
6. `06_vistas.sql`
7. `07_datos_prueba.sql`
8. `08_seguridad.sql`

El archivo `00_script_maestro_framed.sql` se conserva como referencia del desarrollo original realizado para Oracle Database.

---

## Tecnologías

- Oracle Database
- SQL
- PL/SQL
- Oracle APEX

---

## Proyecto

**FRAMED**

Sistema para la gestión, trazabilidad y administración de establecimientos farmacéuticos del departamento de Antioquia, desarrollado como proyecto académico de ingeniería de software.
