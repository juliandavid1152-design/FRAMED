/* =========================================================
   PROYECTO FRAMED
   Archivo: 03_catalogos.sql
   Descripción: Datos iniciales de los catálogos del sistema
   Motor: Oracle Database
   ========================================================= */

/* =========================================================
   ESTADOS DE ESTABLECIMIENTO
   ========================================================= */

INSERT INTO ESTADO (NOMBRE, DESCRIPCION)
VALUES ('ACTIVO', 'Establecimiento habilitado y en funcionamiento');

INSERT INTO ESTADO (NOMBRE, DESCRIPCION)
VALUES ('INACTIVO', 'Establecimiento que no se encuentra en funcionamiento');

INSERT INTO ESTADO (NOMBRE, DESCRIPCION)
VALUES ('SUSPENDIDO', 'Establecimiento con suspensión temporal');

INSERT INTO ESTADO (NOMBRE, DESCRIPCION)
VALUES ('CERRADO', 'Establecimiento con cierre definitivo');


/* =========================================================
   ESTADOS DE REPORTE
   ========================================================= */

INSERT INTO ESTADO_REPORTE (NOMBRE, DESCRIPCION)
VALUES ('REGISTRADO', 'Reporte recibido y almacenado en el sistema');

INSERT INTO ESTADO_REPORTE (NOMBRE, DESCRIPCION)
VALUES ('EN REVISIÓN', 'Reporte en proceso de revisión');

INSERT INTO ESTADO_REPORTE (NOMBRE, DESCRIPCION)
VALUES ('APROBADO', 'Reporte revisado y aprobado');

INSERT INTO ESTADO_REPORTE (NOMBRE, DESCRIPCION)
VALUES ('RECHAZADO', 'Reporte rechazado por inconsistencias');

INSERT INTO ESTADO_REPORTE (NOMBRE, DESCRIPCION)
VALUES ('CERRADO', 'Reporte gestionado y finalizado');


/* =========================================================
   TIPOS DE NOVEDAD
   ========================================================= */

INSERT INTO TIPO_NOVEDAD (NOMBRE)
VALUES ('Cambio de director técnico o responsable del establecimiento');

INSERT INTO TIPO
