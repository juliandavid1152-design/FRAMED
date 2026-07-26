/* =========================================================
   PROYECTO FRAMED
   Archivo: 07_datos_prueba.sql
   Descripción: Datos controlados para validar establecimientos,
                reportes, detalles e historial del modelo FRAMED
   Motor: Oracle Database

   Importante:
   - Los datos de este archivo son ficticios y se utilizan
     únicamente con fines de prueba y demostración.
   - Debe ejecutarse después de:
       01_creacion_tablas.sql
       02_constraints.sql
       03_catalogos.sql
       04_triggers.sql
       05_procedimientos.sql
       06_vistas.sql
   ========================================================= */


/* =========================================================
   1. ESTABLECIMIENTOS DE PRUEBA
   ========================================================= */

MERGE INTO ESTABLECIMIENTOS E
USING (
    SELECT
        'TEST-EST-001' AS CODIGO_ESTABLECIMIENTO,
        1 AS CODIGO_GRUPO,
        1 AS CODIGO_TIPO_ESTABLECIMIENTO,
        6 AS CODIGO_REGION,
        85 AS CODIGO_MUNICIPIO,
        'DROGUERÍA DEMO RIONEGRO' AS RAZON_SOCIAL,
        'CARRERA 50 # 45-20' AS DIRECCION,
        'CENTRO' AS BARRIO,
        '6045551001' AS TELEFONOS,
        'DT-TEST-001' AS ID_DT,
        'ANA MARÍA GÓMEZ' AS NOMBRE_DIRECTOR_TECNICO,
        2 AS CODIGO_TITULO,
        'PROP-TEST-001' AS ID_PROPIETARIO,
        'CARLOS RESTREPO' AS NOMBRE_PROPIETARIO,
        'RL-TEST-001' AS ID_RL,
        'CARLOS RESTREPO' AS NOMBRE_REPRESENTANTE,
        'MAT-TEST-001' AS MATRICULA_MERCANTIL,
        '900999001-1' AS NIT,
        'demo.rionegro@framed.test' AS EMAIL,
        1 AS CODIGO_ESTADO,
        1 AS CODIGO_CONCEPTO_SANITARIO,
        'S' AS INYECTOLOGIA,
        'N' AS MCE,
        'N' AS EAPB,
        'N' AS VENTAS_A_DISTANCIA,
        'S' AS TOMA_GLICEMIA,
        'N' AS MAGISTRALES,
        'Registro ficticio para pruebas del sistema.' AS OBSERVACIONES
    FROM DUAL
) D
ON (E.CODIGO_ESTABLECIMIENTO = D.CODIGO_ESTABLECIMIENTO)
WHEN NOT MATCHED THEN
    INSERT (
        CODIGO_ESTABLECIMIENTO,
        CODIGO_GRUPO,
        CODIGO_TIPO_ESTABLECIMIENTO,
        CODIGO_REGION,
        CODIGO_MUNICIPIO,
        RAZON_SOCIAL,
        DIRECCION,
        BARRIO,
        TELEFONOS,
        ID_DT,
        NOMBRE_DIRECTOR_TECNICO,
        CODIGO_TITULO,
        ID_PROPIETARIO,
        NOMBRE_PROPIETARIO,
        ID_RL,
        NOMBRE_REPRESENTANTE,
        MATRICULA_MERCANTIL,
        NIT,
        EMAIL,
        CODIGO_ESTADO,
        CODIGO_CONCEPTO_SANITARIO,
        INYECTOLOGIA,
        MCE,
        EAPB,
        VENTAS_A_DISTANCIA,
        TOMA_GLICEMIA,
        MAGISTRALES,
        OBSERVACIONES
    )
    VALUES (
        D.CODIGO_ESTABLECIMIENTO,
        D.CODIGO_GRUPO,
        D.CODIGO_TIPO_ESTABLECIMIENTO,
        D.CODIGO_REGION,
        D.CODIGO_MUNICIPIO,
        D.RAZON_SOCIAL,
        D.DIRECCION,
        D.BARRIO,
        D.TELEFONOS,
        D.ID_DT,
        D.NOMBRE_DIRECTOR_TECNICO,
        D.CODIGO_TITULO,
        D.ID_PROPIETARIO,
        D.NOMBRE_PROPIETARIO,
        D.ID_RL,
        D.NOMBRE_REPRESENTANTE,
        D.MATRICULA_MERCANTIL,
        D.NIT,
        D.EMAIL,
        D.CODIGO_ESTADO,
        D.CODIGO_CONCEPTO_SANITARIO,
        D.INYECTOLOGIA,
        D.MCE,
        D.EAPB,
        D.VENTAS_A_DISTANCIA,
        D.TOMA_GLICEMIA,
        D.MAGISTRALES,
        D.OBSERVACIONES
    );


MERGE INTO ESTABLECIMIENTOS E
USING (
    SELECT
        'TEST-EST-002' AS CODIGO_ESTABLECIMIENTO,
        1 AS CODIGO_GRUPO,
        2 AS CODIGO_TIPO_ESTABLECIMIENTO,
        9 AS CODIGO_REGION,
        71 AS CODIGO_MUNICIPIO,
        'FARMACIA-DROGUERÍA DEMO MEDELLÍN' AS RAZON_SOCIAL,
        'CALLE 10 # 35-40' AS DIRECCION,
        'EL POBLADO' AS BARRIO,
        '6045551002' AS TELEFONOS,
        'DT-TEST-002' AS ID_DT,
        'LUIS FERNANDO PÉREZ' AS NOMBRE_DIRECTOR_TECNICO,
        1 AS CODIGO_TITULO,
        'PROP-TEST-002' AS ID_PROPIETARIO,
        'INVERSIONES DEMO S.A.S.' AS NOMBRE_PROPIETARIO,
        'RL-TEST-002' AS ID_RL,
        'MARTA LÓPEZ' AS NOMBRE_REPRESENTANTE,
        'MAT-TEST-002' AS MATRICULA_MERCANTIL,
        '900999002-2' AS NIT,
        'demo.medellin@framed.test' AS EMAIL,
        1 AS CODIGO_ESTADO,
        2 AS CODIGO_CONCEPTO_SANITARIO,
        'S' AS INYECTOLOGIA,
        'S' AS MCE,
        'N' AS EAPB,
        'S' AS VENTAS_A_DISTANCIA,
        'N' AS TOMA_GLICEMIA,
        'S' AS MAGISTRALES,
        'Registro ficticio para pruebas del sistema.' AS OBSERVACIONES
    FROM DUAL
) D
ON (E.CODIGO_ESTABLECIMIENTO = D.CODIGO_ESTABLECIMIENTO)
WHEN NOT MATCHED THEN
    INSERT (
        CODIGO_ESTABLECIMIENTO,
        CODIGO_GRUPO,
        CODIGO_TIPO_ESTABLECIMIENTO,
        CODIGO_REGION,
        CODIGO_MUNICIPIO,
        RAZON_SOCIAL,
        DIRECCION,
        BARRIO,
        TELEFONOS,
        ID_DT,
        NOMBRE_DIRECTOR_TECNICO,
        CODIGO_TITULO,
        ID_PROPIETARIO,
        NOMBRE_PROPIETARIO,
        ID_RL,
        NOMBRE_REPRESENTANTE,
        MATRICULA_MERCANTIL,
        NIT,
        EMAIL,
        CODIGO_ESTADO,
        CODIGO_CONCEPTO_SANITARIO,
        INYECTOLOGIA,
        MCE,
        EAPB,
        VENTAS_A_DISTANCIA,
        TOMA_GLICEMIA,
        MAGISTRALES,
        OBSERVACIONES
    )
    VALUES (
        D.CODIGO_ESTABLECIMIENTO,
        D.CODIGO_GRUPO,
        D.CODIGO_TIPO_ESTABLECIMIENTO,
        D.CODIGO_REGION,
        D.CODIGO_MUNICIPIO,
        D.RAZON_SOCIAL,
        D.DIRECCION,
        D.BARRIO,
        D.TELEFONOS,
        D.ID_DT,
        D.NOMBRE_DIRECTOR_TECNICO,
        D.CODIGO_TITULO,
        D.ID_PROPIETARIO,
        D.NOMBRE_PROPIETARIO,
        D.ID_RL,
        D.NOMBRE_REPRESENTANTE,
        D.MATRICULA_MERCANTIL,
        D.NIT,
        D.EMAIL,
        D.CODIGO_ESTADO,
        D.CODIGO_CONCEPTO_SANITARIO,
        D.INYECTOLOGIA,
        D.MCE,
        D.EAPB,
        D.VENTAS_A_DISTANCIA,
        D.TOMA_GLICEMIA,
        D.MAGISTRALES,
        D.OBSERVACIONES
    );


/* =========================================================
   2. REPORTE Y DETALLE DE PRUEBA
   ========================================================= */

DECLARE
    V_ID_REPORTE             REPORTES.ID_REPORTE%TYPE;
    V_ID_TIPO_NOVEDAD        TIPOS_NOVEDAD.ID_TIPO_NOVEDAD%TYPE;
    V_ID_ESTADO_REPORTE      ESTADOS_REPORTE.ID_ESTADO_REPORTE%TYPE;
    V_ID_TIPO_NOVEDAD_CAMPO  TIPO_NOVEDAD_CAMPOS.ID_TIPO_NOVEDAD_CAMPO%TYPE;
    V_ID_CAMPO               CAMPOS_NOVEDAD.ID_CAMPO%TYPE;
    V_EXISTE                 NUMBER;
BEGIN
    SELECT COUNT(*)
      INTO V_EXISTE
      FROM REPORTES
     WHERE CODIGO_ESTABLECIMIENTO = 'TEST-EST-001'
       AND OBSERVACIONES = 'REPORTE FICTICIO PARA PRUEBAS FRAMED';

    IF V_EXISTE = 0 THEN
        SELECT ID_TIPO_NOVEDAD
          INTO V_ID_TIPO_NOVEDAD
          FROM TIPOS_NOVEDAD
         WHERE CODIGO = 5;

        SELECT ID_ESTADO_REPORTE
          INTO V_ID_ESTADO_REPORTE
          FROM ESTADOS_REPORTE
         WHERE NOMBRE_ESTADO = 'RADICADO';

        INSERT INTO REPORTES (
            CODIGO_ESTABLECIMIENTO,
            ID_TIPO_NOVEDAD,
            ID_ESTADO_REPORTE,
            CODIGO_TIPO_REPORTANTE,
            NOMBRE_REPORTANTE,
            DOCUMENTO_REPORTANTE,
            OBSERVACIONES
        )
        VALUES (
            'TEST-EST-001',
            V_ID_TIPO_NOVEDAD,
            V_ID_ESTADO_REPORTE,
            1,
            'ANA MARÍA GÓMEZ',
            'TEST-CC-001',
            'REPORTE FICTICIO PARA PRUEBAS FRAMED'
        )
        RETURNING ID_REPORTE INTO V_ID_REPORTE;

        SELECT TNC.ID_TIPO_NOVEDAD_CAMPO,
               TNC.ID_CAMPO
          INTO V_ID_TIPO_NOVEDAD_CAMPO,
               V_ID_CAMPO
          FROM TIPO_NOVEDAD_CAMPOS TNC
          INNER JOIN CAMPOS_NOVEDAD CN
                  ON CN.ID_CAMPO = TNC.ID_CAMPO
         WHERE TNC.ID_TIPO_NOVEDAD = V_ID_TIPO_NOVEDAD
           AND CN.ETIQUETA = 'NUEVO NÚMERO TELEFÓNICO';

        INSERT INTO DETALLE_REPORTE (
            ID_REPORTE,
            ID_TIPO_NOVEDAD_CAMPO,
            VALOR
        )
        VALUES (
            V_ID_REPORTE,
            V_ID_TIPO_NOVEDAD_CAMPO,
            '6045559999'
        );

        INSERT INTO HISTORIAL_ACTUALIZACIONES (
            ID_REPORTE,
            CODIGO_ESTABLECIMIENTO,
            ID_CAMPO,
            VALOR_ANTERIOR,
            VALOR_NUEVO
        )
        VALUES (
            V_ID_REPORTE,
            'TEST-EST-001',
            V_ID_CAMPO,
            '6045551001',
            '6045559999'
        );
    END IF;
END;
/


/* =========================================================
   3. CONFIRMACIÓN
   ========================================================= */

COMMIT;


/* =========================================================
   CONSULTAS SUGERIDAS PARA VALIDACIÓN

   SELECT * FROM VW_ESTABLECIMIENTOS_COMPLETOS
   WHERE CODIGO_ESTABLECIMIENTO LIKE 'TEST-%';

   SELECT * FROM VW_REPORTES_COMPLETOS
   WHERE CODIGO_ESTABLECIMIENTO = 'TEST-EST-001';

   SELECT * FROM VW_DETALLE_NOVEDADES
   WHERE CODIGO_ESTABLECIMIENTO = 'TEST-EST-001';

   SELECT * FROM VW_HISTORIAL_ACTUALIZACIONES
   WHERE CODIGO_ESTABLECIMIENTO = 'TEST-EST-001';
   ========================================================= */
