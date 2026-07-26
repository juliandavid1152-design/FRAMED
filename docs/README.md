# FRAMED

**Fortalecimiento de la Regulación, Administración y Monitoreo de Establecimientos Farmacéuticos**

Proyecto académico desarrollado como propuesta tecnológica para apoyar los procesos de inspección, vigilancia y control del Programa de Medicamentos de la Secretaría Seccional de Salud y Protección Social de Antioquia.

---

# Descripción

FRAMED es un sistema de información diseñado para centralizar la gestión de los establecimientos farmacéuticos del departamento de Antioquia. La solución permite registrar establecimientos, administrar reportes de novedades, gestionar catálogos de apoyo y mantener la trazabilidad de la información mediante una base de datos relacional desarrollada sobre Oracle Database.

El proyecto surge como respuesta a la necesidad de reducir la gestión manual de información distribuida en hojas de cálculo, correos electrónicos y archivos independientes, mejorando la disponibilidad, confiabilidad y organización de los datos.

---

# Objetivo General

Diseñar una solución tecnológica que permita fortalecer la administración y el monitoreo de los establecimientos farmacéuticos mediante la centralización de la información y la optimización de los procesos de registro, consulta y seguimiento.

---

# Objetivos Específicos

- Centralizar la información de los establecimientos farmacéuticos.
- Gestionar reportes y novedades.
- Implementar una base de datos relacional con integridad referencial.
- Facilitar la consulta de información mediante vistas y procedimientos.
- Documentar técnica y funcionalmente el proyecto.

---

# Tecnologías Utilizadas

| Tecnología | Uso |
|------------|-----|
| Oracle Database 23ai | Base de datos |
| Oracle APEX 24 | Desarrollo de la aplicación |
| SQL | Definición y manipulación de datos |
| PL/SQL | Lógica de negocio |
| Git | Control de versiones |
| GitHub | Gestión del repositorio |

---

# Estructura del Proyecto

```text
FRAMED/
│
├── docs/
│   ├── arquitectura.md
│   ├── modelo_datos.md
│   ├── diccionario_datos.md
│   ├── requerimientos.md
│   ├── casos_uso.md
│   ├── manual_tecnico.md
│   ├── manual_usuario.md
│   ├── manual_instalacion.md
│   ├── plan_pruebas.md
│   ├── matriz_trazabilidad.md
│   ├── roadmap.md
│   ├── contribucion.md
│   └── 01_vision_proyecto.md
│
├── sql/
│   ├── 01_creacion_tablas.sql
│   ├── 02_constraints.sql
│   ├── 03_catalogos.sql
│   ├── 04_triggers.sql
│   ├── 05_procedimientos.sql
│   ├── 06_vistas.sql
│   ├── 07_datos_prueba.sql
│   └── 08_seguridad.sql
│
├── CHANGELOG.md
├── LICENSE
├── README.md
└── .gitignore
```

---

# Componentes del Sistema

El proyecto está conformado por los siguientes módulos:

- Gestión de establecimientos.
- Gestión de reportantes.
- Gestión de reportes.
- Gestión de novedades.
- Administración de municipios.
- Administración de estados.
- Administración de servicios farmacéuticos.
- Administración de tipos de novedad.
- Consultas.
- Historial de información.

---

# Documentación

La carpeta **docs/** contiene la documentación técnica y funcional del proyecto:

- Arquitectura del software.
- Modelo de datos.
- Diccionario de datos.
- Requerimientos.
- Casos de uso.
- Manual técnico.
- Manual de usuario.
- Manual de instalación.
- Plan de pruebas.
- Matriz de trazabilidad.
- Roadmap.
- Guía de contribución.

---

# Base de Datos

La carpeta **sql/** contiene todos los scripts necesarios para crear la estructura de la base de datos:

1. Creación de tablas.
2. Restricciones.
3. Catálogos.
4. Triggers.
5. Procedimientos almacenados.
6. Vistas.
7. Datos de prueba.
8. Seguridad.

---

# Control de Versiones

El proyecto utiliza Git y GitHub para mantener el historial de cambios y facilitar el trabajo colaborativo mediante un repositorio centralizado.

---

# Autores

Proyecto desarrollado por el equipo de trabajo del curso como parte de la propuesta FRAMED.

---

# Licencia

Este proyecto tiene fines académicos y educativos. Su contenido puede utilizarse como referencia respetando la autoría y el contexto para el cual fue desarrollado.
