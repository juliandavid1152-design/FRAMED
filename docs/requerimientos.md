# Requerimientos del Sistema

## 1. Introducción

El presente documento describe los requerimientos funcionales y no funcionales del sistema FRAMED. Estos requerimientos establecen el comportamiento esperado de la aplicación y constituyen la base para el diseño, desarrollo y validación del sistema.

El objetivo principal de FRAMED es fortalecer la gestión de la información de los establecimientos farmacéuticos del departamento de Antioquia, centralizando el registro de establecimientos, reportes y novedades en una plataforma única.

---

# 2. Alcance

El sistema permitirá administrar la información relacionada con:

- Establecimientos farmacéuticos.
- Directores técnicos.
- Reportantes.
- Servicios farmacéuticos.
- Reportes.
- Novedades.
- Catálogos del sistema.
- Consultas e historial de información.

---

# 3. Requerimientos Funcionales

## RF-01

El sistema debe permitir registrar establecimientos farmacéuticos.

---

## RF-02

El sistema debe permitir consultar establecimientos registrados.

---

## RF-03

El sistema debe permitir actualizar la información de un establecimiento.

---

## RF-04

El sistema debe permitir registrar reportantes.

---

## RF-05

El sistema debe permitir registrar reportes asociados a un establecimiento.

---

## RF-06

El sistema debe permitir registrar novedades sobre un establecimiento.

---

## RF-07

El sistema debe mantener el historial de novedades registradas.

---

## RF-08

El sistema debe administrar los estados de los reportes.

---

## RF-09

El sistema debe administrar los tipos de novedades.

---

## RF-10

El sistema debe administrar los servicios farmacéuticos.

---

## RF-11

El sistema debe permitir realizar búsquedas por nombre, NIT o municipio.

---

## RF-12

El sistema debe permitir consultar el historial de reportes de cada establecimiento.

---

## RF-13

El sistema debe validar la información obligatoria antes de guardar un registro.

---

## RF-14

El sistema debe impedir la duplicidad de registros mediante restricciones de integridad.

---

## RF-15

El sistema debe generar información para consulta mediante vistas de base de datos.

---

# 4. Requerimientos No Funcionales

## RNF-01

La aplicación deberá desarrollarse utilizando Oracle APEX.

---

## RNF-02

La base de datos deberá implementarse en Oracle Database.

---

## RNF-03

El sistema deberá garantizar la integridad referencial mediante claves primarias y foráneas.

---

## RNF-04

La información deberá almacenarse de manera persistente.

---

## RNF-05

El sistema deberá contar con mecanismos básicos de autenticación y autorización.

---

## RNF-06

La aplicación deberá ofrecer una interfaz intuitiva y de fácil utilización.

---

## RNF-07

El sistema deberá permitir futuras ampliaciones sin afectar la arquitectura existente.

---

## RNF-08

El repositorio del proyecto deberá mantenerse mediante control de versiones utilizando Git y GitHub.

---

# 5. Restricciones

- Oracle Database como gestor de base de datos.
- Oracle APEX como plataforma de desarrollo.
- Modelo relacional normalizado.
- Desarrollo bajo buenas prácticas de ingeniería de software.

---

# 6. Conclusiones

Los requerimientos definidos constituyen la base funcional del proyecto FRAMED y orientan el desarrollo de la solución propuesta, garantizando que las funcionalidades implementadas respondan a las necesidades del Programa de Medicamentos de la Secretaría Seccional de Salud y Protección Social de Antioquia.
