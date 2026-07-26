# Arquitectura del Proyecto FRAMED

## Arquitectura General

FRAMED es un sistema web desarrollado sobre Oracle APEX y Oracle Database para la gestión integral de establecimientos farmacéuticos del departamento de Antioquia.

La arquitectura sigue un modelo de tres capas:

- Presentación
- Lógica de negocio
- Base de datos

---

## Capa de Presentación

Implementada mediante Oracle APEX.

Responsabilidades:

- Registro de establecimientos.
- Consulta de información.
- Registro de reportes.
- Gestión de novedades.
- Panel administrativo.

---

## Lógica de Negocio

Implementada mediante:

- Procesos APEX
- Procedimientos almacenados
- Triggers
- Restricciones de integridad

Responsabilidades:

- Validaciones.
- Auditoría.
- Reglas del negocio.
- Integridad de la información.

---

## Base de Datos

Implementada sobre Oracle Database.

Componentes principales:

- Tablas
- Vistas
- Procedimientos
- Triggers
- Constraints

---

## Tecnologías

- Oracle APEX
- Oracle Database
- SQL
- PL/SQL
- GitHub
