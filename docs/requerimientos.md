# Requerimientos del Sistema

## 1. Introducción

El presente documento define los requerimientos funcionales y no funcionales del sistema FRAMED (Fortalecimiento de la Regulación, Administración y Monitoreo de Establecimientos Farmacéuticos). Estos requerimientos constituyen la base para el diseño, desarrollo, implementación y validación del sistema, asegurando que la solución responda a las necesidades del Programa de Medicamentos de la Secretaría Seccional de Salud y Protección Social de Antioquia.

---

# 2. Objetivo

Establecer las funcionalidades y características técnicas que debe cumplir el sistema para apoyar la gestión de establecimientos farmacéuticos, el registro de reportes de novedades y la administración de la información asociada.

---

# 3. Alcance

El sistema contempla el desarrollo de los siguientes módulos:

- Gestión de establecimientos farmacéuticos.
- Gestión de reportantes.
- Gestión de reportes.
- Gestión de novedades.
- Administración de servicios farmacéuticos.
- Administración de municipios.
- Administración de estados.
- Administración de tipos de novedad.
- Consulta de información.
- Historial de cambios.

---

# 4. Requerimientos Funcionales

| Código | Requerimiento |
|---------|---------------|
| RF-01 | Registrar establecimientos farmacéuticos. |
| RF-02 | Consultar establecimientos registrados. |
| RF-03 | Actualizar la información de un establecimiento. |
| RF-04 | Registrar reportantes. |
| RF-05 | Consultar reportantes. |
| RF-06 | Registrar reportes asociados a un establecimiento. |
| RF-07 | Consultar reportes registrados. |
| RF-08 | Registrar novedades relacionadas con un establecimiento. |
| RF-09 | Consultar el historial de novedades. |
| RF-10 | Administrar los servicios farmacéuticos. |
| RF-11 | Administrar los municipios. |
| RF-12 | Administrar los estados de los establecimientos. |
| RF-13 | Administrar los estados de los reportes. |
| RF-14 | Administrar los tipos de novedad. |
| RF-15 | Validar la información obligatoria antes del registro. |
| RF-16 | Evitar registros duplicados mediante restricciones de integridad. |
| RF-17 | Permitir búsquedas por nombre, NIT o municipio. |
| RF-18 | Mantener la trazabilidad de los cambios realizados en los reportes. |
| RF-19 | Consultar la información mediante vistas de base de datos. |
| RF-20 | Mantener la integridad referencial entre todas las entidades del sistema. |

---

# 5. Requerimientos No Funcionales

| Código | Requerimiento |
|---------|---------------|
| RNF-01 | El sistema deberá desarrollarse utilizando Oracle APEX. |
| RNF-02 | La base de datos deberá implementarse sobre Oracle Database. |
| RNF-03 | El sistema deberá garantizar la integridad de la información mediante claves primarias y foráneas. |
| RNF-04 | La información deberá almacenarse de forma persistente. |
| RNF-05 | El sistema deberá permitir autenticación de usuarios. |
| RNF-06 | La interfaz deberá ser intuitiva y de fácil utilización. |
| RNF-07 | El sistema deberá permitir futuras ampliaciones sin modificar la arquitectura principal. |
| RNF-08 | El código fuente deberá mantenerse mediante Git y GitHub. |
| RNF-09 | La aplicación deberá facilitar el mantenimiento mediante una estructura modular. |
| RNF-10 | La documentación técnica deberá mantenerse actualizada durante el desarrollo del proyecto. |

---

# 6. Restricciones

Durante el desarrollo del proyecto se establecen las siguientes restricciones:

- Uso de Oracle Database como sistema gestor de base de datos.
- Desarrollo de la interfaz mediante Oracle APEX.
- Implementación de un modelo relacional normalizado.
- Aplicación de buenas prácticas de ingeniería de software.
- Uso de GitHub como herramienta de control de versiones.

---

# 7. Priorización de Requerimientos

Los requerimientos funcionales se consideran de alta prioridad debido a que representan las funcionalidades esenciales del sistema.

Los requerimientos no funcionales garantizan la calidad, mantenibilidad, seguridad y escalabilidad de la solución propuesta.

---

# 8. Criterios de Aceptación

Cada requerimiento se considerará cumplido cuando:

- La funcionalidad opere correctamente.
- La información se almacene sin inconsistencias.
- Se respeten las reglas de negocio definidas.
- El resultado obtenido coincida con el comportamiento esperado.

---

# 9. Conclusiones

Los requerimientos definidos constituyen la base para el desarrollo del sistema FRAMED y orientan las actividades de diseño, implementación y pruebas. Su adecuada definición facilita la construcción de una solución organizada, mantenible y alineada con las necesidades del Programa de Medicamentos.
