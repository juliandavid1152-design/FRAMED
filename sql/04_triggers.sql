/* =========================================================
   PROYECTO FRAMED
   Archivo: 04_triggers.sql
   Descripción: Triggers del sistema
   Motor: Oracle Database
   ========================================================= */


/* =========================================================
   TRIGGER 1
   ACTUALIZAR FECHA DE MODIFICACIÓN DEL ESTABLECIMIENTO
   ========================================================= */

CREATE OR REPLACE TRIGGER TRG_ESTABLECIMIENTO_UPDATE
BEFORE UPDATE ON ESTABLECIMIENTO
FOR EACH ROW
BEGIN
    :NEW.FECHA_REGISTRO := SYSDATE;
END;
/

/* =========================================================
   TRIGGER 2
   FECHA AUTOMÁTICA DE REPORTE
   ========================================================= */

CREATE OR REPLACE TRIGGER TRG_REPORTE_FECHA
BEFORE INSERT ON REPORTES
FOR EACH ROW
BEGIN
    IF :NEW.FECHA_REPORTE IS NULL THEN
        :NEW.FECHA_REPORTE := SYSDATE;
    END IF;
END;
/

/* =========================================================
   TRIGGER 3
   FECHA AUTOMÁTICA DE NOVEDAD
   ========================================================= */

CREATE OR REPLACE TRIGGER TRG_NOVEDAD_FECHA
BEFORE INSERT ON NOVEDADES
FOR EACH ROW
BEGIN
    IF :NEW.FECHA_REPORTE IS NULL THEN
        :NEW.FECHA_REPORTE := SYSDATE;
    END IF;
END;
/

/* =========================================================
   TRIGGER 4
   VALIDAR NOMBRE DEL ESTABLECIMIENTO
   ========================================================= */

CREATE OR REPLACE TRIGGER TRG_ESTABLECIMIENTO_NOMBRE
BEFORE INSERT OR UPDATE ON ESTABLECIMIENTO
FOR EACH ROW
BEGIN
    :NEW.NOMBRE := UPPER(TRIM(:NEW.NOMBRE));
END;
/

/* =========================================================
   FIN DEL SCRIPT
   ========================================================= */
