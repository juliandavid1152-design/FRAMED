# Plan de Pruebas del Proyecto FRAMED

## 1. Objetivo

Definir las pruebas necesarias para verificar el funcionamiento de los componentes principales de FRAMED, especialmente los procesos relacionados con establecimientos farmacéuticos, reportes, novedades y catálogos del sistema.

## 2. Alcance

El plan contempla pruebas funcionales, de validación, integridad de datos, navegación, seguridad y usabilidad.

## 3. Tipos de prueba

### 3.1 Pruebas funcionales

Se verificará que cada módulo cumpla con las funciones definidas en los requerimientos.

### 3.2 Pruebas de validación

Se comprobará el comportamiento de los campos obligatorios, formatos de datos y restricciones de negocio.

### 3.3 Pruebas de integridad

Se validará que las relaciones entre tablas mantengan consistencia y que no existan registros huérfanos.

### 3.4 Pruebas de navegación

Se verificará que los botones, menús, formularios y reportes conduzcan correctamente a las páginas correspondientes.

### 3.5 Pruebas de seguridad

Se comprobará que los usuarios solo accedan a las funciones autorizadas según su perfil.

## 4. Casos de prueba

| ID | Módulo | Prueba | Resultado esperado |
|---|---|---|---|
| CP-01 | Establecimientos | Registrar un establecimiento con datos válidos | El registro se almacena correctamente |
| CP-02 | Establecimientos | Intentar registrar sin nombre | El sistema muestra una validación |
| CP-03 | Establecimientos | Consultar establecimientos | Se muestran los registros disponibles |
| CP-04 | Establecimientos | Editar un registro existente | Los cambios quedan almacenados |
| CP-05 | Reportes | Registrar un reporte | El reporte queda asociado al establecimiento |
| CP-06 | Novedades | Registrar una novedad | La novedad queda asociada al reporte |
| CP-07 | Catálogos | Consultar tipos de novedad | Se muestran los valores configurados |
| CP-08 | Seguridad | Acceder sin autenticación | El sistema solicita inicio de sesión |
| CP-09 | Integridad | Eliminar un registro relacionado | El sistema controla la integridad referencial |
| CP-10 | Navegación | Utilizar el menú principal | Las páginas se abren correctamente |

## 5. Criterios de aceptación

Una prueba será aprobada cuando el resultado obtenido coincida con el resultado esperado y no se presenten errores técnicos ni inconsistencias de información.

## 6. Registro de resultados

Los resultados deberán documentarse mediante capturas de pantalla, descripción de incidencias y estado final de cada caso de prueba.
