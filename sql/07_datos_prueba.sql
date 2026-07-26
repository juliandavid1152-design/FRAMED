/* =========================================================
   PROYECTO FRAMED
   Archivo: 07_datos_prueba.sql
   Descripción: Datos de prueba
   ========================================================= */

INSERT INTO DT (NOMBRE,DOCUMENTO)
VALUES ('JUAN PEREZ','12345678');

INSERT INTO MUNICIPIOS (NOMBRE)
VALUES ('MEDELLÍN');

INSERT INTO REPORTANTE
(
NOMBRE,
TIPO_DOCUMENTO,
NUMERO_DOCUMENTO
)

VALUES
(
'CARLOS GÓMEZ',
'CC',
'10203040'
);

COMMIT;
