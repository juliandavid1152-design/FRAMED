# Modelo de Datos

## 1. Introducción

El modelo de datos de FRAMED fue diseñado siguiendo el modelo relacional propuesto por Oracle Database, buscando garantizar la integridad, consistencia y disponibilidad de la información administrada por el sistema.

La estructura de la base de datos permite gestionar la información relacionada con los establecimientos farmacéuticos del departamento de Antioquia, los reportes generados por estos, las novedades reportadas, los responsables de la información y los diferentes catálogos utilizados por la aplicación.

El diseño fue realizado aplicando principios de normalización para reducir redundancia, mantener la integridad referencial y facilitar el crecimiento del sistema.

---

# 2. Objetivos del Modelo

El modelo de datos tiene como objetivos principales:

- Centralizar la información del sistema.
- Evitar duplicidad de registros.
- Garantizar la integridad referencial.
- Facilitar las consultas.
- Optimizar el almacenamiento.
- Permitir la escalabilidad del sistema.

---

# 3. Entidades Principales

El sistema se encuentra conformado por las siguientes entidades principales:

- DT
- ESTABLECIMIENTO
- ESTABLECIMIENTO_SERVICIO
- ESTADO
- ESTADO_REPORTE
- MUNICIPIOS
- NOVEDADES
- REPORTANTE
- REPORTES
- SERVICIOS
- TIPO_NOVEDAD

Cada una representa un proceso específico dentro del ecosistema FRAMED y se relaciona mediante claves primarias y foráneas.

---

# 4. Relaciones del Modelo

Las relaciones implementadas permiten mantener la coherencia de la información.

Entre las principales relaciones se encuentran:

- Un municipio puede tener múltiples establecimientos.
- Un establecimiento puede prestar varios servicios.
- Un establecimiento puede registrar múltiples reportes.
- Un establecimiento puede presentar diferentes novedades a lo largo del tiempo.
- Un reportante puede registrar varios reportes.
- Un tipo de novedad puede estar asociado a múltiples novedades.
- Cada reporte posee un estado específico.

Estas relaciones garantizan la trazabilidad de toda la información registrada en el sistema.

---

# 5. Integridad Referencial

El modelo utiliza claves primarias y claves foráneas para asegurar la consistencia de la información.

Se implementan restricciones que permiten:

- Evitar registros huérfanos.
- Impedir duplicidad de información.
- Mantener la consistencia entre tablas relacionadas.
- Garantizar la validez de los datos almacenados.

---

# 6. Normalización

La estructura de la base de datos fue diseñada siguiendo los principios de la Tercera Forma Normal (3FN).

Esto permite:

- Reducir redundancia.
- Evitar anomalías de actualización.
- Mejorar el mantenimiento.
- Optimizar el rendimiento de las consultas.

---

# 7. Escalabilidad

El modelo permite incorporar nuevas entidades sin afectar significativamente la estructura existente.

Entre las futuras ampliaciones se contemplan:

- Gestión documental.
- Auditoría avanzada.
- Historial de cambios.
- Notificaciones automáticas.
- Integración con otros sistemas institucionales.

---

# 8. Conclusiones

El modelo de datos constituye la base estructural del sistema FRAMED. Su diseño busca garantizar la integridad de la información, facilitar el mantenimiento de la aplicación y soportar el crecimiento futuro del sistema mediante una estructura organizada y escalable.
