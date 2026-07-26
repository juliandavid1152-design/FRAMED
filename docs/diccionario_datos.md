# Diccionario de Datos

## 1. Introducción

El presente documento describe la estructura de la base de datos utilizada por el sistema FRAMED. Su propósito es documentar las entidades, atributos y relaciones que conforman el modelo de información del proyecto, facilitando el mantenimiento, la administración y la evolución del sistema.

Cada tabla almacena información específica del proceso de inspección, vigilancia y control de establecimientos farmacéuticos, permitiendo garantizar la trazabilidad y consistencia de los datos.

---

# 2. Tabla DT

Descripción:

Almacena la información de los directores técnicos o responsables de los establecimientos.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| ID_DT | NUMBER | Identificador único |
| NOMBRE | VARCHAR2 | Nombre completo |
| DOCUMENTO | VARCHAR2 | Número de documento |
| TELEFONO | VARCHAR2 | Teléfono |
| CORREO | VARCHAR2 | Correo electrónico |
| ESTADO | VARCHAR2 | Estado del registro |

---

# 3. Tabla ESTABLECIMIENTO

Descripción:

Contiene la información principal de cada establecimiento farmacéutico.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| ID_ESTABLECIMIENTO | NUMBER | Identificador |
| NOMBRE | VARCHAR2 | Nombre comercial |
| NIT | VARCHAR2 | NIT |
| MUNICIPIO | NUMBER | Municipio |
| DIRECCION | VARCHAR2 | Dirección |
| TELEFONO | VARCHAR2 | Teléfono |
| DIRECTOR_TECNICO | NUMBER | Director técnico |
| ESTADO | NUMBER | Estado |
| FECHA_REGISTRO | DATE | Fecha de registro |
| EMAIL | VARCHAR2 | Correo electrónico |

---

# 4. Tabla ESTABLECIMIENTO_SERVICIO

Descripción:

Relaciona los establecimientos con los servicios habilitados.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| ID_ESTABLECIMIENTO_SERVICIO | NUMBER | Identificador |
| ID_ESTABLECIMIENTO | NUMBER | Establecimiento |
| ID_SERVICIO | NUMBER | Servicio |

---

# 5. Tabla ESTADO

Descripción:

Catálogo de estados de los establecimientos.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| ID_ESTADO | NUMBER | Identificador |
| NOMBRE | VARCHAR2 | Nombre |
| DESCRIPCION | VARCHAR2 | Descripción |

---

# 6. Tabla ESTADO_REPORTE

Descripción:

Estados utilizados durante el ciclo de vida de un reporte.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| ID_ESTADO_REPORTE | NUMBER | Identificador |
| NOMBRE | VARCHAR2 | Nombre |
| DESCRIPCION | VARCHAR2 | Descripción |

---

# 7. Tabla MUNICIPIOS

Descripción:

Catálogo de municipios del departamento.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| ID_MUNICIPIO | NUMBER | Identificador |
| NOMBRE | VARCHAR2 | Municipio |

---

# 8. Tabla NOVEDADES

Descripción:

Registra las novedades reportadas por los establecimientos.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| ID_NOVEDAD | NUMBER | Identificador |
| ID_ESTABLECIMIENTO | NUMBER | Establecimiento |
| ID_TIPO_NOVEDAD | NUMBER | Tipo de novedad |
| FECHA_REPORTE | DATE | Fecha |
| OBSERVACION | VARCHAR2 | Observaciones |
| ESTADO | VARCHAR2 | Estado |

---

# 9. Tabla REPORTANTE

Descripción:

Información de la persona que registra un reporte.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| ID_REPORTANTE | NUMBER | Identificador |
| NOMBRE | VARCHAR2 | Nombre |
| TIPO_DOCUMENTO | VARCHAR2 | Tipo de documento |
| NUMERO_DOCUMENTO | VARCHAR2 | Documento |
| TELEFONO | VARCHAR2 | Teléfono |
| CORREO | VARCHAR2 | Correo |

---

# 10. Tabla REPORTES

Descripción:

Contiene el historial de reportes registrados en el sistema.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| ID_REPORTE | NUMBER | Identificador |
| RADICADO | VARCHAR2 | Número de radicado |
| ID_ESTABLECIMIENTO | NUMBER | Establecimiento |
| ID_REPORTANTE | NUMBER | Reportante |
| ID_ESTADO_REPORTE | NUMBER | Estado |
| FECHA_REPORTE | DATE | Fecha |

---

# 11. Tabla SERVICIOS

Descripción:

Catálogo de servicios farmacéuticos.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| ID_SERVICIO | NUMBER | Identificador |
| NOMBRE | VARCHAR2 | Nombre |
| DESCRIPCION | VARCHAR2 | Descripción |

---

# 12. Tabla TIPO_NOVEDAD

Descripción:

Catálogo de novedades permitidas por el sistema.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| ID_TIPO_NOVEDAD | NUMBER | Identificador |
| NOMBRE | VARCHAR2 | Nombre de la novedad |

---

# 13. Conclusiones

El diccionario de datos constituye una referencia técnica para comprender la estructura de la base de datos del proyecto FRAMED. La documentación de cada entidad y sus atributos facilita el desarrollo, mantenimiento y evolución del sistema, garantizando una interpretación uniforme de la información almacenada.
