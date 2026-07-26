# Plan de Pruebas

## Objetivo

Definir la estrategia de validación del sistema FRAMED para verificar que todas las funcionalidades desarrolladas cumplan los requerimientos establecidos.

---

# Tipos de pruebas

## 1. Pruebas Unitarias

Se realizarán pruebas sobre cada componente desarrollado de forma independiente, verificando el correcto funcionamiento de:

- Registro de establecimientos.
- Registro de reportes.
- Registro de novedades.
- Administración de catálogos.
- Consultas.

---

## 2. Pruebas de Integración

Se verificará la interacción entre los diferentes módulos del sistema.

Ejemplos:

- Registro de establecimiento → Reporte.
- Reporte → Novedad.
- Establecimiento → Servicios.
- Director Técnico → Establecimiento.

---

## 3. Pruebas Funcionales

Se comprobará que el sistema responda de acuerdo con los requerimientos funcionales definidos.

### Casos principales

- Registrar establecimiento.
- Editar establecimiento.
- Consultar establecimiento.
- Registrar reporte.
- Registrar novedad.
- Consultar historial.
- Consultar catálogos.

---

## 4. Pruebas de Base de Datos

Se validará:

- Integridad referencial.
- Restricciones.
- Llaves primarias.
- Llaves foráneas.
- Triggers.
- Procedimientos almacenados.
- Vistas.

---

## 5. Pruebas de Seguridad

Se comprobará:

- Inicio de sesión.
- Restricciones de acceso.
- Validación de permisos.
- Protección de información.

---

# Criterios de aceptación

Se considerará exitosa una prueba cuando:

- El resultado obtenido corresponda con el esperado.
- No existan errores de integridad.
- No se presenten pérdidas de información.
- Los registros sean almacenados correctamente.

---

# Registro de pruebas

| ID | Caso de prueba | Resultado esperado | Estado |
|----|----------------|-------------------|--------|
| CP-01 | Registrar establecimiento | Registro exitoso | Pendiente |
| CP-02 | Editar establecimiento | Actualización correcta | Pendiente |
| CP-03 | Registrar reporte | Información almacenada | Pendiente |
| CP-04 | Registrar novedad | Novedad registrada | Pendiente |
| CP-05 | Consultar historial | Información visible | Pendiente |
| CP-06 | Consultar catálogos | Datos disponibles | Pendiente |
| CP-07 | Validar restricciones | No permite datos inválidos | Pendiente |

---

# Resultado esperado

Al finalizar las pruebas el sistema deberá cumplir la totalidad de los requerimientos funcionales y no funcionales definidos para el proyecto FRAMED.
