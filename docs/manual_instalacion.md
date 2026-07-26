# Manual de Instalación

## 1. Introducción

El presente documento describe el procedimiento para instalar y configurar el sistema FRAMED (Fortalecimiento de la Regulación, Administración y Monitoreo de Establecimientos Farmacéuticos). Su propósito es proporcionar una guía para preparar el entorno de desarrollo y ejecutar los componentes principales del proyecto.

---

# 2. Requisitos del Sistema

Antes de iniciar la instalación se debe contar con los siguientes componentes:

## Software

- Oracle Database 23ai o superior.
- Oracle APEX 24 o superior.
- Oracle SQL Developer (opcional para administración de la base de datos).
- Git.
- Navegador web actualizado (Google Chrome, Microsoft Edge o Mozilla Firefox).

## Hardware recomendado

- Procesador de 2 núcleos o superior.
- 8 GB de memoria RAM.
- 10 GB de espacio disponible en disco.
- Conexión estable a Internet.

---

# 3. Obtención del Proyecto

Clonar el repositorio utilizando Git:

```bash
git clone https://github.com/USUARIO/FRAMED.git
```

O descargar el repositorio en formato ZIP desde GitHub y extraer su contenido en el directorio de trabajo.

---

# 4. Estructura del Proyecto

El repositorio está organizado de la siguiente manera:

```text
FRAMED/
│
├── docs/
├── sql/
├── README.md
├── CHANGELOG.md
├── LICENSE
└── .gitignore
```

---

# 5. Instalación de la Base de Datos

Crear un esquema en Oracle Database y ejecutar los scripts SQL respetando el siguiente orden:

1. `01_creacion_tablas.sql`
2. `02_constraints.sql`
3. `03_catalogos.sql`
4. `04_triggers.sql`
5. `05_procedimientos.sql`
6. `06_vistas.sql`
7. `07_datos_prueba.sql`
8. `08_seguridad.sql`

Este orden garantiza que las tablas, restricciones, catálogos y demás componentes sean creados correctamente.

---

# 6. Configuración de Oracle APEX

Una vez creada la base de datos:

1. Acceder al espacio de trabajo de Oracle APEX.
2. Importar la aplicación correspondiente al proyecto FRAMED (cuando esté disponible).
3. Verificar la conexión con el esquema de la base de datos.
4. Confirmar que las páginas y componentes se carguen correctamente.

---

# 7. Verificación de la Instalación

Después de finalizar la instalación se recomienda verificar:

- Existencia de todas las tablas.
- Creación de claves primarias y foráneas.
- Disponibilidad de vistas.
- Creación de procedimientos almacenados.
- Creación de triggers.
- Inserción de catálogos iniciales.
- Correcta asignación de roles y permisos.

---

# 8. Mantenimiento

Para garantizar la estabilidad del sistema se recomienda:

- Realizar copias de seguridad periódicas de la base de datos.
- Documentar las modificaciones realizadas.
- Mantener actualizado el repositorio GitHub.
- Ejecutar pruebas antes de incorporar nuevas funcionalidades.

---

# 9. Solución de Problemas

En caso de presentarse errores durante la instalación se recomienda:

- Verificar la versión de Oracle Database.
- Confirmar el orden de ejecución de los scripts SQL.
- Revisar los privilegios del usuario de base de datos.
- Validar que no existan objetos previamente creados con el mismo nombre.

---

# 10. Conclusiones

Siguiendo el procedimiento descrito en este documento es posible preparar el entorno de ejecución del proyecto FRAMED, garantizando una instalación organizada, reproducible y consistente para futuras implementaciones y actividades de mantenimiento.
