# Casos de Uso

## 1. Introducción

Los casos de uso describen las principales interacciones entre los usuarios y el sistema FRAMED. Cada caso representa una funcionalidad específica que permite satisfacer una necesidad del proceso de gestión de establecimientos farmacéuticos, reportes y novedades.

---

# 2. Actores

El sistema contempla los siguientes actores:

- Administrador del sistema.
- Profesional del Programa de Medicamentos.
- Consultor autorizado.

---

# 3. Casos de Uso

## CU-01 Registrar establecimiento

**Actor:** Administrador

**Objetivo:** Registrar un nuevo establecimiento farmacéutico.

**Precondición:**

El usuario debe encontrarse autenticado.

**Flujo principal**

1. Accede al módulo Establecimientos.
2. Selecciona "Nuevo".
3. Ingresa la información requerida.
4. Guarda el registro.
5. El sistema valida la información.
6. El sistema almacena el establecimiento.

**Resultado esperado**

El establecimiento queda registrado en la base de datos.

---

## CU-02 Consultar establecimiento

**Actor:** Profesional

**Objetivo**

Consultar la información registrada de un establecimiento.

**Flujo principal**

1. Accede al módulo.
2. Realiza la búsqueda.
3. Selecciona el establecimiento.
4. El sistema muestra la información.

---

## CU-03 Actualizar establecimiento

**Actor**

Administrador.

**Objetivo**

Modificar la información de un establecimiento.

**Resultado esperado**

La información queda actualizada.

---

## CU-04 Registrar reportante

**Actor**

Administrador.

**Objetivo**

Registrar una persona responsable de reportar novedades.

---

## CU-05 Registrar reporte

**Actor**

Profesional.

**Objetivo**

Registrar un nuevo reporte asociado a un establecimiento.

---

## CU-06 Registrar novedad

**Actor**

Profesional.

**Objetivo**

Registrar una novedad relacionada con un establecimiento.

---

## CU-07 Consultar historial

**Actor**

Administrador.

**Objetivo**

Consultar el historial completo de reportes y novedades de un establecimiento.

---

## CU-08 Administrar catálogos

**Actor**

Administrador.

**Objetivo**

Administrar municipios, estados, tipos de novedad y servicios.

---

## CU-09 Consultar reportes

**Actor**

Profesional.

**Objetivo**

Consultar los reportes registrados en el sistema.

---

## CU-10 Consultar novedades

**Actor**

Profesional.

**Objetivo**

Consultar las novedades registradas.

---

# 4. Relación entre actores y casos de uso

| Actor | Casos de uso |
|--------|--------------|
| Administrador | CU-01, CU-03, CU-04, CU-07, CU-08 |
| Profesional | CU-02, CU-05, CU-06, CU-09, CU-10 |
| Consultor | Consultas autorizadas |

---

# 5. Conclusiones

Los casos de uso permiten comprender las funcionalidades principales del sistema FRAMED y sirven como base para el diseño de la interfaz, el desarrollo de la lógica de negocio y la planificación de las pruebas funcionales.
