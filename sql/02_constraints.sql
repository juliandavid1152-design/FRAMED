/* =========================================================
   PROYECTO FRAMED
   Archivo: 02_constraints.sql
   Descripción: Alteraciones posteriores, columnas adicionales
                y restricciones del modelo definitivo
   Motor: Oracle Database

   Importante:
   - Las restricciones definidas dentro de CREATE TABLE permanecen
     en 01_creacion_tablas.sql.
   - Este archivo contiene únicamente los ALTER TABLE presentes
     en el script maestro.
   ========================================================= */


/* =========================================================
   1. SERVICIOS COMPLEMENTARIOS DEL ESTABLECIMIENTO
   ========================================================= */

ALTER TABLE ESTABLECIMIENTOS ADD (

    INYECTOLOGIA           CHAR(1) DEFAULT 'N'
        CONSTRAINT CK_EST_INYECTOLOGIA
        CHECK (INYECTOLOGIA IN ('S','N')),

    MCE                    CHAR(1) DEFAULT 'N'
        CONSTRAINT CK_EST_MCE
        CHECK (MCE IN ('S','N')),

    EAPB                   CHAR(1) DEFAULT 'N'
        CONSTRAINT CK_EST_EAPB
        CHECK (EAPB IN ('S','N')),

    VENTAS_A_DISTANCIA     CHAR(1) DEFAULT 'N'
        CONSTRAINT CK_EST_VENTAS_DISTANCIA
        CHECK (VENTAS_A_DISTANCIA IN ('S','N')),

    TOMA_GLICEMIA          CHAR(1) DEFAULT 'N'
        CONSTRAINT CK_EST_TOMA_GLICEMIA
        CHECK (TOMA_GLICEMIA IN ('S','N'))

);


/* =========================================================
   2. PREPARACIONES MAGISTRALES
   ========================================================= */

ALTER TABLE ESTABLECIMIENTOS ADD (
    MAGISTRALES CHAR(1) DEFAULT 'N'
        CONSTRAINT CK_EST_MAGISTRALES
        CHECK (MAGISTRALES IN ('S','N'))
);


/* =========================================================
   3. CONCEPTO SANITARIO DEL ESTABLECIMIENTO
   ========================================================= */

ALTER TABLE ESTABLECIMIENTOS
ADD CODIGO_CONCEPTO_SANITARIO NUMBER(1);


/* =========================================================
   4. RELACIÓN CON CONCEPTOS SANITARIOS
   ========================================================= */

ALTER TABLE ESTABLECIMIENTOS
ADD CONSTRAINT FK_EST_CONCEPTO_SANITARIO
FOREIGN KEY (CODIGO_CONCEPTO_SANITARIO)
REFERENCES CONCEPTOS_SANITARIOS (CODIGO_CONCEPTO_SANITARIO);


/* =========================================================
   FIN DEL SCRIPT DE ALTERACIONES Y RESTRICCIONES
   ========================================================= */
