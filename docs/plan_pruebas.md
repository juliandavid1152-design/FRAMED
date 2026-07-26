# Plan de Pruebas del Proyecto FRAMED

## 1. Introducción

El presente plan de pruebas define las actividades necesarias para verificar el funcionamiento del sistema FRAMED y comprobar que sus componentes respondan a los requerimientos establecidos. La validación se concentra en los módulos de gestión de establecimientos, reportes, novedades, catálogos y trazabilidad de la información.

Las pruebas se plantean como parte del proceso de desarrollo tecnológico y buscan identificar errores funcionales, inconsistencias en la base de datos, fallas de navegación y problemas de validación antes de la entrega del prototipo.

---

# 2. Objetivo

Verificar que las funcionalidades desarrolladas en FRAMED operen de manera correcta, mantengan la integridad de los datos y permitan ejecutar los procesos definidos para los módulos CENSO y REPO.

---

# 3. Alcance

El plan comprende las siguientes áreas:

- Registro y consulta de establecimientos.
- Actualización de información.
- Registro de reportantes.
- Registro y seguimiento de reportes.
- Registro de novedades.
- Consulta del historial.
- Administración de catálogos.
- Validación de relaciones entre tablas.
- Autenticación y control de acceso.
- Navegación entre módulos.

---

# 4. Tipos de Prueba

## 4.1 Pruebas funcionales

Permiten comprobar que cada módulo realice las operaciones esperadas de acuerdo con los requerimientos funcionales.

## 4.2 Pruebas de validación

Verifican el comportamiento de los campos obligatorios, formatos de datos y restricciones definidas para evitar información incompleta o inconsistente.

## 4.3 Pruebas de integración

Evalúan la interacción entre los módulos y las relaciones existentes en la base de datos.

Ejemplos:

- Establecimiento y municipio.
- Establecimiento y servicios.
- Reporte y reportante.
- Reporte y estado.
- Novedad y tipo de novedad.
- Reporte e historial.

## 4.4 Pruebas de integridad de datos

Comprueban el funcionamiento de las claves primarias, claves foráneas, restricciones de unicidad y demás controles definidos en Oracle Database.

## 4.5 Pruebas de navegación

Verifican que los botones, menús, formularios y reportes conduzcan correctamente a las páginas correspondientes.

## 4.6 Pruebas de seguridad

Evalúan el acceso a la aplicación y la disponibilidad de funcionalidades según los permisos asignados.

## 4.7 Pruebas de usabilidad

Permiten identificar dificultades en la comprensión de los formularios, navegación, mensajes y organización de la información.

---

# 5. Ambiente de Pruebas

Las pruebas se ejecutarán en un entorno compuesto por:

- Oracle APEX.
- Oracle Database.
- Navegador web actualizado.
- Datos de prueba controlados.
- Repositorio GitHub para la documentación de evidencias.

---

# 6. Casos de Prueba

| ID | Módulo | Caso de prueba | Datos de entrada | Resultado esperado | Estado |
|---|---|---|---|---|---|
| CP-01 | Establecimientos | Registrar un establecimiento con datos válidos | Nombre, NIT, municipio, dirección y estado | El registro se almacena correctamente | Pendiente |
| CP-02 | Establecimientos | Registrar sin nombre | Formulario sin nombre | El sistema muestra una validación y no guarda | Pendiente |
| CP-03 | Establecimientos | Consultar registros | Criterio de búsqueda | El sistema muestra los establecimientos coincidentes | Pendiente |
| CP-04 | Establecimientos | Actualizar información | Registro existente y nuevos datos | Los cambios quedan almacenados | Pendiente |
| CP-05 | Establecimientos | Registrar NIT duplicado | NIT existente | El sistema impide la duplicidad | Pendiente |
| CP-06 | Reportantes | Registrar reportante | Nombre, cargo, correo y teléfono | El reportante queda almacenado | Pendiente |
| CP-07 | Reportes | Registrar reporte | Establecimiento, reportante y estado | El reporte queda asociado correctamente | Pendiente |
| CP-08 | Reportes | Consultar por radicado | Número de radicado | El sistema muestra el reporte correspondiente | Pendiente |
| CP-09 | Novedades | Registrar novedad | Reporte, establecimiento y tipo | La novedad queda asociada al reporte | Pendiente |
| CP-10 | Novedades | Consultar tipo de novedad | Selección de catálogo | Se muestran los tipos registrados | Pendiente |
| CP-11 | Historial | Registrar cambio de estado | Estado anterior, nuevo estado y usuario | El cambio queda almacenado en el historial | Pendiente |
| CP-12 | Integridad | Eliminar un registro relacionado | Establecimiento con reportes asociados | La base de datos controla la integridad referencial | Pendiente |
| CP-13 | Navegación | Abrir módulo desde el menú | Selección de opción | La página correspondiente se abre correctamente | Pendiente |
| CP-14 | Seguridad | Acceder sin autenticación | URL de la aplicación | El sistema solicita inicio de sesión | Pendiente |
| CP-15 | Catálogos | Consultar municipios | Acceso al catálogo | Se muestran los 125 municipios cargados | Pendiente |

---

# 7. Criterios de Aceptación

Una prueba se considera aprobada cuando:

- El resultado obtenido coincide con el esperado.
- No se presentan errores de ejecución.
- La información se almacena correctamente.
- Las relaciones entre tablas se mantienen.
- El sistema muestra mensajes comprensibles.
- La navegación funciona de acuerdo con el flujo definido.

---

# 8. Registro de Incidencias

Las fallas identificadas deberán documentarse con:

- Código de la incidencia.
- Fecha.
- Módulo afectado.
- Descripción del error.
- Pasos para reproducirlo.
- Evidencia.
- Nivel de prioridad.
- Estado de solución.

---

# 9. Evidencias

Las evidencias podrán incluir:

- Capturas de pantalla.
- Consultas SQL.
- Mensajes de confirmación o error.
- Registros creados.
- Resultados de navegación.
- Video de funcionamiento del prototipo.

---

# 10. Resultado Esperado

Al finalizar las pruebas, el prototipo deberá demostrar el funcionamiento integrado de la base de datos y de los módulos principales definidos para FRAMED, con especial énfasis en el registro de establecimientos, la gestión de reportes, el manejo de novedades y la trazabilidad de los cambios.

---

# 11. Conclusiones

El plan de pruebas permite evaluar de forma ordenada el comportamiento del sistema y relacionar las funcionalidades implementadas con los requerimientos del proyecto. Su aplicación facilita la identificación de errores, fortalece la calidad del prototipo y aporta evidencias para sustentar el nivel de desarrollo alcanzado.
