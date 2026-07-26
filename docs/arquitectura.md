# Arquitectura del Software FRAMED

## 1. Introducción

FRAMED (Fortalecimiento de la Regulación, Administración y Monitoreo de Establecimientos) es un sistema de información diseñado para apoyar los procesos de inspección, vigilancia y control desarrollados por el Programa de Medicamentos de la Secretaría Seccional de Salud y Protección Social de Antioquia. Su propósito es centralizar la información relacionada con los establecimientos farmacéuticos del departamento, facilitando el registro de novedades, la consulta de antecedentes y la generación de información confiable para apoyar la toma de decisiones.

La arquitectura del sistema fue diseñada bajo criterios de simplicidad, escalabilidad y mantenibilidad, utilizando Oracle APEX como plataforma de desarrollo y Oracle Database como gestor de base de datos. Esta combinación permite construir una aplicación web segura, con bajo costo de mantenimiento y una integración nativa entre la lógica de negocio y el almacenamiento de la información.

---

# 2. Objetivos de la Arquitectura

La arquitectura del sistema busca cumplir los siguientes objetivos:

- Centralizar la información de los establecimientos farmacéuticos.
- Garantizar la integridad y consistencia de los datos.
- Facilitar el mantenimiento y la evolución del sistema.
- Separar claramente la presentación, la lógica de negocio y el almacenamiento de la información.
- Permitir el crecimiento del sistema mediante la incorporación de nuevos módulos sin afectar los existentes.
- Brindar una plataforma confiable para el seguimiento de reportes y novedades.

---

# 3. Arquitectura General

FRAMED implementa una arquitectura de tres capas, ampliamente utilizada en aplicaciones empresariales.

## Capa de presentación

Corresponde a la interfaz web desarrollada mediante Oracle APEX. Esta capa permite la interacción entre los usuarios y el sistema mediante formularios, reportes, consultas y paneles de información.

Entre sus principales funciones se encuentran:

- Registro de establecimientos.
- Consulta de información.
- Gestión de reportes.
- Registro de novedades.
- Administración de catálogos.
- Visualización de indicadores.

---

## Capa de lógica de negocio

La lógica de negocio concentra las reglas que gobiernan el funcionamiento del sistema. Se implementa mediante procesos de Oracle APEX y componentes de Oracle Database, tales como procedimientos almacenados, vistas, restricciones y triggers.

Esta capa es responsable de:

- Validar la información ingresada por los usuarios.
- Garantizar el cumplimiento de las reglas del negocio.
- Ejecutar operaciones sobre la base de datos.
- Mantener la integridad de la información.
- Automatizar procesos repetitivos.

---

## Capa de datos

La información es almacenada en Oracle Database mediante un modelo relacional normalizado.

Las principales entidades del sistema son:

- Establecimientos.
- Municipios.
- Directores técnicos.
- Servicios farmacéuticos.
- Reportantes.
- Reportes.
- Novedades.
- Tipos de novedad.
- Estados del sistema.

Esta capa garantiza la persistencia de la información y el mantenimiento de las relaciones entre las entidades.

---

# 4. Componentes Principales

La solución se organiza en módulos funcionales independientes:

## Gestión de establecimientos

Permite registrar, consultar y actualizar la información de los establecimientos farmacéuticos.

## Gestión de reportantes

Administra la información de las personas responsables del envío de reportes.

## Gestión de reportes

Controla el registro y seguimiento de los reportes generados por los establecimientos.

## Gestión de novedades

Permite registrar las novedades asociadas a cada establecimiento y mantener un historial de los cambios reportados.

## Administración de catálogos

Gestiona la información de apoyo utilizada por el sistema, como municipios, estados, tipos de novedad y servicios.

---

# 5. Tecnologías Utilizadas

Las tecnologías seleccionadas fueron elegidas por su integración y estabilidad para aplicaciones institucionales.

| Tecnología | Función |
|------------|---------|
| Oracle APEX | Desarrollo de la aplicación web |
| Oracle Database | Gestión de la base de datos |
| SQL | Manipulación de datos |
| PL/SQL | Implementación de lógica de negocio |
| Git | Control de versiones |
| GitHub | Gestión del repositorio y documentación |

---

# 6. Seguridad

La arquitectura contempla mecanismos básicos de seguridad para proteger la información del sistema.

Entre ellos se encuentran:

- Autenticación de usuarios.
- Restricción de acceso según perfiles.
- Validación de datos de entrada.
- Integridad referencial mediante claves primarias y foráneas.
- Restricciones de unicidad y obligatoriedad.
- Auditoría mediante triggers y procedimientos almacenados.

---

# 7. Escalabilidad

La arquitectura fue diseñada para facilitar la incorporación de nuevos módulos sin modificar significativamente los componentes existentes.

Entre las posibles ampliaciones futuras se encuentran:

- Integración con servicios web.
- Firma electrónica de reportes.
- Notificaciones automáticas.
- Tableros de control con indicadores en tiempo real.
- Integración con otros sistemas institucionales.

---

# 8. Beneficios de la Arquitectura

La arquitectura propuesta aporta beneficios tanto técnicos como operativos:

- Centralización de la información.
- Reducción de procesos manuales.
- Mejor trazabilidad de los reportes.
- Mayor disponibilidad de la información.
- Facilidad de mantenimiento.
- Escalabilidad para futuras funcionalidades.

---

# 9. Conclusiones

La arquitectura de FRAMED proporciona una base sólida para el desarrollo de un sistema orientado a fortalecer la gestión de los establecimientos farmacéuticos del departamento de Antioquia. La utilización de Oracle APEX y Oracle Database permite integrar de forma eficiente la interfaz de usuario, la lógica de negocio y el almacenamiento de datos, garantizando un sistema organizado, escalable y alineado con las necesidades del proceso de inspección, vigilancia y control.
