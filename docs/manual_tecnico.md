# Manual Técnico

## Proyecto

**FRAMED**  
Fortalecimiento de la Regulación, Administración y Monitoreo de Establecimientos Farmacéuticos

---

# 1. Introducción

El presente manual técnico describe la arquitectura, los componentes, la estructura de la base de datos y las tecnologías utilizadas en el desarrollo del sistema FRAMED. Su objetivo es facilitar el mantenimiento, la evolución y la administración técnica del proyecto, proporcionando una visión integral de su funcionamiento.

---

# 2. Objetivo

Documentar los aspectos técnicos del sistema con el fin de facilitar su instalación, mantenimiento, actualización y futuras ampliaciones por parte del equipo de desarrollo.

---

# 3. Tecnologías Utilizadas

| Tecnología | Descripción |
|------------|-------------|
| Oracle Database 23ai | Sistema gestor de base de datos relacional |
| Oracle APEX 24 | Plataforma de desarrollo de aplicaciones web |
| SQL | Lenguaje para definición y manipulación de datos |
| PL/SQL | Lenguaje para la implementación de lógica de negocio |
| Git | Sistema de control de versiones |
| GitHub | Plataforma para el almacenamiento y gestión del repositorio |

---

# 4. Arquitectura del Sistema

El sistema FRAMED implementa una arquitectura de tres capas:

## Capa de Presentación

Corresponde a la interfaz desarrollada en Oracle APEX, mediante la cual los usuarios interactúan con el sistema.

Funciones principales:

- Registro de establecimientos.
- Consulta de información.
- Gestión de reportes.
- Registro de novedades.
- Administración de catálogos.

---

## Capa de Lógica de Negocio

Implementada mediante procesos de Oracle APEX y componentes de Oracle Database.

Incluye:

- Procedimientos almacenados.
- Triggers.
- Restricciones.
- Validaciones.
- Vistas.

Esta capa garantiza el cumplimiento de las reglas del negocio y la integridad de la información.

---

## Capa de Datos

Implementada sobre Oracle Database.

Almacena la información relacionada con:

- Establecimientos.
- Reportantes.
- Reportes.
- Novedades.
- Municipios.
- Servicios.
- Catálogos del sistema.

---

# 5. Estructura del Repositorio

```text
FRAMED/
│
├── docs/
├── sql/
├── README.md
├── CHANGELOG.md
├── LICENSE
└── .gitignore
```

---

# 6. Base de Datos

La base de datos está compuesta por las siguientes entidades principales:

- DT
- ESTABLECIMIENTO
- ESTABLECIMIENTO_SERVICIO
- ESTADO
- ESTADO_REPORTE
- MUNICIPIOS
- NOVEDADES
- REPORTANTE
- REPORTES
- SERVICIOS
- TIPO_NOVEDAD

Las relaciones entre estas entidades se implementan mediante claves primarias y claves foráneas, garantizando la integridad referencial.

---

# 7. Scripts SQL

La carpeta **sql/** contiene los scripts necesarios para crear y configurar la base de datos.

| Archivo | Función |
|----------|---------|
| 01_creacion_tablas.sql | Creación de tablas |
| 02_constraints.sql | Restricciones y llaves foráneas |
| 03_catalogos.sql | Datos iniciales |
| 04_triggers.sql | Triggers |
| 05_procedimientos.sql | Procedimientos almacenados |
| 06_vistas.sql | Vistas |
| 07_datos_prueba.sql | Datos de prueba |
| 08_seguridad.sql | Roles y permisos |

---

# 8. Seguridad

El sistema implementa mecanismos básicos para proteger la información:

- Autenticación de usuarios.
- Restricción de acceso según perfiles.
- Integridad referencial.
- Validación de datos.
- Control de permisos mediante roles.

---

# 9. Mantenimiento

Para garantizar el correcto funcionamiento del sistema se recomienda:

- Mantener actualizado el repositorio GitHub.
- Documentar cada modificación realizada.
- Ejecutar pruebas antes de publicar cambios.
- Realizar copias de seguridad periódicas de la base de datos.
- Verificar la integridad de los datos después de cada actualización.

---

# 10. Control de Versiones

El proyecto utiliza Git y GitHub para gestionar el historial de cambios.

Cada modificación se registra mediante commits descriptivos que permiten identificar la evolución del sistema y recuperar versiones anteriores cuando sea necesario.

---

# 11. Recomendaciones Técnicas

- Mantener la nomenclatura establecida para tablas, columnas y objetos de base de datos.
- Evitar duplicidad de código.
- Documentar nuevas funcionalidades.
- Mantener la consistencia entre la documentación y la implementación.
- Aplicar buenas prácticas de desarrollo y revisión antes de integrar cambios.

---

# 12. Conclusiones

El presente manual técnico proporciona una visión general de la estructura y funcionamiento del sistema FRAMED. La documentación aquí presentada constituye una guía para el mantenimiento y evolución del proyecto, facilitando el trabajo colaborativo y asegurando la continuidad del desarrollo bajo criterios de calidad y buenas prácticas de ingeniería de software.
