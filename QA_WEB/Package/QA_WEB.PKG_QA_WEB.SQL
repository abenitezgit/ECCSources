--DATE: 13-NOV-2017s
CREATE OR REPLACE PACKAGE QA_WEB.PKG_QA_WEB
AS
    TYPE T_CURSOR IS REF CURSOR;
    PROCEDURE LOGIN(PUSUARIO IN VARCHAR2, PPASS IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE CAMBIO_CLAVE(PUSUARIO IN VARCHAR2, PACTUAL IN VARCHAR2, PNUEVA IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE CARGA_DATA(IO_CURSOR IN OUT T_CURSOR, 
                         IO_CURSOR2 IN OUT T_CURSOR, 
                         IO_CURSOR3 IN OUT T_CURSOR, 
                         IO_CURSOR4 IN OUT T_CURSOR,
                         IO_CURSOR5 IN OUT T_CURSOR,
                         IO_CURSOR6 IN OUT T_CURSOR,
                         IO_CURSOR7 IN OUT T_CURSOR,
                         PERROR OUT VARCHAR2);
    PROCEDURE CARGA_TICKET(PFECHA_INICIO VARCHAR,PFECHA_FIN VARCHAR, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE CARGA_SGP(PTICKET IN VARCHAR2, PSUB_TICKET IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, IO_CURSOR2 IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE INGRESAR_PLANIFICACION(PTICKET IN VARCHAR2,       
                                     PFECHA_PLANIFICACION IN VARCHAR2,
                                     PFECHA_QA IN VARCHAR2,                                                               
                                     PFECHA_PROD IN VARCHAR2,
                                     PHORAS_DESA IN VARCHAR2,
                                     PIDTIPODESA IN VARCHAR2,
                                     PTIPO_DESARROLLO IN VARCHAR2,
                                     PIDVISADOR IN VARCHAR2,                                                                  
                                     PVISADOR IN VARCHAR2,
                                     PCLIENTE IN VARCHAR2,
                                     PFECHA_SGA IN VARCHAR2,
                                     PIDPRIORIDAD IN VARCHAR2,
                                     PPRIORIDAD IN VARCHAR2,
                                     PPASAPORQA IN VARCHAR2,
                                     PDETALLE_SGP IN VARCHAR2,  
                                     POBSERVACIONES_HIST IN VARCHAR2, 
                                     POBSERVACIONES IN VARCHAR2,                            
                                     PUSUARIO IN VARCHAR2, 
                                     PID_ITSM IN VARCHAR2,
                                     PITSM IN VARCHAR2,
                                     PCOLOR IN VARCHAR2,
                                     PNORMAQA IN VARCHAR2,
                                     IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE VER_PLANIFICACION(PTICKET IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);                                     
    PROCEDURE MODIFICAR_PLANIFICACION(PTICKET IN VARCHAR2,
                                   PFECHA_PLANIFICACION IN VARCHAR2,                                   
                                   PFECHA_QA IN VARCHAR2,
                                   PFECHA_REAL IN VARCHAR2,
                                   PFECHA_PROD IN VARCHAR2,
                                   PFECHA_PROD_REAL IN VARCHAR2,
                                   PHORAS_DESA IN VARCHAR2,
                                   PID_TIPO_DESARROLLO IN VARCHAR2,
                                   PTIPO_DESARROLLO IN VARCHAR2,
                                   PID_VISADOR IN VARCHAR2,
                                   PVISADOR IN VARCHAR2,
                                   PCLIENTE IN VARCHAR2,
                                   PID_ITSM IN VARCHAR2,
                                   PITSM IN VARCHAR2,
                                   PID_PRIORIDAD IN VARCHAR2,
                                   PPRIORIDAD IN VARCHAR2,
                                   PPASAPORQA IN VARCHAR2,
                                   POBSERVACIONES_HIST IN VARCHAR2,
                                   POBSERVACIONES IN VARCHAR2,
                                   PUSUARIO_MOD IN VARCHAR2,
                                   PNORMAQA IN VARCHAR2,
                                   IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);            
PROCEDURE CARGA_INICIO( IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
PROCEDURE VER_HISTORIAL(PTICKET IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
PROCEDURE VER_VISACION(PTICKET IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
PROCEDURE CARGAR_VISACION(PTICKET IN VARCHAR2,PAPLICACION IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
PROCEDURE INGRESAR_VISACION(PTICKET IN VARCHAR2,       
                                     PFECHA_RECEPCION IN VARCHAR2,
                                     PFECHA_INICIO IN VARCHAR2,                                                               
                                     PFECHA_TERMINO IN VARCHAR2,
                                     PHORAS_DESA IN VARCHAR2,
                                     PTIEMPO_TOTAL IN VARCHAR2,
                                     PDESCRIPCION IN VARCHAR2,
                                     PCLIENTE IN VARCHAR2,   
                                     PTIPO_DESA IN VARCHAR2, 
                                     PTIPO_QA IN VARCHAR2, 
                                     PRESULTADO_VISACION IN VARCHAR2,
                                     PNUMERO_VISACION IN VARCHAR2,  
                                     PITSM IN VARCHAR2,   
                                     PPROGRAMADOR IN VARCHAR2,                                            
                                     PVISADOR IN VARCHAR2,
                                     PESTADO_VISACION IN VARCHAR2,
                                     PTIPO_APLICACION IN VARCHAR2,
                                     POBJETOS_PRODUCCION IN VARCHAR2,
                                     PFALLA_VISACION IN VARCHAR2,
                                     PTIPO_ERROR IN VARCHAR2,
                                     PID_ITSM IN VARCHAR2,           
                                     PID_PROGRAMADOR IN VARCHAR2,      
                                     PID_VISADOR IN VARCHAR2,         
                                     PID_TIPO_APLICACION IN VARCHAR2,
                                     IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE HORAS_VISACION(PFECHA_INICIO VARCHAR,PFECHA_FIN VARCHAR, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE NUMEROVISACION(PTICKET IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);     
    PROCEDURE VER_NUMERO_VISACION(PTICKET IN VARCHAR2, PNUMERO VARCHAR2,PAPLICACION VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);  
    PROCEDURE AGREGAR_FEEDBACK(PTICKET IN VARCHAR2,PFEEDBACK IN VARCHAR2,IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);    
    PROCEDURE AGREGAR_CUMPLIMIENTO(PTICKET IN VARCHAR2,PCUMPLIMIENTOQA IN VARCHAR2,PCUMPLIMIENTOCLIENTE IN VARCHAR2,IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);             
    PROCEDURE VER_FEEDBACK(PTICKET IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE CARGAUSUARIOS(IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE CARGA_PERFIL(IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE VER_USUARIOS(PUSUARIO VARCHAR2,IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE INGRESAR_USUARIO(PUSUARIO IN VARCHAR2,       
                                 PNOMBRE IN VARCHAR2,
                                 PAPELLIDOPA IN VARCHAR2,                                                               
                                 PAPELLIDOMA IN VARCHAR2,
                                 PCARGO IN VARCHAR2,
                                 PCORREO IN VARCHAR2,
                                 PPERFIL IN VARCHAR2,
                                 PIDPERFIL IN VARCHAR2,                                                                  
                                 PPASS IN VARCHAR2,
                                 PESTADO IN VARCHAR2,
                                 IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
   PROCEDURE MODIFICAR_USUARIO(PUSUARIO IN VARCHAR2,       
                                 PNOMBRE IN VARCHAR2,
                                 PAPELLIDOPA IN VARCHAR2,                                                               
                                 PAPELLIDOMA IN VARCHAR2,
                                 PCARGO IN VARCHAR2,
                                 PCORREO IN VARCHAR2,
                                 PPERFIL IN VARCHAR2,
                                 PIDPERFIL IN VARCHAR2,                                                                  
                                 PPASS IN VARCHAR2,
                                 PESTADO IN VARCHAR2,
                                 IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
     PROCEDURE MODIFICAR_USUARIO_ESTANDAR(PUSUARIO IN VARCHAR2,       
                                         PNOMBRE IN VARCHAR2,
                                         PAPELLIDOPA IN VARCHAR2,                                                               
                                         PAPELLIDOMA IN VARCHAR2,
                                         PCORREO IN VARCHAR2,                                           
                                         PPASS IN VARCHAR2,
                                         IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);  
    PROCEDURE CARGA_TICKET_SLA(PFECHA_INICIO VARCHAR,PFECHA_FIN VARCHAR, IO_CURSOR IN OUT T_CURSOR, IO_CURSOR2 IN OUT T_CURSOR,IO_CURSOR3 IN OUT T_CURSOR, PERROR OUT VARCHAR2);  
    PROCEDURE CARGA_LISTA_TICKET(PFECHA_INICIO VARCHAR,PFECHA_FIN VARCHAR, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);                                                                                   
    PROCEDURE CARGA_LISTA_PLANIFICACION(PFECHA_INICIO VARCHAR,PFECHA_FIN VARCHAR,PTICKET VARCHAR, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE CAMBIAR_ESTADO(PTICKET VARCHAR,IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE BUSCAR_APLICACION(PTICKET in VARCHAR,IO_CURSOR IN OUT T_CURSOR,IO_CURSOR2 IN OUT T_CURSOR,PERROR OUT VARCHAR2);
    PROCEDURE BUSCAR_RECOMENDACION (PTICKET IN VARCHAR2,PAPLICACION   VARCHAR2,PNUMERO VARCHAR2,IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE BUSCAR_NUMERO(PTICKET IN VARCHAR2,PAPLICACION IN VARCHAR2,IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE INGRESAR_RECOMENDACION(PTICKET IN VARCHAR2,       
                                 PAPLICACION IN VARCHAR2,
                                 PNUMERO_APLICACION IN VARCHAR2,                                                               
                                 PNUMERO IN VARCHAR2,
                                 PTIPO_ERROR IN VARCHAR2,
                                 PRESPONSABLE IN VARCHAR2,
                                 PDESCRIPCION IN VARCHAR2,
                                 PRESULTADO IN VARCHAR2,   
                                 PUSUARIO IN VARCHAR2, 
                                 IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE MODIFICAR_RESULTADO(PTICKET IN VARCHAR2,
                                  PNUMERO IN VARCHAR2,
                                  PAPLICACION IN VARCHAR2,
                                  PNUMERO_APLICACION IN VARCHAR2,
                                  PRESULTADO IN VARCHAR2, 
                                  IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);                                
    PROCEDURE ELIMINAR_RECOMENDACIONES(PTICKET IN VARCHAR2,
                                        PAPLICACION IN VARCHAR2,
                                        PNUMERO IN VARCHAR2,
                                        IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE MODIFICAR_ESTADO_RECO(PTICKET IN VARCHAR2,
                                    PAPLICACION IN VARCHAR2,
                                    PNUMERO_APLICACION IN VARCHAR2,
                                    PESTADO IN VARCHAR2,
                                    IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE VER_CORREO(PUSUARIO IN VARCHAR2, PTICKET IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE CARGA_CMB(IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE FECHA_PROD(PFECHAA IN VARCHAR2,PFECHAM IN VARCHAR2,IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE CONTADORMES(PFECHA IN VARCHAR2,IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE BARRA_PANEL(PFECHA1 IN VARCHAR2,PFECHA2 IN VARCHAR2,IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);       
    PROCEDURE GRAFICOS_DONUT(PFECHA IN VARCHAR2,IO_CURSOR IN OUT T_CURSOR,IO_CURSOR2 IN OUT T_CURSOR,IO_CURSOR3 IN OUT T_CURSOR, IO_CURSOR4 IN OUT T_CURSOR, IO_CURSOR5 IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE CARGA_GRAFICOS(PFECHA IN VARCHAR2,IO_CURSOR IN OUT T_CURSOR,IO_CURSOR2 IN OUT T_CURSOR,IO_CURSOR3 IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE BUSCAR_T_F(PTICKET IN VARCHAR2,PFECHAINI IN VARCHAR2,PFECHAFIN IN VARCHAR2,IO_CURSOR IN OUT T_CURSOR,IO_CURSOR2 IN OUT T_CURSOR,IO_CURSOR3 IN OUT T_CURSOR, PERROR OUT VARCHAR2);                                              
    PROCEDURE AGREGAR_DETALLE(PSEMANA IN VARCHAR2,
                             PESTADO IN VARCHAR2,
                             PTICKET IN VARCHAR2,
                             PFECHAQA IN VARCHAR2,
                             PFECHAPROD IN VARCHAR2,
                             PFECHAREAL IN VARCHAR2,
                             PDESCRIPCION IN VARCHAR2,
                             PRESPONSABILIDAD IN VARCHAR2,
                             PPRIORIADAD IN VARCHAR2,
                             IO_CURSOR IN OUT T_CURSOR,
                             PERROR OUT VARCHAR2);
     PROCEDURE TICKET_DETALLE(PTICKET IN VARCHAR2,IO_CURSOR IN OUT T_CURSOR,PERROR OUT VARCHAR2);
     PROCEDURE HISTORIAL_DETALLE(IO_CURSOR IN OUT T_CURSOR,PERROR OUT VARCHAR2);
     PROCEDURE ELIMINAR_DETALLE(PTICKET IN VARCHAR2,IO_CURSOR IN OUT T_CURSOR,PERROR OUT VARCHAR2);
     PROCEDURE MODIFICAR_DETALLE(PESTADO IN VARCHAR2,
                             PTICKET IN VARCHAR2,
                             PFECHAQA IN VARCHAR2,
                             PFECHAPROD IN VARCHAR2,
                             PFECHAREAL IN VARCHAR2,
                             PDESCRIPCION IN VARCHAR2,
                             PRESPONSABILIDAD IN VARCHAR2,
                             PPRIORIADAD IN VARCHAR2,
                             IO_CURSOR IN OUT T_CURSOR,
                             PERROR OUT VARCHAR2);
    PROCEDURE GRAFICO_PLANILLA(PFECHA_INICIO VARCHAR,PFECHA_FIN VARCHAR, IO_CURSOR IN OUT T_CURSOR,PERROR OUT VARCHAR2);
    PROCEDURE BUSCAR_PASOSQA(PTICKET IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR,PERROR OUT VARCHAR2);
    PROCEDURE ELIMINAR_TICKET(PTICKET IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE INICIAR_PAUSA(PTICKET IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    PROCEDURE DETENER_PAUSA(PTICKET IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2);
    END;

CREATE OR REPLACE PACKAGE BODY QA_WEB.PKG_QA_WEB 
AS
    
    PROCEDURE LOGIN(PUSUARIO IN VARCHAR2, PPASS IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2) 
    IS    

    BEGIN
        PERROR:='OK';
        
        OPEN IO_CURSOR FOR
        SELECT
            USUARIO,
            INITCAP(NOMBRES || ' ' || A_PATERNO) AS "NOMBRE",
            INITCAP(CARGO) AS "CARGO",
            CORREO,
            PERFIL
        FROM
            TB_QA_WEB_USUARIO
        WHERE 
            USUARIO = SUBSTR(PUSUARIO, 1, 15)
        AND
            PASS = SUBSTR(PPASS, 1, 15);
                   
    EXCEPTION 
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;  
    END LOGIN;
    
    PROCEDURE CAMBIO_CLAVE(PUSUARIO IN VARCHAR2, PACTUAL IN VARCHAR2, PNUEVA IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    
    V_AUX NUMBER;
    
    BEGIN
        PERROR := 'OK';
        
        SELECT
            COUNT(*) INTO V_AUX
        FROM
            TB_QA_WEB_USUARIO
        WHERE
            USUARIO = SUBSTR(PUSUARIO, 1, 15)
        AND
            PASS = SUBSTR(PACTUAL, 1, 15);
        
        IF V_AUX > 0 THEN
        
            OPEN IO_CURSOR FOR
            SELECT
                'OK' RESULTADO
            FROM
                DUAL;
            
            UPDATE 
                TB_QA_WEB_USUARIO
            SET
                PASS = SUBSTR(PNUEVA, 1, 15)
            WHERE
                USUARIO = SUBSTR(PUSUARIO, 1, 15);
        
        ELSE
        
            OPEN IO_CURSOR FOR
            SELECT
                'NOK' RESULTADO
            FROM
                DUAL;
        
        END IF;
    
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END CAMBIO_CLAVE;
    
    PROCEDURE CARGA_DATA(IO_CURSOR IN OUT T_CURSOR, 
                         IO_CURSOR2 IN OUT T_CURSOR, 
                         IO_CURSOR3 IN OUT T_CURSOR, 
                         IO_CURSOR4 IN OUT T_CURSOR,
                         IO_CURSOR5 IN OUT T_CURSOR,
                         IO_CURSOR6 IN OUT T_CURSOR,
                         IO_CURSOR7 IN OUT T_CURSOR,
                         PERROR OUT VARCHAR2)
    IS
    BEGIN
        PERROR := 'OK';
        
        --INFO VISADOR--
        OPEN IO_CURSOR FOR
        SELECT
            TRIM(USUARIO) AS "USUARIO",
            INITCAP(NOMBRES || ' ' || A_PATERNO) AS "NOMBRE"
        FROM
            TB_QA_WEB_USUARIO 
        WHERE
            ID_PERFIL IN (1, 2)
        AND
            ESTADO = 'ACTIVO'
        ORDER BY
            NOMBRES;
            
        --INFO ITSM--
        OPEN IO_CURSOR2 FOR
        SELECT
            TRIM(USUARIO) AS "ID_PERFIL",
            INITCAP(NOMBRES || ' ' || A_PATERNO) AS "NOMBRE"
        FROM
            TB_QA_WEB_USUARIO 
        WHERE
            ID_PERFIL = 4
        AND
            ESTADO = 'ACTIVO'
        ORDER BY
            NOMBRES; 
              
             --INFO PROGRAMADOR--
        OPEN IO_CURSOR3 FOR
        SELECT
            TRIM(USUARIO) AS "ID_PERFIL",
            INITCAP(NOMBRES || ' ' || A_PATERNO) AS "NOMBRE"
        FROM
            TB_QA_WEB_USUARIO 
        WHERE
            ID_PERFIL = 3
        AND
            ESTADO = 'ACTIVO'
        ORDER BY
            NOMBRES;   
            
        --INFO PRIORIDAD--
        OPEN IO_CURSOR4 FOR
        SELECT 
               ID_PRIORIDAD,
               DESCRIPCION            
        FROM
            TB_QA_WEB_PRIORIDAD 
         ORDER BY
            DESCRIPCION;
            
        --INFO CLIENTE-- 
        OPEN IO_CURSOR5 FOR
        SELECT DISTINCT
            T05_NOMBRE_CLIENTE,
            DESCRIPCION
        FROM
            (SELECT
                REPLACE(REPLACE(REPLACE(TRIM(T05_NOMBRE_CLIENTE), '.', ''), '-', ''), ' ', '_') AS "T05_NOMBRE_CLIENTE",
                T05_NOMBRE_CLIENTE AS "DESCRIPCION"
            FROM
                SGP.T05_CLIENTES@lk_ar5test)
          WHERE 
                T05_NOMBRE_CLIENTE <> '.'
            ORDER BY 
                 T05_NOMBRE_CLIENTE ASC;
            
        --INFO TIPO DESAARROLLO--
        OPEN IO_CURSOR6 FOR
        SELECT 
               ID_TIPO_DESARROLLO,
               DESCRIPCION            
        FROM
            TB_QA_WEB_TIPO_DESARROLLO   
        ORDER BY
            DESCRIPCION;   
            
        --INFO ESTADO--
        OPEN IO_CURSOR7 FOR
        SELECT 
               ID_ESTADO,
               DESCRIPCION            
        FROM
            TB_QA_WEB_ESTADO  
        ORDER BY
            DESCRIPCION;
            
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    
    END CARGA_DATA;
    
    PROCEDURE CARGA_INICIO( IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS

    BEGIN

        PERROR := 'OK';

        OPEN IO_CURSOR FOR
        SELECT 
            TICKET,
            CLIENTE,
            PRIORIDAD,
            FECHA_QA,
            FECHA_QA_REAL,
            FECHA_PRODUCCION,
            FECHA_PRODUCCION_REAL,
            PASO_POR_QA,
            ESTADO
        FROM 
            TB_QA_WEB_PLANIFICACION
        WHERE
            ID_ESTADO <> '1'
        AND
            ID_ESTADO <> '6'    
        ORDER BY 
            TO_DATE(FECHA_QA, 'DD/MM/RRRR HH24:MI') DESC;          
       
         
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END CARGA_INICIO;
    
    PROCEDURE CARGA_TICKET(PFECHA_INICIO VARCHAR,PFECHA_FIN VARCHAR, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS

    BEGIN

        PERROR := 'OK';

        OPEN IO_CURSOR FOR
        SELECT 
            TICKET,
            CLIENTE,
            PRIORIDAD,
            FECHA_QA,
            FECHA_QA_REAL,
            FECHA_PRODUCCION,
            FECHA_PRODUCCION_REAL,
            PASO_POR_QA,
            ESTADO
            
        FROM 
            TB_QA_WEB_PLANIFICACION
        WHERE
            TO_DATE(SUBSTR(FECHA_QA, 1, 10), 'DD/MM/RRRR') >= TO_DATE(PFECHA_INICIO, 'DD/MM/RRRR')
        AND
            TO_DATE(SUBSTR(FECHA_QA, 1, 10), 'DD/MM/RRRR') <= TO_DATE(PFECHA_FIN, 'DD/MM/RRRR')
        AND
            ID_ESTADO <> '1'
        AND
            ID_ESTADO <> '6'
        ORDER BY
            TO_DATE(FECHA_QA, 'DD/MM/RRRR HH24:MI') DESC;                
            
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END CARGA_TICKET;
    
    PROCEDURE CARGA_SGP(PTICKET IN VARCHAR2, PSUB_TICKET IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR , IO_CURSOR2 IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    P_AUX NUMBER;
    BEGIN
        PERROR := 'OK';
    
        IF PSUB_TICKET = '0' THEN
            SELECT 
                COUNT(*) INTO P_AUX
            FROM 
                TB_QA_WEB_PLANIFICACION
            WHERE 
                TICKET = SUBSTR(PTICKET, 1, 8);
        ELSE
            SELECT 
                COUNT(*) INTO P_AUX
            FROM 
                TB_QA_WEB_PLANIFICACION
            WHERE 
                TICKET = SUBSTR(PTICKET, 1, 8) || '-' || SUBSTR(PSUB_TICKET, 1, 2);
        END IF;
        
        IF P_AUX > 0 THEN
            OPEN IO_CURSOR FOR
            SELECT
                '' AS "T04_CODIGO_TICKET_PT",
                '' AS "T04_CODIGO_TICKET_ST",
                '' AS "T04_HORAS_FACTURACION_TICKET01",
                '' AS "T05_CLIENTE",
                '' AS "T04_FHCT",
                '' AS "DESCRIPCION",
                'NOK' AS "RESULTADO"
            FROM
                DUAL;
        ELSE       
        
            OPEN IO_CURSOR FOR
            SELECT
                TO_CHAR(T04_CODIGO_TICKET_PT) AS "T04_CODIGO_TICKET_PT",
                TO_CHAR(T04_CODIGO_TICKET_ST) AS "T04_CODIGO_TICKET_ST",
                TO_CHAR(T04_HORAS_FACTURACION_TICKET01) AS "T04_HORAS_FACTURACION_TICKET01",
                REPLACE(REPLACE(REPLACE(TRIM(TO_CHAR(T05_CLIENTE)), '.', ''), '-', ''), ' ', '_') AS "T05_CLIENTE",
                TO_CHAR(T04_FHCT, 'DD/MM/RRRR HH24:MI') AS "T04_FHCT",
                TO_CHAR(T04_NOMBRE_REQUERIMEINTO) AS "DESCRIPCION",
                'OK' AS "RESULTADO"
            FROM
                SGP.T04_GENERA_TICKET@lk_ar5test
            WHERE
                T04_CODIGO_TICKET_PT = TO_NUMBER(PTICKET)
            AND
                T04_CODIGO_TICKET_ST = TO_NUMBER(PSUB_TICKET);
        END IF;
        
        
        OPEN IO_CURSOR2 FOR
        SELECT

            FECHA_QA,
            SEMANA,
            FECHA_REAL,
            DESCRIPCION

        FROM
            TB_QAWEB_DETALLE
        WHERE
        TICKET=PTICKET;


        
        
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    
    END CARGA_SGP;
    
    PROCEDURE VER_PLANIFICACION(PTICKET IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    
    BEGIN
        PERROR := 'OK';
        
        OPEN IO_CURSOR FOR
        SELECT
            TICKET,
            FECHA_PLANIFICACION,
            FECHA_QA,
            FECHA_QA_REAL,
            FECHA_PRODUCCION,
            FECHA_PRODUCCION_REAL,
            HORAS_DESARROLLO,
            ID_TIPO_DESARROLLO,
            TIPO_DESARROLLO,
            ID_VISADOR,
            VISADOR,
            REPLACE(REPLACE(REPLACE(TRIM(CLIENTE), '.', ''), '-', ''), ' ', '_') AS "CLIENTE",
            FECHA_SGP,
            ID_PRIORIDAD,
            PRIORIDAD,
            PASO_POR_QA,
            DETALLE_SGP,
            HISTORIAL,
            USUARIO,
            ITSM,
            ID_ITSM,
            ESTADO,
            NORMA_QA,
            BOTON_PAUSA
        FROM
            TB_QA_WEB_PLANIFICACION
        WHERE
            TICKET = SUBSTR(PTICKET,  1, 8);
    
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END VER_PLANIFICACION;
    
    PROCEDURE INGRESAR_PLANIFICACION(PTICKET IN VARCHAR2,       
                                     PFECHA_PLANIFICACION IN VARCHAR2,
                                     PFECHA_QA IN VARCHAR2,                                                               
                                     PFECHA_PROD IN VARCHAR2,
                                     PHORAS_DESA IN VARCHAR2,
                                     PIDTIPODESA IN VARCHAR2,
                                     PTIPO_DESARROLLO IN VARCHAR2,
                                     PIDVISADOR IN VARCHAR2,                                                                  
                                     PVISADOR IN VARCHAR2,
                                     PCLIENTE IN VARCHAR2,
                                     PFECHA_SGA IN VARCHAR2,
                                     PIDPRIORIDAD IN VARCHAR2,
                                     PPRIORIDAD IN VARCHAR2,
                                     PPASAPORQA IN VARCHAR2,
                                     PDETALLE_SGP IN VARCHAR2,  
                                     POBSERVACIONES_HIST IN VARCHAR2, 
                                     POBSERVACIONES IN VARCHAR2,                            
                                     PUSUARIO IN VARCHAR2, 
                                     PID_ITSM IN VARCHAR2,
                                     PITSM IN VARCHAR2,
                                     PCOLOR IN VARCHAR2,
                                     PNORMAQA IN VARCHAR2,
                                     IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    
    P_AUX NUMBER;
    V_OLA NUMBER;
    V_EXISTE NUMBER;
    V_NEWFECHA VARCHAR2(16);
    
    BEGIN
        PERROR := 'OK';
    
        SELECT 
            COUNT(*) INTO P_AUX
        FROM 
            TB_QA_WEB_PLANIFICACION
        WHERE 
            TICKET = SUBSTR(PTICKET, 1, 8);
        
        IF P_AUX > 0 THEN
        
            OPEN IO_CURSOR FOR
            SELECT
                'NOK' RESULTADO
            FROM
                DUAL;
        
        ELSE       
        
            INSERT INTO TB_QA_WEB_PLANIFICACION (
                TICKET,               
                FECHA_INGRESO,         
                FECHA_PLANIFICACION,
                FECHA_QA          ,
                FECHA_PRODUCCION,
                HORAS_DESARROLLO,
                ID_TIPO_DESARROLLO,
                TIPO_DESARROLLO,
                ID_VISADOR,
                VISADOR,
                CLIENTE,
                FECHA_SGP,
                ID_PRIORIDAD,
                PRIORIDAD,
                PASO_POR_QA,
                DETALLE_SGP,
                ID_ESTADO,              
                ESTADO, 
                HISTORIAL,                
                USUARIO,   
                ITSM,     
                ID_ITSM,
                NORMA_QA 
            ) VALUES (
                SUBSTR(PTICKET, 1, 8),
                TO_CHAR(SYSDATE, 'DD/MM/RRRR HH24:MI'),
                SUBSTR(PFECHA_PLANIFICACION, 1, 10),
                SUBSTR(PFECHA_QA, 1, 16),
                SUBSTR(PFECHA_PROD, 1, 10),
                SUBSTR(PHORAS_DESA, 1, 4),
                SUBSTR(PIDTIPODESA, 1, 2),
                SUBSTR(PTIPO_DESARROLLO, 1, 30),
                SUBSTR(PIDVISADOR, 1, 15),
                SUBSTR(PVISADOR, 1, 15),
                SUBSTR(PCLIENTE, 1, 100),
                SUBSTR(PFECHA_SGA, 1, 16),
                SUBSTR(PIDPRIORIDAD, 1,2 ), 
                SUBSTR(PPRIORIDAD, 1, 15),
                SUBSTR(PPASAPORQA, 1, 2),
                SUBSTR(PDETALLE_SGP, 1, 1000),
                '5',
                'INGRESADO',
                SUBSTR(POBSERVACIONES_HIST,1 , 2000),
                SUBSTR(PUSUARIO, 1, 15),
                SUBSTR(PITSM,  1 , 30),
                SUBSTR(PID_ITSM, 1 , 15 ),
                SUBSTR(PNORMAQA, 1, 2)
            );
                
            INSERT INTO TB_QA_WEB_PLANIFICACION_HIST(
                ID_HISTORIAL_PLANIFICACION,  
                TICKET,                     
                FECHA_QA,      
                FECHA_PRODUCCION,           
                OBSERVACIONES,               
                FECHA_INGRESO_HISTORIAL,
                HORAS_DESARROLLO,          
                TIPO_DESARROLLO,            
                CLIENTE,                     
                VISADOR,                    
                PRIORIDADD,                
                PASAQA,                     
                FECHA_PLANIFICACION  
            ) VALUES (
                SEC_QA_WEB_PLANIFICACION_HIST.NEXTVAL,
                SUBSTR(PTICKET, 1, 8),
                SUBSTR(PFECHA_QA, 1, 16),
                SUBSTR(PFECHA_PROD, 1, 16), 
                SUBSTR(POBSERVACIONES, 1, 400),            
                TO_CHAR(SYSDATE, 'DD/MM/RRRR HH24:MI'),
                SUBSTR(PHORAS_DESA, 1, 4),
                SUBSTR(PTIPO_DESARROLLO, 1, 30),
                SUBSTR(PCLIENTE, 1, 100),
                SUBSTR(PVISADOR, 1, 50),
                SUBSTR(PPRIORIDAD, 1, 20),
                SUBSTR(PPASAPORQA, 1, 2),
                SUBSTR(PFECHA_PLANIFICACION, 1, 10)
            );
            
            
            -- DATOS CALENDARIO --
            SELECT
                COUNT(*) INTO V_EXISTE
            FROM
                TB_QA_WEB_CALENDARIO
            WHERE
                TICKET = SUBSTR(PTICKET, 1, 8);
            
            IF V_EXISTE < 1 AND PPASAPORQA = 'SI' THEN
            
                IF TO_NUMBER(SUBSTR(PFECHA_QA, 12, 2)) > 17 THEN
                    V_NEWFECHA := SUBSTR(PFECHA_QA, 1, 10) || ' 17:00';
                ELSE
                    V_NEWFECHA := PFECHA_QA;
                END IF;
        
                SELECT
                    VALIDA_SLA(PHORAS_DESA) INTO V_OLA
                FROM
                    DUAL;
                
                INSERT INTO TB_QA_WEB_CALENDARIO(
                    TICKET, 
                    FECHA_INGRESO, 
                    HH_DESA, 
                    OLA, 
                    ID_VISADOR, 
                    ID_ITSM, 
                    ASIG_TK, 
                    FECHA_QA, 
                    FECHA_PROD, 
                    OBSERVACION, 
                    COLOR,
                    FECHA_INICIO, 
                    FECHA_FIN
                ) VALUES (
                    SUBSTR(PTICKET, 1, 8),
                    TO_CHAR(SYSDATE, 'DD/MM/RRRR HH24:MI'),
                    TO_NUMBER(PHORAS_DESA),
                    TO_NUMBER(V_OLA),
                    SUBSTR(PIDVISADOR, 1, 30),
                    SUBSTR(PID_ITSM, 1, 30),
                    DECODE(PIDVISADOR, 'mtgatica', 'MG_' || PTICKET,
                              'cnbarrera', 'CB_' || PTICKET,
                              'fabaroa', 'FA_' || PTICKET,
                              'lrandrade', 'LR_' || PTICKET,
                              'g_practicante', 'PQA_' || PTICKET),
                    SUBSTR(PFECHA_QA, 1, 16),
                    SUBSTR(PFECHA_PROD, 1, 16),
                    SUBSTR(POBSERVACIONES_HIST, 1, 500),
                    SUBSTR(PCOLOR, 1, 20),
                    SUBSTR(PFECHA_QA, 1, 16),
                    TO_CHAR(FN_CALCULA_FECHA_FIN(TO_DATE(V_NEWFECHA, 'DD/MM/RRRR HH24:MI'), TO_NUMBER(V_OLA)), 'DD/MM/RRRR HH24:MI')
                );
                
                COMMIT;
            END IF;
            
            OPEN IO_CURSOR FOR
            SELECT
                'OK' RESULTADO
            FROM
                DUAL;      
                  
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END INGRESAR_PLANIFICACION;

    PROCEDURE MODIFICAR_PLANIFICACION(PTICKET IN VARCHAR2,
                                   PFECHA_PLANIFICACION IN VARCHAR2,                                   
                                   PFECHA_QA IN VARCHAR2,
                                   PFECHA_REAL IN VARCHAR2,
                                   PFECHA_PROD IN VARCHAR2,
                                   PFECHA_PROD_REAL IN VARCHAR2,
                                   PHORAS_DESA IN VARCHAR2,
                                   PID_TIPO_DESARROLLO IN VARCHAR2,
                                   PTIPO_DESARROLLO IN VARCHAR2,
                                   PID_VISADOR IN VARCHAR2,
                                   PVISADOR IN VARCHAR2,
                                   PCLIENTE IN VARCHAR2,
                                   PID_ITSM IN VARCHAR2,
                                   PITSM IN VARCHAR2,
                                   PID_PRIORIDAD IN VARCHAR2,
                                   PPRIORIDAD IN VARCHAR2,
                                   PPASAPORQA IN VARCHAR2,
                                   POBSERVACIONES_HIST IN VARCHAR2,
                                   POBSERVACIONES IN VARCHAR2,
                                   PUSUARIO_MOD IN VARCHAR2,
                                   PNORMAQA IN VARCHAR2,
                                   IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    
    V_ESTADO VARCHAR2(10) := '';
    V_ID_ESTADO NUMBER := 0;
    V_AUX NUMERIC := 0;
    V_OLA NUMERIC;
    V_NEWFECHA VARCHAR2(16);
    
    BEGIN
    
        PERROR := 'OK';
        
        SELECT
            COUNT(*) INTO V_AUX
        FROM
            TB_QA_WEB_VISACION
        WHERE
            TICKET = SUBSTR(PTICKET, 1, 8);
        
        IF V_AUX <= 0 THEN
            IF LENGTH(PFECHA_REAL) > 0 THEN                
                V_ESTADO := 'EN PROCESO';
                V_ID_ESTADO := 2;
            ELSE
                V_ESTADO := 'INGRESADO';
                V_ID_ESTADO := 5;
            END IF;
                
            UPDATE 
                TB_QA_WEB_PLANIFICACION
            SET
                  FECHA_PLANIFICACION = PFECHA_PLANIFICACION,                                   
                  FECHA_QA = PFECHA_QA,
                  FECHA_QA_REAL= PFECHA_REAL,
                  FECHA_PRODUCCION = PFECHA_PROD,
                  FECHA_PRODUCCION_REAL = PFECHA_PROD_REAL,
                  HORAS_DESARROLLO = PHORAS_DESA,
                  ID_TIPO_DESARROLLO = PID_TIPO_DESARROLLO,
                  TIPO_DESARROLLO = PTIPO_DESARROLLO,
                  ID_VISADOR = PID_VISADOR,   
                  VISADOR = PVISADOR,
                  CLIENTE = PCLIENTE,
                  ID_ITSM = PID_ITSM,
                  ITSM  =  PITSM,
                  ID_PRIORIDAD = PID_PRIORIDAD, 
                  PRIORIDAD  = PPRIORIDAD,
                  PASO_POR_QA = PPASAPORQA,
                  ID_ESTADO = V_ID_ESTADO,
                  ESTADO =  V_ESTADO,
                  HISTORIAL = POBSERVACIONES_HIST,
                  NORMA_QA = PNORMAQA
            WHERE
                TICKET = SUBSTR(PTICKET, 1, 8);
                
            COMMIT;
        ELSE
            UPDATE 
                TB_QA_WEB_PLANIFICACION
            SET
                  FECHA_PLANIFICACION = PFECHA_PLANIFICACION,                                   
                  FECHA_QA = PFECHA_QA,
                  FECHA_QA_REAL= PFECHA_REAL,
                  FECHA_PRODUCCION = PFECHA_PROD,
                  FECHA_PRODUCCION_REAL = PFECHA_PROD_REAL,
                  HORAS_DESARROLLO = PHORAS_DESA,
                  ID_TIPO_DESARROLLO = PID_TIPO_DESARROLLO,
                  TIPO_DESARROLLO = PTIPO_DESARROLLO,
                  ID_VISADOR = PID_VISADOR,   
                  VISADOR = PVISADOR,
                  CLIENTE = PCLIENTE,
                  ID_ITSM = PID_ITSM,
                  ITSM  =  PITSM,
                  ID_PRIORIDAD = PID_PRIORIDAD, 
                  PRIORIDAD  = PPRIORIDAD,
                  PASO_POR_QA = PPASAPORQA,
                  HISTORIAL = POBSERVACIONES_HIST,
                  NORMA_QA = PNORMAQA
            WHERE
                TICKET = SUBSTR(PTICKET, 1, 8);
                
            COMMIT;
        END IF;
        
              
                
        INSERT INTO TB_QA_WEB_PLANIFICACION_HIST(
              ID_HISTORIAL_PLANIFICACION,  
              TICKET,                      
              FECHA_QA,                    
              FECHA_REAL,                
              FECHA_PRODUCCION,
              FECHA_PROD_REAL,                       
              OBSERVACIONES,               
              FECHA_INGRESO_HISTORIAL,  
              HORAS_DESARROLLO,           
              TIPO_DESARROLLO,            
              CLIENTE,                   
              VISADOR,                    
              PRIORIDADD,                 
              PASAQA,                      
              FECHA_PLANIFICACION,         
              ITSM     
        )VALUES(
            SEC_QA_WEB_PLANIFICACION_HIST.NEXTVAL,
            SUBSTR(PTICKET, 1, 8),
            SUBSTR(PFECHA_QA, 1, 16),
            SUBSTR(PFECHA_REAL, 1, 16),
            SUBSTR(PFECHA_PROD, 1, 16),
            SUBSTR(PFECHA_PROD_REAL, 1, 16),            
            SUBSTR(POBSERVACIONES, 1, 400),
            TO_CHAR(SYSDATE, 'DD/MM/RRRR HH24:MM'),            
            SUBSTR(PHORAS_DESA, 1, 4),
            SUBSTR(PTIPO_DESARROLLO, 1, 30),
            SUBSTR(PCLIENTE, 1, 100),
            SUBSTR(PVISADOR, 1, 50),
            SUBSTR(PPRIORIDAD, 1, 20),
            SUBSTR(PPASAPORQA, 1, 2),
            SUBSTR(PFECHA_PLANIFICACION, 1, 10),
            SUBSTR(PITSM, 1, 30)
        );
        
        COMMIT;
        
        -- ACTUALZIAR TABLA DE CALENDARIO --
        SELECT
            VALIDA_SLA(PHORAS_DESA) INTO V_OLA
        FROM
            DUAL;
        
        IF TO_NUMBER(SUBSTR(PFECHA_QA, 12, 2)) > 17 THEN
            V_NEWFECHA := SUBSTR(PFECHA_QA, 1, 10) || ' 17:00';
        ELSE
            V_NEWFECHA := PFECHA_QA;
        END IF;
                
        UPDATE 
            TB_QA_WEB_CALENDARIO
        SET 
            HH_DESA = TO_NUMBER(PHORAS_DESA), 
            OLA = TO_NUMBER(V_OLA), 
            ID_VISADOR = SUBSTR(PID_VISADOR, 1, 30), 
            ID_ITSM = SUBSTR(PID_ITSM, 1, 30), 
            ASIG_TK = DECODE(PID_VISADOR, 'mtgatica', 'MG_' || PTICKET,
                                          'cnbarrera', 'CB_' || PTICKET,
                                          'fabaroa', 'FA_' || PTICKET,
                                          'lrandrade', 'LR_' || PTICKET,
                                          'g_practicante', 'PQA_' || PTICKET),
            FECHA_QA = SUBSTR(PFECHA_QA, 1, 16), 
            FECHA_PROD = SUBSTR(PFECHA_PROD, 1, 16), 
            OBSERVACION = SUBSTR(POBSERVACIONES_HIST, 1, 500), 
            FECHA_INICIO = SUBSTR(PFECHA_QA, 1, 16), 
            FECHA_FIN = TO_CHAR(FN_CALCULA_FECHA_FIN(TO_DATE(V_NEWFECHA, 'DD/MM/RRRR HH24:MI'), TO_NUMBER(V_OLA)), 'DD/MM/RRRR HH24:MI')
        WHERE
            TICKET = SUBSTR(PTICKET, 1, 8);
        
        OPEN IO_CURSOR FOR
        SELECT
            'OK' RESULTADO
        FROM
            DUAL;
        
        COMMIT;
    
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END MODIFICAR_PLANIFICACION;
    
    PROCEDURE VER_HISTORIAL(PTICKET IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    BEGIN
        PERROR := 'OK';
        
        OPEN IO_CURSOR FOR
        SELECT 
           TICKET,
           FECHA_INGRESO_HISTORIAL,
           FECHA_QA,
           FECHA_REAL,
           FECHA_PRODUCCION,
           FECHA_PROD_REAL,
           VISADOR,
           HORAS_DESARROLLO,
           TIPO_DESARROLLO,
           CLIENTE,
           PRIORIDADD,
           PASAQA,
           OBSERVACIONES
        FROM
           TB_QA_WEB_PLANIFICACION_HIST
        WHERE
           TICKET = SUBSTR(PTICKET,  1, 8);
    
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END VER_HISTORIAL;
    PROCEDURE VER_VISACION(PTICKET IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    BEGIN
        PERROR := 'OK';
        
        OPEN IO_CURSOR FOR
        SELECT
              TICKET,              
              FECHA_RECEPCION,    
              FECHA_INICIO,        
              FECHA_TERMINO,       
              HORAS_DESARROLLO,   
              TIEMPO_TOTAL,      
              DESCRIPCION,        
              REPLACE(REPLACE(REPLACE(TRIM(CLIENTE), '.', ''), '-', ''), ' ', '_') AS "CLIENTE",         
              REPLACE(TRIM(TIPO_DESARROLLO), ' ', '') AS "TIPO_DESARROLLO",
              REPLACE(TRIM(TIPO_QA), ' ', '') AS "TIPO_QA",            
              REPLACE(REPLACE(TRIM(RESULTADO_VISACION), ' ', ''), '/', '') AS "RESULTADO_VISACION",
              NUMERO_VISACION, 
              ITSM,               
              PROGRAMADOR,        
              VISADOR,             
              REPLACE(REPLACE(TRIM(ESTADO_VISACION), ' ', ''), '/', '') AS "ESTADO_VISACION",    
              TIPO_APLICACION,     
              REPLACE(REPLACE(TRIM(OBJETOS_PRODUCCION), ' ', ''), '/', '') AS "OBJETOS_PRODUCCION",  
              REPLACE(TRIM(FALLA_VISACION), ' ', '') AS "FALLA_VISACION"
              
        FROM
            TB_QA_WEB_VISACION
        WHERE
            TICKET = SUBSTR(PTICKET,  1, 8);
    
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END VER_VISACION; 
       
    PROCEDURE CARGAR_VISACION(PTICKET IN VARCHAR2,PAPLICACION IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    P_AUX NUMBER;
    P_MAX NUMBER;
    BEGIN
        PERROR := 'OK';
    
        SELECT 
            COUNT(*) INTO P_AUX
        FROM 
            TB_QA_WEB_VISACION
        WHERE 
            TICKET = SUBSTR(PTICKET, 1, 8)
        AND 
            TIPO_APLICACION = PAPLICACION;
            
        SELECT
            MAX(TO_NUMBER(NUMERO_VISACION)) INTO P_MAX
        FROM 
            TB_QA_WEB_VISACION
        WHERE 
            TICKET = SUBSTR(PTICKET, 1, 8)
            AND
            TIPO_APLICACION = PAPLICACION;
            
        IF P_AUX >= 1 THEN
            
            OPEN IO_CURSOR FOR
            SELECT
                TICKET,              
                FECHA_RECEPCION,    
                FECHA_INICIO,        
                FECHA_TERMINO,       
                HORAS_DESARROLLO,   
                TIEMPO_TOTAL,      
                DESCRIPCION,        
                REPLACE(REPLACE(REPLACE(TRIM(CLIENTE), '.', ''), '-', ''), ' ', '_') AS "CLIENTE",         
                REPLACE(TRIM(TIPO_DESARROLLO), ' ', '') AS "TIPO_DESARROLLO",
                REPLACE(TRIM(TIPO_QA), ' ', '') AS "TIPO_QA",            
                REPLACE(REPLACE(TRIM(RESULTADO_VISACION), ' ', ''), '/', '') AS "RESULTADO_VISACION",
                NUMERO_VISACION, 
                ID_ITSM,               
                ID_PROGRAMADOR,        
                ID_VISADOR,             
                REPLACE(REPLACE(TRIM(ESTADO_VISACION), ' ', ''), '/', '') AS "ESTADO_VISACION",    
                ID_TIPO_APLICACION AS "ID_TIPO_DESARROLLO",     
                REPLACE(REPLACE(TRIM(OBJETOS_PRODUCCION), ' ', ''), '/', '') AS "OBJETOS_PRODUCCION",  
                REPLACE(TRIM(FALLA_VISACION), ' ', '') AS "FALLA_VISACION",
                'VISA' AS "TIPO"        
            FROM
                TB_QA_WEB_VISACION
            WHERE
                TICKET = SUBSTR(PTICKET,  1, 8)
            AND
                NUMERO_VISACION = TO_CHAR(P_MAX)
            AND 
                TIPO_APLICACION = PAPLICACION;
                
        ELSE
        
            OPEN IO_CURSOR FOR
            SELECT
                TICKET,        
                '' AS "FECHA_RECEPCION",    
                '' AS "FECHA_INICIO",        
                '' AS "FECHA_TERMINO",       
                HORAS_DESARROLLO,   
                '' AS "TIEMPO_TOTAL",      
                '' AS "DESCRIPCION",
                REPLACE(REPLACE(REPLACE(TRIM(CLIENTE), '.', ''), '-', ''), ' ', '_') AS "CLIENTE",        
                '' AS "TIPO_DESARROLLO", 
                '' AS "TIPO_QA",
                '' AS "RESULTADO_VISACION",
                '' AS "NUMERO_VISACION",
                ID_ITSM, 
                '' AS "ID_PROGRAMADOR",
                ID_VISADOR,
                '' AS "ESTADO_VISACION",    
                ID_TIPO_DESARROLLO,
                '' AS "OBJETOS_PRODUCCION",
                '' AS "FALLA_VISACION",
                'PLA' AS "TIPO"            
            FROM
                TB_QA_WEB_PLANIFICACION
            WHERE
                TICKET = SUBSTR(PTICKET,  1, 8);
            
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
        
    END CARGAR_VISACION;
    
    PROCEDURE INGRESAR_VISACION(PTICKET IN VARCHAR2,       
                                 PFECHA_RECEPCION IN VARCHAR2,
                                 PFECHA_INICIO IN VARCHAR2,                                                               
                                 PFECHA_TERMINO IN VARCHAR2,
                                 PHORAS_DESA IN VARCHAR2,
                                 PTIEMPO_TOTAL IN VARCHAR2,
                                 PDESCRIPCION IN VARCHAR2,
                                 PCLIENTE IN VARCHAR2,   
                                 PTIPO_DESA IN VARCHAR2, 
                                 PTIPO_QA IN VARCHAR2, 
                                 PRESULTADO_VISACION IN VARCHAR2,
                                 PNUMERO_VISACION IN VARCHAR2,  
                                 PITSM IN VARCHAR2,   
                                 PPROGRAMADOR IN VARCHAR2,                                            
                                 PVISADOR IN VARCHAR2,
                                 PESTADO_VISACION IN VARCHAR2,
                                 PTIPO_APLICACION IN VARCHAR2,
                                 POBJETOS_PRODUCCION IN VARCHAR2,
                                 PFALLA_VISACION IN VARCHAR2,
                                 PTIPO_ERROR IN VARCHAR2,
                                 PID_ITSM IN VARCHAR2,           
                                 PID_PROGRAMADOR IN VARCHAR2,      
                                 PID_VISADOR IN VARCHAR2,         
                                 PID_TIPO_APLICACION IN VARCHAR2,
                                 IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)                                     
    IS
    
    P_AUX VARCHAR2(20) := '';
    
    BEGIN
        PERROR := 'OK';
        
        SELECT 
            ESTADO INTO P_AUX
        FROM 
            TB_QA_WEB_PLANIFICACION 
        WHERE 
            TICKET = SUBSTR(PTICKET,  1, 8);
            
        IF P_AUX <> 'CERRADO' THEN
        
            IF REPLACE(REPLACE(TRIM(PRESULTADO_VISACION), ' ', ''), '/', '') = 'RECHAZADO' THEN
                UPDATE 
                    TB_QA_WEB_PLANIFICACION
                SET
                    ESTADO = 'RECHAZADO',
                    ID_ESTADO = '3'
                WHERE
                    TICKET = SUBSTR(PTICKET, 1, 8);
                    
                COMMIT;      
                    
                END IF;
                    
            IF REPLACE(REPLACE(TRIM(PRESULTADO_VISACION), ' ', ''), '/', '') = 'APROBADOCOBS' OR
               REPLACE(REPLACE(TRIM(PRESULTADO_VISACION), ' ', ''), '/', '') = 'APROBADOSOBS'  THEN
                UPDATE 
                    TB_QA_WEB_PLANIFICACION
                SET
                    ESTADO = 'APROBADO',
                    ID_ESTADO = '4'
                WHERE
                    TICKET = SUBSTR(PTICKET, 1, 8);
                COMMIT;      
                    
            END IF;
            
          END IF;      
              
        INSERT INTO TB_QA_WEB_VISACION (
            ID_VISACION,
            TICKET,              
            FECHA_RECEPCION,     
            FECHA_INICIO,        
            FECHA_TERMINO,      
            HORAS_DESARROLLO,   
            TIEMPO_TOTAL,       
            DESCRIPCION,         
            CLIENTE,             
            TIPO_DESARROLLO,     
            TIPO_QA,             
            RESULTADO_VISACION,  
            NUMERO_VISACION,     
            ITSM,                
            PROGRAMADOR,         
            VISADOR,             
            ESTADO_VISACION,     
            TIPO_APLICACION,    
            OBJETOS_PRODUCCION,  
            FALLA_VISACION,      
            TIPO_ERROR,     
            ID_ITSM,             
            ID_PROGRAMADOR,      
            ID_VISADOR,         
            ID_TIPO_APLICACION  
        ) VALUES (
            SEC_QA_WEB_VISACION.NEXTVAL,
            SUBSTR(PTICKET, 1, 8),
            SUBSTR(PFECHA_RECEPCION, 1, 16),
            SUBSTR(PFECHA_INICIO, 1, 16),
            SUBSTR(PFECHA_TERMINO, 1, 16),
            SUBSTR(PHORAS_DESA, 1, 4),
            SUBSTR(PTIEMPO_TOTAL, 1 , 5),
            SUBSTR(PDESCRIPCION, 1, 400),
            SUBSTR(PCLIENTE, 1 , 30),
            SUBSTR(PTIPO_DESA, 1, 30),
            SUBSTR(PTIPO_QA, 1, 20),
            SUBSTR(PRESULTADO_VISACION, 1 , 20),
            SUBSTR(PNUMERO_VISACION, 1 ,2 ), 
            SUBSTR(PITSM, 1, 30),
            SUBSTR(PPROGRAMADOR, 1, 30),
            SUBSTR(PVISADOR, 1, 30),
            SUBSTR(PESTADO_VISACION,1 , 15),
            SUBSTR(PTIPO_APLICACION, 1, 20),
            SUBSTR(POBJETOS_PRODUCCION,  1 , 5),
            SUBSTR(PFALLA_VISACION, 1 , 2 ),
            SUBSTR(PTIPO_ERROR, 1 , 30 ),
            SUBSTR(PID_ITSM, 1, 15),
            SUBSTR(PID_PROGRAMADOR,  1 , 15),
            SUBSTR(PID_VISADOR, 1 , 15 ),
            SUBSTR(PID_TIPO_APLICACION, 1 , 2)
        );
            
        OPEN IO_CURSOR FOR
        SELECT
            'OK' RESULTADO
        FROM
            DUAL; 
            
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END INGRESAR_VISACION;
    
    PROCEDURE HORAS_VISACION(PFECHA_INICIO VARCHAR,PFECHA_FIN VARCHAR, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    
    BEGIN

        PERROR := 'OK';

        OPEN IO_CURSOR FOR
        SELECT
            TIEMPO_MAX(PFECHA_INICIO,PFECHA_FIN) AS "TIEMPOS"
        FROM
            DUAL;
        
            
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END HORAS_VISACION;
    
    PROCEDURE NUMEROVISACION(PTICKET IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    
    BEGIN
        PERROR := 'OK';
        
        OPEN IO_CURSOR FOR
        SELECT
              NUMERO_VISACION,
              TICKET,              
              FECHA_RECEPCION,
              INITCAP(VISADOR) AS "VISADOR",
              INITCAP(RESULTADO_VISACION) AS "RESULTADO_VISACION",
              TIPO_APLICACION
        FROM
            TB_QA_WEB_VISACION
        WHERE
            TICKET = SUBSTR(PTICKET,  1, 8)
        ORDER BY
            TIPO_APLICACION, NUMERO_VISACION;
    
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END NUMEROVISACION;    

    PROCEDURE VER_NUMERO_VISACION(PTICKET IN VARCHAR2, PNUMERO VARCHAR2,PAPLICACION VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
   
    BEGIN
        PERROR := 'OK';
            
            OPEN IO_CURSOR FOR
            SELECT
                
                FECHA_RECEPCION,    
                FECHA_INICIO,        
                FECHA_TERMINO,       
                HORAS_DESARROLLO,   
                TIEMPO_TOTAL,      
                DESCRIPCION,        
                CLIENTE,         
                TIPO_DESARROLLO,
                TIPO_QA,            
                RESULTADO_VISACION,
                NUMERO_VISACION, 
                ITSM,               
                PROGRAMADOR,        
                VISADOR,             
                ESTADO_VISACION,    
                TIPO_APLICACION,     
                OBJETOS_PRODUCCION,  
                FALLA_VISACION,
                TIPO_ERROR   
            FROM
                TB_QA_WEB_VISACION
            WHERE
                TICKET = SUBSTR(PTICKET,  1, 8)
            AND
                NUMERO_VISACION = SUBSTR(PNUMERO, 1, 2)
            AND
                TIPO_APLICACION = SUBSTR(PAPLICACION, 1, 20);
                
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
        
    END VER_NUMERO_VISACION;

    PROCEDURE AGREGAR_FEEDBACK(PTICKET IN VARCHAR2,PFEEDBACK IN VARCHAR2,IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    
    BEGIN
        PERROR := 'OK';
            
        UPDATE 
            TB_QA_WEB_PLANIFICACION
        SET
              FEEDBACK = PFEEDBACK
        WHERE
            TICKET = SUBSTR(PTICKET, 1, 8);
        COMMIT;      
        
        OPEN IO_CURSOR FOR
        SELECT
            'OK' RESULTADO
        FROM
            DUAL;
    
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END AGREGAR_FEEDBACK;
    
    PROCEDURE AGREGAR_CUMPLIMIENTO(PTICKET IN VARCHAR2,PCUMPLIMIENTOQA IN VARCHAR2,PCUMPLIMIENTOCLIENTE IN VARCHAR2,IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    
    BEGIN
        PERROR := 'OK';
            
        UPDATE 
            TB_QA_WEB_PLANIFICACION
        SET
              CUMPLIMIENTO_QA = PCUMPLIMIENTOQA,
              CUMPLIMIENTO_PROD = PCUMPLIMIENTOCLIENTE,
              ESTADO = 'CERRADO',
              ID_ESTADO = '1'
        WHERE
            TICKET = SUBSTR(PTICKET, 1, 8);
        COMMIT;      
        
        OPEN IO_CURSOR FOR
        SELECT
            'OK' RESULTADO
        FROM
            DUAL;
    
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END AGREGAR_CUMPLIMIENTO;
    

PROCEDURE VER_FEEDBACK(PTICKET IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    BEGIN
        PERROR := 'OK';
        
        OPEN IO_CURSOR FOR
        SELECT
              FEEDBACK
        FROM
            TB_QA_WEB_PLANIFICACION
        WHERE
            TICKET = SUBSTR(PTICKET,  1, 8);
    
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END VER_FEEDBACK;
    
    PROCEDURE CARGAUSUARIOS(IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2) 
    IS    

    BEGIN
        PERROR:='OK';
        
        OPEN IO_CURSOR FOR
        SELECT
            USUARIO,
            NOMBRES,
            A_PATERNO,
            A_MATERNO,
            INITCAP(CARGO) AS "CARGO",
            CORREO,
            PERFIL,
            ESTADO
        FROM
            TB_QA_WEB_USUARIO;
       
                   
    EXCEPTION 
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;  
    END CARGAUSUARIOS;
    
    PROCEDURE CARGA_PERFIL(IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    BEGIN
        PERROR := 'OK';
        
        --INFO PERFIL--
        OPEN IO_CURSOR FOR
        SELECT
            ID_PERFIL,
            NOMRE_PERFIL
           
        FROM
            TB_QA_WEB_PERFIL;
        
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    
    END CARGA_PERFIL;
    
    PROCEDURE VER_USUARIOS(PUSUARIO VARCHAR2,IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2) 
    IS    

    BEGIN
        PERROR:='OK';
        
        OPEN IO_CURSOR FOR
        SELECT
            USUARIO,
            NOMBRES,
            A_PATERNO,
            A_MATERNO,
            INITCAP(CARGO) AS "CARGO",
            CORREO,
            ID_PERFIL,
            ESTADO
        FROM
            TB_QA_WEB_USUARIO
        WHERE 
            USUARIO = PUSUARIO;
       
                   
    EXCEPTION 
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;  
    END VER_USUARIOS;
    
    PROCEDURE INGRESAR_USUARIO(PUSUARIO IN VARCHAR2,       
                                 PNOMBRE IN VARCHAR2,
                                 PAPELLIDOPA IN VARCHAR2,                                                               
                                 PAPELLIDOMA IN VARCHAR2,
                                 PCARGO IN VARCHAR2,
                                 PCORREO IN VARCHAR2,
                                 PPERFIL IN VARCHAR2,
                                 PIDPERFIL IN VARCHAR2,                                                                  
                                 PPASS IN VARCHAR2,
                                 PESTADO IN VARCHAR2,
                                 IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    AUX NUMBER;
    BEGIN
        PERROR := 'OK';
        
            SELECT 
                COUNT(*) INTO AUX
            FROM
                TB_QA_WEB_USUARIO
            WHERE 
                USUARIO = PUSUARIO;
            
            IF AUX >=1 THEN 
            
                PERROR := 'NOK';
            
            ELSE
            
            INSERT INTO TB_QA_WEB_USUARIO (
                      ID_USUARIO,  
                      USUARIO,     
                      PASS,        
                      NOMBRES,     
                      A_PATERNO,   
                      A_MATERNO,   
                      CARGO,       
                      CORREO,      
                      PERFIL,      
                      ID_PERFIL,
                      ESTADO  
            ) VALUES (
                SEC_QA_WEB_USUARIO.NEXTVAL,
                SUBSTR(PUSUARIO, 1, 15),
                SUBSTR(PPASS, 1, 15),
                SUBSTR(PNOMBRE, 1, 50),
                SUBSTR(PAPELLIDOPA, 1, 30),
                SUBSTR(PAPELLIDOMA, 1 , 30),
                UPPER(SUBSTR(PCARGO, 1 , 30)),
                SUBSTR(PCORREO, 1, 50),
                SUBSTR(PPERFIL, 1 , 30),
                TO_NUMBER(SUBSTR(PIDPERFIL, 1, 2)),                
                SUBSTR(PESTADO, 1 , 8)
            );
            END IF;
            
            OPEN IO_CURSOR FOR
            SELECT
                'OK' RESULTADO
            FROM
                DUAL; 
                
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END INGRESAR_USUARIO;
    
    PROCEDURE MODIFICAR_USUARIO(PUSUARIO IN VARCHAR2,       
                                 PNOMBRE IN VARCHAR2,
                                 PAPELLIDOPA IN VARCHAR2,                                                               
                                 PAPELLIDOMA IN VARCHAR2,
                                 PCARGO IN VARCHAR2,
                                 PCORREO IN VARCHAR2,
                                 PPERFIL IN VARCHAR2,
                                 PIDPERFIL IN VARCHAR2,                                                                  
                                 PPASS IN VARCHAR2,
                                 PESTADO IN VARCHAR2,
                                 IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    
    BEGIN
        PERROR := 'OK';
    IF PPASS <> '' THEN
        UPDATE 
            TB_QA_WEB_USUARIO
        SET
            USUARIO = PUSUARIO,
            PASS = PPASS,    
            NOMBRES = PNOMBRE,    
            A_PATERNO = PAPELLIDOPA,   
            A_MATERNO = PAPELLIDOMA,  
            CARGO = PCARGO,     
            CORREO = PCORREO,     
            PERFIL = PPERFIL,     
            ID_PERFIL = TO_NUMBER(PIDPERFIL),
            ESTADO = PESTADO
        WHERE
            USUARIO = PUSUARIO;
        COMMIT;
        
    ELSE   
        UPDATE 
            TB_QA_WEB_USUARIO
        SET
            USUARIO = PUSUARIO,
            NOMBRES = PNOMBRE,    
            A_PATERNO = PAPELLIDOPA,   
            A_MATERNO = PAPELLIDOMA,  
            CARGO = PCARGO,     
            CORREO = PCORREO,     
            PERFIL = PPERFIL,     
            ID_PERFIL = TO_NUMBER(PIDPERFIL),
            ESTADO = PESTADO
        WHERE
            USUARIO = PUSUARIO;
        COMMIT;
        
        
    END IF;
        
        
        OPEN IO_CURSOR FOR
        SELECT
            'OK' RESULTADO
        FROM
            DUAL;
                 
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END MODIFICAR_USUARIO;
    
    PROCEDURE MODIFICAR_USUARIO_ESTANDAR(PUSUARIO IN VARCHAR2,       
                                         PNOMBRE IN VARCHAR2,
                                         PAPELLIDOPA IN VARCHAR2,                                                               
                                         PAPELLIDOMA IN VARCHAR2,
                                         PCORREO IN VARCHAR2,                                           
                                         PPASS IN VARCHAR2,
                                         IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    
    BEGIN
        PERROR := 'OK';
    
        IF PPASS <> '' THEN
            UPDATE 
                TB_QA_WEB_USUARIO
            SET
                PASS = PPASS,    
                NOMBRES = PNOMBRE,    
                A_PATERNO = PAPELLIDOPA,   
                A_MATERNO = PAPELLIDOMA, 
                CORREO = PCORREO
            WHERE
                USUARIO = PUSUARIO;
            COMMIT;
        ELSE
            UPDATE 
                TB_QA_WEB_USUARIO
            SET 
                NOMBRES = PNOMBRE,    
                A_PATERNO = PAPELLIDOPA,   
                A_MATERNO = PAPELLIDOMA, 
                CORREO = PCORREO
            WHERE
                USUARIO = PUSUARIO;
            COMMIT;
        END IF;
        
        OPEN IO_CURSOR FOR
        SELECT
            'OK' RESULTADO
        FROM
            DUAL; 
                
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END MODIFICAR_USUARIO_ESTANDAR;
    
    
    PROCEDURE CARGA_TICKET_SLA(PFECHA_INICIO VARCHAR,PFECHA_FIN VARCHAR, IO_CURSOR IN OUT T_CURSOR, IO_CURSOR2 IN OUT T_CURSOR, IO_CURSOR3 IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
   
    BEGIN
         
        PERROR := 'OK';

        OPEN IO_CURSOR FOR
        SELECT 
            TICKET,
            CLIENTE,
            PRIORIDAD,
            FECHA_QA,
            FECHA_QA_REAL,
            FECHA_PRODUCCION,
            ESTADO,
            PASO_POR_QA,
            VISADOR,            
            VALIDA_PANEL_QA(FECHA_QA, FECHA_QA_REAL, PRIORIDAD) AS "RES_QA",  
            VALIDA_PANEL_PROD(FECHA_PRODUCCION, PRIORIDAD) AS "RES_PROD",
            TO_CHAR(SYSDATE, 'DD/MM/RRRR HH24:MI') AS "HORA",
            HORAS_DESARROLLO
        FROM 
            TB_QA_WEB_PLANIFICACION
        WHERE
            TO_DATE(SUBSTR(FECHA_QA, 1, 10), 'DD/MM/RRRR') >= TO_DATE(PFECHA_INICIO, 'DD/MM/RRRR')
        AND
            TO_DATE(SUBSTR(FECHA_QA, 1, 10), 'DD/MM/RRRR') <= TO_DATE(PFECHA_FIN, 'DD/MM/RRRR')
        AND 
            ID_ESTADO <> '1'
        AND 
            ID_ESTADO <> '6'
        ORDER BY              
            TO_DATE(FECHA_QA, 'DD/MM/RRRR HH24:MI') DESC;
        
        
        OPEN IO_CURSOR2 FOR
        SELECT
            VISADOR,
            TO_CHAR(COUNT(VISADOR)) AS "CANTIDAD"
        FROM
            TB_QA_WEB_PLANIFICACION
        WHERE
            TO_DATE(SUBSTR(FECHA_QA, 1, 10), 'DD/MM/RRRR') >= TO_DATE(PFECHA_INICIO, 'DD/MM/RRRR')
        AND
            TO_DATE(SUBSTR(FECHA_QA, 1, 10), 'DD/MM/RRRR') <= TO_DATE(PFECHA_FIN, 'DD/MM/RRRR')
        AND 
            ID_ESTADO <> '1'
        AND 
            ID_ESTADO <> '6'
        GROUP BY
            VISADOR;
            
        OPEN IO_CURSOR3 FOR   
        SELECT
            TO_CHAR(FECHA_QA1) AS "FECHA_QA",
            TO_CHAR(CANTIDAD_TICKET1) AS "CANTIDAD_TICKET"
        FROM
            (SELECT
                TO_DATE(SUBSTR(FECHA_QA, 1, 10), 'DD/MM/RRRR') AS "FECHA_QA1",
                COUNT(TO_DATE(SUBSTR(FECHA_QA, 1, 10), 'DD/MM/RRRR')) AS "CANTIDAD_TICKET1"
            FROM
                TB_QA_WEB_PLANIFICACION
            WHERE
                TO_DATE(SUBSTR(FECHA_QA, 1, 10), 'DD/MM/RRRR') >= TO_DATE(PFECHA_INICIO, 'DD/MM/RRRR')
            AND
                TO_DATE(SUBSTR(FECHA_QA, 1, 10), 'DD/MM/RRRR') <= TO_DATE(PFECHA_FIN, 'DD/MM/RRRR')
            AND 
                ID_ESTADO <> '1'
            AND 
                ID_ESTADO <> '6'
            GROUP BY
                TO_DATE(SUBSTR(FECHA_QA, 1, 10), 'DD/MM/RRRR'));
       
               
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END CARGA_TICKET_SLA;
    PROCEDURE CARGA_LISTA_TICKET(PFECHA_INICIO VARCHAR,PFECHA_FIN VARCHAR, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS

    BEGIN

        PERROR := 'OK';

        OPEN IO_CURSOR FOR
        SELECT 
            TICKET,
            CLIENTE,
            PRIORIDAD,
            FECHA_QA,
            FECHA_QA_REAL,
            FECHA_PRODUCCION,
            FECHA_PRODUCCION_REAL,
            PASO_POR_QA,
            ESTADO
            
        FROM 
            TB_QA_WEB_PLANIFICACION
        WHERE
            TO_DATE(SUBSTR(FECHA_QA, 1, 10), 'DD/MM/RRRR') >= TO_DATE(PFECHA_INICIO, 'DD/MM/RRRR')
        AND
            TO_DATE(SUBSTR(FECHA_QA, 1, 10), 'DD/MM/RRRR') <= TO_DATE(PFECHA_FIN, 'DD/MM/RRRR');
                    
            
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END CARGA_LISTA_TICKET;
    
   PROCEDURE CARGA_LISTA_PLANIFICACION(PFECHA_INICIO VARCHAR,PFECHA_FIN VARCHAR,PTICKET VARCHAR, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS

    BEGIN

        PERROR := 'OK';

        OPEN IO_CURSOR FOR
        SELECT 
            TICKET,
            CLIENTE,
            PRIORIDAD,
            FECHA_QA,
            FECHA_QA_REAL,
            FECHA_PRODUCCION,
            FECHA_PRODUCCION_REAL,
            PASO_POR_QA,
            ESTADO
            
        FROM 
            TB_QA_WEB_PLANIFICACION
        WHERE
            TO_DATE(SUBSTR(FECHA_QA, 1, 10), 'DD/MM/RRRR') >= TO_DATE(PFECHA_INICIO, 'DD/MM/RRRR')
        AND
            TO_DATE(SUBSTR(FECHA_QA, 1, 10), 'DD/MM/RRRR') <= TO_DATE(PFECHA_FIN, 'DD/MM/RRRR')
        AND 
            TICKET = PTICKET;
                    
            
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END CARGA_LISTA_PLANIFICACION; 
    PROCEDURE CAMBIAR_ESTADO(PTICKET VARCHAR,IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    
    BEGIN
        PERROR := 'OK';
    
        UPDATE 
            TB_QA_WEB_PLANIFICACION
        SET
              
              ESTADO = 'DESCARTADO',
              ID_ESTADO = '6'
        WHERE
              TICKET = PTICKET;
        COMMIT;
        
            OPEN IO_CURSOR FOR
            SELECT
                'OK' RESULTADO
            FROM
                DUAL;
                 
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END CAMBIAR_ESTADO;
    
    PROCEDURE BUSCAR_APLICACION(PTICKET in VARCHAR,IO_CURSOR IN OUT T_CURSOR,IO_CURSOR2 IN OUT T_CURSOR,PERROR OUT VARCHAR2)
    IS

    BEGIN

        PERROR := 'OK';
        
        OPEN IO_CURSOR FOR
        SELECT
            DISTINCT REPLACE(REPLACE(TRIM(TIPO_APLICACION), ' ', ''), '.', '') AS "ID_TIPO_APLICACION",
            TIPO_APLICACION
            
        FROM
            TB_QA_WEB_VISACION
        WHERE
            TICKET = PTICKET;
            
            
        OPEN IO_CURSOR2 FOR
        
        SELECT
            RESULTADO_VISACION
            
        FROM
            TB_QA_WEB_VISACION
        WHERE
            TICKET = PTICKET;    
            
        
              
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END BUSCAR_APLICACION;
    
    PROCEDURE BUSCAR_RECOMENDACION (PTICKET IN VARCHAR2,PAPLICACION   VARCHAR2,PNUMERO VARCHAR2,IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    P_AUX NUMBER;
    BEGIN
         PERROR := 'OK';
         SELECT 
            COUNT(*) INTO P_AUX
         FROM 
            TB_QA_WEB_RECOMENDACIONES
         WHERE 
            TICKET = SUBSTR(PTICKET, 1, 8)
         AND
            APLICACION = PAPLICACION
         AND
            NUMERO_APLICACION = PNUMERO;
        
        IF P_AUX > 0 THEN 
        
            OPEN IO_CURSOR FOR
            SELECT
                'NOK' RESULTADO
            FROM
                DUAL;
        ELSE 
            OPEN IO_CURSOR FOR
            SELECT   
                FECHA_INGRESO,         
                TICKET,              
                APLICACION,          
                NUMERO_APLICACION,     
                NUMERO_RECOMENDACION,  
                TIPO_ERROR,    
                RESPONSABILIDAD,       
                DESCRIPCION,           
                RESULTADO,            
                USUARIO       
            FROM 
                TB_QA_WEB_RECOMENDACIONES
            WHERE 
                TICKET = SUBSTR(PTICKET, 1, 8)
            AND
                APLICACION = PAPLICACION
            AND
                NUMERO_APLICACION = PNUMERO
            ORDER BY
                NUMERO_RECOMENDACION;    
           END IF;
           
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
        
    END BUSCAR_RECOMENDACION;
    
    PROCEDURE BUSCAR_NUMERO(PTICKET IN VARCHAR2,PAPLICACION IN VARCHAR2,IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    
    P_AUX NUMBER;
    V_MAX NUMBER;
    V_MAX_ESTADO VARCHAR2(20) := '';
    V_ULTIMA_VISACION VARCHAR2(2):= '';
    
    BEGIN

        PERROR := 'OK';
        SELECT 
            MAX(NUMERO_VISACION) INTO V_ULTIMA_VISACION
        FROM
            TB_QA_WEB_VISACION
        WHERE
            TICKET = SUBSTR(PTICKET, 1, 8)
        AND 
            REPLACE(REPLACE(TRIM(TIPO_APLICACION), ' ', ''), '.', '') = REPLACE(REPLACE(TRIM(PAPLICACION), ' ', ''), '.', '');
        
        SELECT 
            COUNT(*) INTO P_AUX
        FROM
            TB_QA_WEB_RECOMENDACIONES
        WHERE
            TICKET = SUBSTR(PTICKET, 1, 8)
        AND 
            REPLACE(REPLACE(TRIM(APLICACION), ' ', ''), '.', '') = REPLACE(REPLACE(TRIM(PAPLICACION), ' ', ''), '.', '');
            
            
        IF P_AUX > 0 THEN
        
            SELECT
                NUMERO_APLICACION,
                ESTADO
            INTO
                V_MAX,
                V_MAX_ESTADO
            FROM 
                TB_QA_WEB_RECOMENDACIONES
            WHERE
                TICKET = SUBSTR(PTICKET, 1, 8)
            AND
                TO_NUMBER(NUMERO_APLICACION) = (SELECT 
                                                    MAX(TO_NUMBER(NUMERO_APLICACION)) 
                                                FROM 
                                                    TB_QA_WEB_RECOMENDACIONES 
                                                WHERE 
                                                    TICKET = SUBSTR(PTICKET, 1, 8))
            AND 
                ROWNUM <= 1;
        
            OPEN IO_CURSOR FOR
            SELECT
                TICKET,
                APLICACION,
                NUMERO_APLICACION,
                NUMERO_RECOMENDACION,
                TIPO_ERROR,
                RESPONSABILIDAD,
                DESCRIPCION,
                RESULTADO,
                ESTADO,
                STATUS,
                V_MAX_ESTADO AS "MAX_ESTADO",
                TO_CHAR(V_MAX) AS "MAX",
                V_ULTIMA_VISACION AS "ULTIMA"

            FROM
                TB_QA_WEB_RECOMENDACIONES 
            WHERE    
                TICKET = SUBSTR(PTICKET, 1, 8)
            AND 
                APLICACION=PAPLICACION    
            ORDER BY
                TO_NUMBER(NUMERO_RECOMENDACION) ASC;
        
        ELSE
        
            OPEN IO_CURSOR FOR
            SELECT
                '' AS "TICKET",
                '' AS "APLICACION",
                '' AS "NUMERO_APLICACION",
                '' AS "NUMERO_RECOMENDACION",
                '' AS "TIPO_ERROR",
                '' AS "RESPONSABILIDAD",
                '' AS "DESCRIPCION",
                '' AS "RESULTADO",
                '' AS "ESTADO",
                '' AS "STATUS",
                '' AS "MAX", 
                '' AS "MAX_ESTADO",
                '' AS "ULTIMA"          
            FROM
                TB_QA_WEB_RECOMENDACIONES
            WHERE
                 TICKET=PTICKET
            AND 
                APLICACION=PAPLICACION;
            
        END IF;
        
        
        
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END BUSCAR_NUMERO; 
    
    PROCEDURE INGRESAR_RECOMENDACION(PTICKET IN VARCHAR2,       
                                     PAPLICACION IN VARCHAR2,
                                     PNUMERO_APLICACION IN VARCHAR2,                                                               
                                     PNUMERO IN VARCHAR2,
                                     PTIPO_ERROR IN VARCHAR2,
                                     PRESPONSABLE IN VARCHAR2,
                                     PDESCRIPCION IN VARCHAR2,
                                     PRESULTADO IN VARCHAR2,   
                                     PUSUARIO IN VARCHAR2, 
                                     IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)                                     
    IS
    
    BEGIN
        PERROR := 'OK';
        
        INSERT INTO TB_QA_WEB_RECOMENDACIONES (
            ID_RECOMENDACIONES,
            FECHA_INGRESO,
            TICKET,
            APLICACION,
            NUMERO_APLICACION,
            NUMERO_RECOMENDACION,
            TIPO_ERROR,
            RESPONSABILIDAD,
            DESCRIPCION,
            RESULTADO,
            USUARIO,
            ESTADO
        ) VALUES (
            SEC_QA_WEB_RECOMENDACIONES.NEXTVAL,
            TO_CHAR(SYSDATE, 'DD/MM/RRRR HH24:MI'),
            SUBSTR(PTICKET, 1, 8),
            SUBSTR(PAPLICACION, 1, 15),
            SUBSTR(PNUMERO_APLICACION, 1 , 2),
            SUBSTR(PNUMERO, 1 , 4),
            SUBSTR(PTIPO_ERROR, 1, 10),
            SUBSTR(PRESPONSABLE, 1 , 30),
            SUBSTR(PDESCRIPCION, 1, 500),
            SUBSTR(PRESULTADO, 1, 16),
            SUBSTR(PUSUARIO, 1 , 30),
            'ABIERTO'             
        );
            
        OPEN IO_CURSOR FOR
        SELECT
            'OK' RESULTADO
        FROM
            DUAL; 
            
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END INGRESAR_RECOMENDACION;
    
    PROCEDURE MODIFICAR_RESULTADO(PTICKET IN VARCHAR2,
                                  PNUMERO IN VARCHAR2,
                                  PAPLICACION IN VARCHAR2,
                                  PNUMERO_APLICACION IN VARCHAR2,
                                  PRESULTADO IN VARCHAR2, 
                                  IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    
    BEGIN
         PERROR := 'OK';
         
         
         IF PRESULTADO = 'CORREGIDO' OR PRESULTADO = 'ACLARADO' THEN
            
            UPDATE 
                TB_QA_WEB_RECOMENDACIONES
            SET
                RESULTADO = PRESULTADO,
                STATUS = PRESULTADO || ' ' || 'R' || PNUMERO_APLICACION
            WHERE
                TICKET = SUBSTR(PTICKET, 1, 8)
            AND 
                APLICACION = PAPLICACION
            AND   
                NUMERO_RECOMENDACION = PNUMERO;
                
            COMMIT;
         ELSE
         
            UPDATE 
                TB_QA_WEB_RECOMENDACIONES
            SET
                RESULTADO = PRESULTADO
            WHERE
                TICKET = PTICKET
            AND 
                APLICACION = PAPLICACION
            AND   
                NUMERO_RECOMENDACION = PNUMERO;
                
            COMMIT;   
         
         END IF;
         OPEN IO_CURSOR FOR
            SELECT
                'OK' RESULTADO
            FROM
                DUAL;
                   
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
        
    END MODIFICAR_RESULTADO;
     PROCEDURE ELIMINAR_RECOMENDACIONES(PTICKET IN VARCHAR2,
                                        PAPLICACION IN VARCHAR2,
                                        PNUMERO IN VARCHAR2,
                                        IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    
    BEGIN
         PERROR := 'OK';
         
            DELETE 
            FROM 
                TB_QA_WEB_RECOMENDACIONES
            WHERE 
                TICKET = PTICKET
            AND 
                APLICACION = PAPLICACION
            AND
                NUMERO_RECOMENDACION = PNUMERO;
          
         OPEN IO_CURSOR FOR
            SELECT
                'OK' RESULTADO
            FROM
                DUAL;
                   
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
        
    END ELIMINAR_RECOMENDACIONES;
    
    PROCEDURE MODIFICAR_ESTADO_RECO(PTICKET IN VARCHAR2,
                                    PAPLICACION IN VARCHAR2,
                                    PNUMERO_APLICACION IN VARCHAR2,
                                    PESTADO IN VARCHAR2,
                                    IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    
    BEGIN
         PERROR := 'OK';
            
            UPDATE 
                TB_QA_WEB_RECOMENDACIONES
            SET
                ESTADO = PESTADO
            WHERE
                TICKET = SUBSTR(PTICKET, 1, 8)
            AND 
                APLICACION = PAPLICACION;

                
            COMMIT;
        
         OPEN IO_CURSOR FOR
            SELECT
                'OK' RESULTADO
            FROM
                DUAL;
                   
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
        
    END MODIFICAR_ESTADO_RECO;
    
    PROCEDURE VER_CORREO(PUSUARIO IN VARCHAR2, PTICKET IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS 
    
    V_ITSM VARCHAR2(15);
    V_CORREO_ITSM VARCHAR(50);
    
    BEGIN
        PERROR := 'OK';
        
        SELECT ID_ITSM INTO V_ITSM FROM TB_QA_WEB_PLANIFICACION WHERE TICKET = SUBSTR(PTICKET, 1, 8);
        
        SELECT CORREO INTO V_CORREO_ITSM FROM TB_QA_WEB_USUARIO WHERE USUARIO = V_ITSM;
        
        OPEN IO_CURSOR FOR
        SELECT 
            TO_CHAR(CORREO) AS "CORREO",
            TO_CHAR(INITCAP(NOMBRES || ' ' || A_PATERNO)) AS "NOMBRE",
            V_CORREO_ITSM AS "CORREO_ITSM"
        FROM 
            TB_QA_WEB_USUARIO
        WHERE 
            USUARIO = SUBSTR(PUSUARIO, 1, 15);
                 
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END VER_CORREO;
    
    PROCEDURE CARGA_CMB( IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS

    BEGIN

        PERROR := 'OK';

        OPEN IO_CURSOR FOR
        SELECT 
            DISTINCT SUBSTR(FECHA_PRODUCCION, 7, 4) AS "FECHA_PRODUCCION_REAL"
        FROM
            TB_QA_WEB_PLANIFICACION A
        WHERE
            FECHA_PRODUCCION IS NOT NULL
        AND
            TO_NUMBER(SUBSTR(FECHA_PRODUCCION, 7, 4)) >= 2012
        ORDER BY 
            TO_NUMBER(SUBSTR(FECHA_PRODUCCION, 7, 4)) ASC;
           
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END CARGA_CMB;
    

    
    PROCEDURE FECHA_PROD(PFECHAA IN VARCHAR2,PFECHAM IN VARCHAR2,IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS

    BEGIN

        PERROR := 'OK';

        OPEN IO_CURSOR FOR
        SELECT
           T1.TICKET AS "TICKET",
           T1.CLIENTE AS "CLIENTE",
           T1.DETALLE_SGP AS "DETALLE_SGP",
           T1.TIPO_DESARROLLO AS "TIPO_DESARROLLO",
           T1.FECHA_PRODUCCION_REAL AS "FECHA_PRODUCCION_REAL",
           NVL(T2.FALLA_VISACION, 'NO') AS "FALLA_VISACION"
        FROM
            TB_QA_WEB_PLANIFICACION T1
        LEFT JOIN
            TB_QA_WEB_VISACION T2
        ON
            T1.TICKET = T2.TICKET
        WHERE
            TO_DATE(SUBSTR(FECHA_PRODUCCION_REAL, 1, 10), 'DD/MM/RRRR') >= TO_DATE('01' || '/' || PFECHAM || '/' || PFECHAA, 'DD/MM/RRRR')
        AND
            TO_DATE(SUBSTR(FECHA_PRODUCCION_REAL, 1, 10), 'DD/MM/RRRR') <= LAST_DAY(TO_DATE('01' || '/' || PFECHAM || '/' || PFECHAA, 'DD/MM/RRRR'))
        ORDER BY
            FECHA_PRODUCCION_REAL; 

    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END FECHA_PROD;
    
    PROCEDURE CONTADORMES(PFECHA IN VARCHAR2,IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS

    BEGIN

        PERROR := 'OK';

        OPEN IO_CURSOR FOR
        SELECT
            TO_CHAR(COUNT(*)) AS "CONT" 
        FROM
            TB_QA_WEB_PLANIFICACION
        WHERE
            SUBSTR(FECHA_PRODUCCION_REAL, 4, 7) = PFECHA;





    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END CONTADORMES;
    
    PROCEDURE BARRA_PANEL(PFECHA1 IN VARCHAR2,PFECHA2 IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS

    BEGIN
        PERROR := 'OK';
        
        OPEN IO_CURSOR FOR
        SELECT
            SUM(TO_NUMBER(VALIDA_SLA(HORAS_DESARROLLO))) AS "SLA_QA",
            SUM(HORAS_DESARROLLO) AS "HORAS_DESA",
            DIAS_LABORABLES(TO_DATE(PFECHA1, 'DD/MM/RRRR'), TO_DATE(PFECHA2, 'DD/MM/RRRR')) * 8 AS "HORAS"
        FROM
            TB_QA_WEB_PLANIFICACION
        WHERE
            ID_ESTADO <> 1
        AND
            ID_ESTADO <> 6
        AND
            TO_DATE(SUBSTR(FECHA_QA,1,10), 'DD/MM/RRRR') BETWEEN TO_DATE(PFECHA1, 'DD/MM/RRRR') AND TO_DATE(PFECHA2, 'DD/MM/RRRR');

    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END BARRA_PANEL;
    
    
    PROCEDURE GRAFICOS_DONUT(PFECHA IN VARCHAR2,IO_CURSOR IN OUT T_CURSOR,IO_CURSOR2 IN OUT T_CURSOR,IO_CURSOR3 IN OUT T_CURSOR, IO_CURSOR4 IN OUT T_CURSOR, IO_CURSOR5 IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS

    BEGIN
        PERROR := 'OK';
        
        OPEN IO_CURSOR FOR
        SELECT 
            VISADOR ,
            TO_CHAR(COUNT(VISADOR)) AS "CONTADOR_VISADOR",
            SUM(HORAS_DESARROLLO) AS "HH_DESA"
        FROM 
            TB_QA_WEB_PLANIFICACION 
        WHERE
            SUBSTR(FECHA_QA, 4,7) = PFECHA
        AND
            PASO_POR_QA = 'SI'          
        GROUP BY 
            VISADOR
        ORDER BY 
            COUNT(VISADOR) DESC;
        
        
        OPEN IO_CURSOR2 FOR
        SELECT 
            ITSM,
            TO_CHAR(COUNT(ITSM)) AS "CONTADOR_ITSM",
            SUM(HORAS_DESARROLLO) AS "HH_DESA"
        FROM
             TB_QA_WEB_PLANIFICACION 
        WHERE
            SUBSTR(FECHA_QA, 4,7) = PFECHA
        AND
            PASO_POR_QA = 'SI'
        GROUP BY 
            ITSM
        ORDER BY 
            COUNT(ITSM) DESC;
            
            
        OPEN IO_CURSOR3 FOR
        SELECT 
            TIPO_DESARROLLO AS "DESARROLLO",
            TO_CHAR(COUNT(TIPO_DESARROLLO)) AS "CONTADOR_DESARROLLO",
            SUM(HORAS_DESARROLLO) AS "HH_DESA"
        FROM
             TB_QA_WEB_PLANIFICACION 
        WHERE
            SUBSTR(FECHA_QA, 4,7) = PFECHA
        AND
            PASO_POR_QA = 'SI'
        GROUP BY 
            TIPO_DESARROLLO
        ORDER BY 
            COUNT(TIPO_DESARROLLO) DESC;
        
        OPEN IO_CURSOR4 FOR
        SELECT
            PASO_POR_QA,
            TO_CHAR(COUNT(PASO_POR_QA)) AS "CONTADOR_QA"
        FROM
            TB_QA_WEB_PLANIFICACION
        WHERE
            SUBSTR(FECHA_QA, 4,7) = PFECHA
        GROUP BY
            PASO_POR_QA
        ORDER BY 
            PASO_POR_QA DESC;
        
        OPEN IO_CURSOR5 FOR
        SELECT
            NORMA_QA,
            TO_CHAR(COUNT(NORMA_QA)) AS "CONTADOR_QA"
        FROM
            TB_QA_WEB_PLANIFICACION
        WHERE
            SUBSTR(FECHA_QA, 4,7) = PFECHA
        GROUP BY
            NORMA_QA
        ORDER BY 
            NORMA_QA DESC;

    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END GRAFICOS_DONUT;
    
    PROCEDURE CARGA_GRAFICOS(PFECHA IN VARCHAR2,IO_CURSOR IN OUT T_CURSOR,IO_CURSOR2 IN OUT T_CURSOR,IO_CURSOR3 IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS

    BEGIN
        PERROR := 'OK';
        
        OPEN IO_CURSOR FOR
        SELECT 
            TO_CHAR(RESULTADO_VISACION) AS "RESULTADO_VISACION", 
            TO_CHAR(COUNT(RESULTADO_VISACION)) AS "TOTAL"
        FROM
            TB_QA_WEB_VISACION 
        WHERE
            SUBSTR(FECHA_INICIO, 4,7) = PFECHA
        GROUP BY 
            RESULTADO_VISACION
        ORDER BY
           COUNT(RESULTADO_VISACION);
        
        OPEN IO_CURSOR2 FOR
        SELECT 
            VISADOR
        FROM
            TB_QA_WEB_VISACION 
        WHERE
            SUBSTR(FECHA_INICIO, 4,7) = PFECHA
        GROUP BY 
            VISADOR;
            
        OPEN IO_CURSOR3 FOR
        SELECT 
            VISADOR,
            RESULTADO_VISACION
        FROM
            TB_QA_WEB_VISACION 
        WHERE
            SUBSTR(FECHA_INICIO, 4,7) = PFECHA;
      

    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END CARGA_GRAFICOS;
    
    
    PROCEDURE BUSCAR_T_F(PTICKET IN VARCHAR2,PFECHAINI IN VARCHAR2,PFECHAFIN IN VARCHAR2,IO_CURSOR IN OUT T_CURSOR,IO_CURSOR2 IN OUT T_CURSOR,IO_CURSOR3 IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    
    BEGIN
        
        PERROR := 'OK';
        IF PTICKET <> ' ' THEN
        
            OPEN IO_CURSOR FOR
            SELECT 
                TICKET,
                NUMERO_RECOMENDACION,
                APLICACION,
                RESPONSABILIDAD,
                STATUS
            FROM
                TB_QA_WEB_RECOMENDACIONES
            WHERE
                TICKET = PTICKET
            ORDER BY
                TO_NUMBER(NUMERO_RECOMENDACION);
        ELSE
        
            OPEN IO_CURSOR FOR
            SELECT
                TICKET,
                TO_CHAR(COUNT(TICKET)) AS "Q",
                VISADOR
            FROM
                TB_QA_WEB_VISACION    
            WHERE
                TO_DATE(SUBSTR(FECHA_RECEPCION,1,10), 'DD/MM/RRRR') BETWEEN TO_DATE(PFECHAINI, 'DD/MM/RRRR') AND TO_DATE(PFECHAFIN, 'DD/MM/RRRR')
            GROUP BY
                TICKET, VISADOR;
                  
        END IF;
        
        OPEN IO_CURSOR2 FOR
        SELECT 
            TICKET
        FROM
            TB_QA_WEB_RECOMENDACIONES;
                
        OPEN IO_CURSOR3 FOR                
        SELECT
            TICKET,
            FECHA_RECEPCION
        FROM
            TB_QA_WEB_VISACION    
        WHERE
            TO_DATE(SUBSTR(FECHA_RECEPCION,1,10), 'DD/MM/RRRR') BETWEEN TO_DATE(PFECHAINI, 'DD/MM/RRRR') AND TO_DATE(PFECHAFIN, 'DD/MM/RRRR');        

    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END BUSCAR_T_F;
    
    
    PROCEDURE AGREGAR_DETALLE(PSEMANA IN VARCHAR2,
                             PESTADO IN VARCHAR2,
                             PTICKET IN VARCHAR2,
                             PFECHAQA IN VARCHAR2,
                             PFECHAPROD IN VARCHAR2,
                             PFECHAREAL IN VARCHAR2,
                             PDESCRIPCION IN VARCHAR2,
                             PRESPONSABILIDAD IN VARCHAR2,
                             PPRIORIADAD IN VARCHAR2,
                             IO_CURSOR IN OUT T_CURSOR,
                             PERROR OUT VARCHAR2) IS
                             
    BEGIN
        PERROR := 'OK';
        
        INSERT INTO TB_QAWEB_DETALLE  (
            ESTADO,
            TICKET,
            SEMANA,
            FECHA_QA,
            FECHA_PROD,
            FECHA_REAL,
            DESCRIPCION,
            RESPOSABILIDAD,
            PRIORIDAD
        ) VALUES (
            PESTADO,
            PTICKET,
            PSEMANA,
            PFECHAQA,
            PFECHAPROD,
            PFECHAREAL,
            PDESCRIPCION,
            PRESPONSABILIDAD,
            PPRIORIADAD 
        );
            
        OPEN IO_CURSOR FOR
        SELECT
            'OK' RESULTADO
        FROM
            DUAL; 
            
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;                         
    
    END AGREGAR_DETALLE;
    PROCEDURE TICKET_DETALLE(PTICKET IN VARCHAR2,IO_CURSOR IN OUT T_CURSOR,PERROR OUT VARCHAR2) IS
                             
    BEGIN
        PERROR := 'OK';

            
        OPEN IO_CURSOR FOR
        SELECT
            TO_CHAR(COUNT(*)) AS CONTADOR
        FROM
            TB_QAWEB_DETALLE
            
        WHERE
            TICKET=PTICKET;
         
            
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;                         
    
    END TICKET_DETALLE;
    
    PROCEDURE HISTORIAL_DETALLE(IO_CURSOR IN OUT T_CURSOR,PERROR OUT VARCHAR2) IS
                             
    BEGIN
        PERROR := 'OK';

            
        OPEN IO_CURSOR FOR
        SELECT
            ESTADO,
            TICKET,
            SEMANA,
            FECHA_QA,
            FECHA_PROD,
            FECHA_REAL,
            DESCRIPCION,
            RESPOSABILIDAD,
            PRIORIDAD
        FROM
            TB_QAWEB_DETALLE
        ORDER BY
            TO_DATE(SEMANA,'DD/MM/RRRR');
            
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;                         
    
    END HISTORIAL_DETALLE;
    
    PROCEDURE ELIMINAR_DETALLE(PTICKET IN VARCHAR2,IO_CURSOR IN OUT T_CURSOR,PERROR OUT VARCHAR2) IS
                             
    BEGIN
        PERROR := 'OK';

            
        DELETE 
            FROM 
                TB_QAWEB_DETALLE
            WHERE 
                TICKET = PTICKET;
            
         OPEN IO_CURSOR FOR
            SELECT
                'OK' RESULTADO
            FROM
                DUAL;
                   
            
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;                         
    
    END ELIMINAR_DETALLE;
    
     PROCEDURE MODIFICAR_DETALLE(PESTADO IN VARCHAR2,
                             PTICKET IN VARCHAR2,
                             PFECHAQA IN VARCHAR2,
                             PFECHAPROD IN VARCHAR2,
                             PFECHAREAL IN VARCHAR2,
                             PDESCRIPCION IN VARCHAR2,
                             PRESPONSABILIDAD IN VARCHAR2,
                             PPRIORIADAD IN VARCHAR2,
                             IO_CURSOR IN OUT T_CURSOR,
                             PERROR OUT VARCHAR2) IS
                             
    BEGIN
        PERROR := 'OK';
        UPDATE 
                TB_QAWEB_DETALLE
            SET
                ESTADO = PESTADO,    
                FECHA_QA = PFECHAQA,    
                FECHA_PROD = PFECHAPROD,   
                FECHA_REAL = PFECHAREAL, 
                DESCRIPCION = PDESCRIPCION,
                RESPOSABILIDAD = PRESPONSABILIDAD,
                PRIORIDAD =PPRIORIADAD
            WHERE
                TICKET = PTICKET;
            
        OPEN IO_CURSOR FOR
            SELECT
                'OK' RESULTADO
            FROM
                DUAL;
                   
            
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;                         
    
    END MODIFICAR_DETALLE;
    
    
 PROCEDURE GRAFICO_PLANILLA(PFECHA_INICIO VARCHAR,PFECHA_FIN VARCHAR, IO_CURSOR IN OUT T_CURSOR,PERROR OUT VARCHAR2) IS
                             
    BEGIN
        PERROR := 'OK';
                    
        OPEN IO_CURSOR FOR   
        
        SELECT
            TO_CHAR(FECHA_QA1) AS "FECHA_QA",
            TO_CHAR(CANTIDAD_TICKET1) AS "CANTIDAD_TICKET"
        FROM
            (SELECT
                TO_DATE(SUBSTR(FECHA_QA, 1, 10), 'DD/MM/RRRR') AS "FECHA_QA1",
                COUNT(TO_DATE(SUBSTR(FECHA_QA, 1, 10), 'DD/MM/RRRR')) AS "CANTIDAD_TICKET1"
            FROM
                TB_QAWEB_DETALLE
            WHERE
                TO_DATE(SUBSTR(FECHA_QA, 1, 10), 'DD/MM/RRRR') >= TO_DATE(PFECHA_INICIO, 'DD/MM/RRRR')
            AND
                TO_DATE(SUBSTR(FECHA_QA, 1, 10), 'DD/MM/RRRR') <= TO_DATE(PFECHA_FIN, 'DD/MM/RRRR')
            GROUP BY
                TO_DATE(SUBSTR(FECHA_QA, 1, 10), 'DD/MM/RRRR'));
                   
            
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;                         
    
    END GRAFICO_PLANILLA;
    
    PROCEDURE BUSCAR_PASOSQA(PTICKET IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR,PERROR OUT VARCHAR2)
    IS
    
    BEGIN
        PERROR := 'OK';
        
        OPEN IO_CURSOR FOR
        SELECT
            NUMERO,
            FECHA_LLEGADA,
            FECHA_ENVIO,
            ESTADO
        FROM
            TB_QA_WEB_PASOSQA
        WHERE
            TICKET = SUBSTR(PTICKET, 1, 8);
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END; 
    END BUSCAR_PASOSQA;
    
    PROCEDURE ELIMINAR_TICKET(PTICKET IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    
    BEGIN
        PERROR := 'OK';
        
        DELETE
            TB_QA_WEB_PLANIFICACION
        WHERE
            TICKET = SUBSTR(PTICKET, 1, 8);
        
        COMMIT;

        DELETE
            TB_QA_WEB_PLANIFICACION_HIST
        WHERE
            TICKET = SUBSTR(PTICKET, 1, 8);
        
        COMMIT;
        
        DELETE
            TB_QA_WEB_VISACION
        WHERE
            TICKET = SUBSTR(PTICKET, 1, 8);
        
        COMMIT;
        
        DELETE
            TB_QA_WEB_CALENDARIO
        WHERE
            TICKET = SUBSTR(PTICKET, 1, 8);
            
        COMMIT;
        
        OPEN IO_CURSOR FOR
        SELECT
            'OK' RESULTADO
        FROM
            DUAL;
        
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END ELIMINAR_TICKET;
    
    PROCEDURE INICIAR_PAUSA(PTICKET IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    
    BEGIN
        PERROR := 'OK';
        
        INSERT INTO TB_QA_WEB_TIEMPO_PAUSA(
            ID, 
            TICKET, 
            TIEMPO_INICIO
        ) VALUES (
            SEC_QAWEB_PAUSA.NEXTVAL,
            SUBSTR(PTICKET, 1, 8),
            SYSDATE
        );
        
        UPDATE
            TB_QA_WEB_PLANIFICACION
        SET
            ID_ESTADO = 7,
            ESTADO = 'PAUSADO',
            BOTON_PAUSA = 1
        WHERE
            TICKET = SUBSTR(PTICKET, 1, 8);
        
        OPEN IO_CURSOR FOR
        SELECT
            'OK' RESULTADO
        FROM
            DUAL;
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END INICIAR_PAUSA;
    
    PROCEDURE DETENER_PAUSA(PTICKET IN VARCHAR2, IO_CURSOR IN OUT T_CURSOR, PERROR OUT VARCHAR2)
    IS
    
    V_MAX NUMERIC;
    
    BEGIN
        PERROR := 'OK';
        
        SELECT
            MAX(ID) INTO V_MAX
        FROM
            TB_QA_WEB_TIEMPO_PAUSA
        WHERE
            TICKET = SUBSTR(PTICKET, 1, 8);
            
        UPDATE
            TB_QA_WEB_TIEMPO_PAUSA
        SET
            TIEMPO_TERMINO = SYSDATE
        WHERE
            ID = V_MAX;
            
        UPDATE
            TB_QA_WEB_TIEMPO_PAUSA
        SET
            MINUTOS = ROUND((TIEMPO_TERMINO - TIEMPO_INICIO) * (60 * 24), 1)
        WHERE
            ID = V_MAX;
        
        UPDATE
            TB_QA_WEB_PLANIFICACION
        SET
            ID_ESTADO = 2,
            ESTADO = 'EN PROCESO',
            BOTON_PAUSA = 0
        WHERE
            TICKET = SUBSTR(PTICKET, 1, 8);
            
        OPEN IO_CURSOR FOR
        SELECT
            'OK' RESULTADO
        FROM
            DUAL;
    EXCEPTION
        WHEN OTHERS THEN
        BEGIN
            PERROR := SQLERRM;
        END;
    END DETENER_PAUSA;
    
END PKG_QA_WEB;
