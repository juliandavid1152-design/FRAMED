/* =========================================================
   PROYECTO FRAMED
   Archivo: 04_triggers.sql
   Descripción: Triggers de auditoría, normalización y validación
                aplicados al modelo definitivo de FRAMED
   Motor: Oracle Database

   Nota:
   Estos triggers constituyen una ampliación técnica del modelo
   base y deben probarse en el esquema Oracle antes de su uso
   definitivo en producción.
   ========================================================= */


/* =========================================================
   1. AUDITORÍA Y NORMALIZACIÓN DE ESTABLECIMIENTOS
   ========================================================= */

CREATE OR REPLACE TRIGGER TRG_ESTABLECIMIENTOS_AUDITORIA
BEFORE INSERT OR UPDATE ON ESTABLECIMIENTOS
FOR EACH ROW
DECLARE
    V_USUARIO VARCHAR2(50);
BEGIN
    V_USUARIO := SYS_CONTEXT('USERENV', 'SESSION_USER');

    /* Normalización de texto */
    :NEW.CODIGO_ESTABLECIMIENTO :=
        UPPER(TRIM(:NEW.CODIGO_ESTABLECIMIENTO));

    :NEW.RAZON_SOCIAL :=
        UPPER(TRIM(:NEW.RAZON_SOCIAL));

    :NEW.NOMBRE_DIRECTOR_TECNICO :=
        UPPER(TRIM(:NEW.NOMBRE_DIRECTOR_TECNICO));

    :NEW.NOMBRE_PROPIETARIO :=
        UPPER(TRIM(:NEW.NOMBRE_PROPIETARIO));

    :NEW.NOMBRE_REPRESENTANTE :=
        UPPER(TRIM(:NEW.NOMBRE_REPRESENTANTE));

    :NEW.EMAIL :=
        LOWER(TRIM(:NEW.EMAIL));

    IF INSERTING THEN
        IF :NEW.FECHA_CREACION IS NULL THEN
            :NEW.FECHA_CREACION := SYSDATE;
        END IF;

        IF :NEW.USUARIO_CREACION IS NULL THEN
            :NEW.USUARIO_CREACION := V_USUARIO;
        END IF;
    END IF;

    :NEW.FECHA_ULTIMA_ACTUALIZACION := SYSDATE;
    :NEW.USUARIO_ULTIMA_ACTUALIZACION := V_USUARIO;
END;
/


/* =========================================================
   2. VALIDACIÓN DEL PERFIL DEL DIRECTOR TÉCNICO
   ========================================================= */

CREATE OR REPLACE TRIGGER TRG_ESTABLECIMIENTOS_VALIDAR_TITULO
BEFORE INSERT OR UPDATE OF CODIGO_TIPO_ESTABLECIMIENTO, CODIGO_TITULO
ON ESTABLECIMIENTOS
FOR EACH ROW
DECLARE
    V_CANTIDAD NUMBER;
BEGIN
    IF :NEW.CODIGO_TIPO_ESTABLECIMIENTO IS NOT NULL
       AND :NEW.CODIGO_TITULO IS NOT NULL THEN

        SELECT COUNT(*)
          INTO V_CANTIDAD
          FROM TITULO_TIPO_ESTABLECIMIENTO
         WHERE CODIGO_TIPO_ESTABLECIMIENTO =
               :NEW.CODIGO_TIPO_ESTABLECIMIENTO
           AND CODIGO_TITULO = :NEW.CODIGO_TITULO;

        IF V_CANTIDAD = 0 THEN
            RAISE_APPLICATION_ERROR(
                -20001,
                'El título del director técnico no es válido para el tipo de establecimiento seleccionado.'
            );
        END IF;
    END IF;
END;
/


/* =========================================================
   3. NORMALIZACIÓN DE DATOS DEL REPORTANTE
   ========================================================= */

CREATE OR REPLACE TRIGGER TRG_REPORTES_NORMALIZAR
BEFORE INSERT OR UPDATE ON REPORTES
FOR EACH ROW
BEGIN
    :NEW.NOMBRE_REPORTANTE :=
        UPPER(TRIM(:NEW.NOMBRE_REPORTANTE));

    :NEW.DOCUMENTO_REPORTANTE :=
        TRIM(:NEW.DOCUMENTO_REPORTANTE);

    IF INSERTING AND :NEW.FECHA_REPORTE IS NULL THEN
        :NEW.FECHA_REPORTE := SYSDATE;
    END IF;
END;
/


/* =========================================================
   4. FECHA AUTOMÁTICA DEL HISTORIAL
   ========================================================= */

CREATE OR REPLACE TRIGGER TRG_HISTORIAL_FECHA
BEFORE INSERT ON HISTORIAL_ACTUALIZACIONES
FOR EACH ROW
BEGIN
    IF :NEW.FECHA_ACTUALIZACION IS NULL THEN
        :NEW.FECHA_ACTUALIZACION := SYSDATE;
    END IF;
END;
/


/* =========================================================
   FIN DEL SCRIPT DE TRIGGERS
   ========================================================= */
