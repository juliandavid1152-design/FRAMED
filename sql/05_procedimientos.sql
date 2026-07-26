/* =========================================================
   PROYECTO FRAMED
   Archivo: 05_procedimientos.sql
   Descripción: Procedimientos almacenados
   Motor: Oracle Database
   ========================================================= */


/* =========================================================
   REGISTRAR ESTABLECIMIENTO
   ========================================================= */

CREATE OR REPLACE PROCEDURE SP_REGISTRAR_ESTABLECIMIENTO(

    P_NOMBRE            IN VARCHAR2,
    P_NIT               IN VARCHAR2,
    P_DIRECCION         IN VARCHAR2,
    P_TELEFONO          IN VARCHAR2,
    P_EMAIL             IN VARCHAR2,
    P_MUNICIPIO         IN NUMBER,
    P_ESTADO            IN NUMBER

)

IS
BEGIN

INSERT INTO ESTABLECIMIENTO(

NOMBRE,
NIT,
DIRECCION,
TELEFONO,
EMAIL,
MUNICIPIO,
ID_ESTADO

)

VALUES(

P_NOMBRE,
P_NIT,
P_DIRECCION,
P_TELEFONO,
P_EMAIL,
P_MUNICIPIO,
P_ESTADO

);

COMMIT;

END;
/

/* =========================================================
   CONSULTAR ESTABLECIMIENTO
   ========================================================= */

CREATE OR REPLACE PROCEDURE SP_CONSULTAR_ESTABLECIMIENTO(

P_ID_ESTABLECIMIENTO IN NUMBER

)

IS

BEGIN

NULL;

END;
/

/* =========================================================
   ACTUALIZAR ESTABLECIMIENTO
   ========================================================= */

CREATE OR REPLACE PROCEDURE SP_ACTUALIZAR_ESTABLECIMIENTO(

P_ID_ESTABLECIMIENTO IN NUMBER,
P_TELEFONO IN VARCHAR2,
P_EMAIL IN VARCHAR2

)

IS

BEGIN

UPDATE ESTABLECIMIENTO

SET

TELEFONO = P_TELEFONO,
EMAIL = P_EMAIL

WHERE ID_ESTABLECIMIENTO = P_ID_ESTABLECIMIENTO;

COMMIT;

END;
/

/* =========================================================
   ELIMINAR ESTABLECIMIENTO
   ========================================================= */

CREATE OR REPLACE PROCEDURE SP_ELIMINAR_ESTABLECIMIENTO(

P_ID_ESTABLECIMIENTO IN NUMBER

)

IS

BEGIN

DELETE FROM ESTABLECIMIENTO

WHERE ID_ESTABLECIMIENTO=P_ID_ESTABLECIMIENTO;

COMMIT;

END;
/

/* =========================================================
   FIN DEL SCRIPT
   ========================================================= */
