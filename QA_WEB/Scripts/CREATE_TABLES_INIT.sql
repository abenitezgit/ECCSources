DROP TABLE QA_WEB.DEBUG CASCADE CONSTRAINTS;

CREATE TABLE QA_WEB.DEBUG
(
  TEXTO   VARCHAR2(4000 BYTE),
  NUMERO  NUMBER
)
TABLESPACE PASO
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
NOMONITORING;


DROP TABLE QA_WEB.PP CASCADE CONSTRAINTS;

CREATE TABLE QA_WEB.PP
(
  FEC  DATE
)
TABLESPACE TBS_DAT_SMALL
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
NOMONITORING;


DROP TABLE QA_WEB.TB_QAWEB_DETALLE CASCADE CONSTRAINTS;

CREATE TABLE QA_WEB.TB_QAWEB_DETALLE
(
  ID_DETALLE      NUMBER,
  ESTADO          VARCHAR2(20 BYTE),
  TICKET          VARCHAR2(7 BYTE),
  SEMANA          VARCHAR2(20 BYTE),
  FECHA_QA        VARCHAR2(20 BYTE),
  FECHA_PROD      VARCHAR2(20 BYTE),
  FECHA_REAL      VARCHAR2(20 BYTE),
  DESCRIPCION     VARCHAR2(4000 BYTE),
  RESPOSABILIDAD  VARCHAR2(250 BYTE),
  PRIORIDAD       VARCHAR2(16 BYTE)
)
TABLESPACE PASO
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
NOMONITORING;


DROP TABLE QA_WEB.TB_QA_WEB_CALENDARIO CASCADE CONSTRAINTS;

CREATE TABLE QA_WEB.TB_QA_WEB_CALENDARIO
(
  TICKET         VARCHAR2(8 BYTE),
  FECHA_INGRESO  VARCHAR2(16 BYTE),
  HH_DESA        INTEGER,
  OLA            INTEGER,
  ID_VISADOR     VARCHAR2(30 BYTE),
  ID_ITSM        VARCHAR2(30 BYTE),
  ASIG_TK        VARCHAR2(12 BYTE),
  FECHA_QA       VARCHAR2(16 BYTE),
  FECHA_PROD     VARCHAR2(16 BYTE),
  OBSERVACION    VARCHAR2(500 BYTE),
  COLOR          VARCHAR2(20 BYTE),
  FECHA_INICIO   VARCHAR2(16 BYTE),
  FECHA_FIN      VARCHAR2(16 BYTE)
)
TABLESPACE PASO
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
NOMONITORING;


DROP TABLE QA_WEB.TB_QA_WEB_CLIENTES CASCADE CONSTRAINTS;

CREATE TABLE QA_WEB.TB_QA_WEB_CLIENTES
(
  CLIENTE_COMPLETO  VARCHAR2(500 BYTE),
  CLIENTE           VARCHAR2(500 BYTE)
)
TABLESPACE PASO
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
NOMONITORING;


DROP TABLE QA_WEB.TB_QA_WEB_CONFIG CASCADE CONSTRAINTS;

CREATE TABLE QA_WEB.TB_QA_WEB_CONFIG
(
  ID_CONFIG  INTEGER,
  OLA_QA     INTEGER,
  OPTIMO     INTEGER,
  MAXIMO     INTEGER
)
TABLESPACE PASO
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
NOMONITORING;


DROP TABLE QA_WEB.TB_QA_WEB_DISTRIBUCION CASCADE CONSTRAINTS;

CREATE TABLE QA_WEB.TB_QA_WEB_DISTRIBUCION
(
  TICKET        VARCHAR2(8 BYTE),
  FECHA         VARCHAR2(10 BYTE),
  ASIGNADO      VARCHAR2(30 BYTE),
  ASIG_TK       VARCHAR2(12 BYTE),
  SLO           INTEGER,
  OPT           INTEGER,
  MAX           INTEGER,
  ID_CONFIG     INTEGER,
  COLOR         VARCHAR2(20 BYTE),
  FECHA_INICIO  VARCHAR2(16 BYTE),
  FECHA_FIN     VARCHAR2(16 BYTE)
)
TABLESPACE PASO
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
NOMONITORING;


DROP TABLE QA_WEB.TB_QA_WEB_ESTADO CASCADE CONSTRAINTS;

CREATE TABLE QA_WEB.TB_QA_WEB_ESTADO
(
  ID_ESTADO    INTEGER,
  DESCRIPCION  VARCHAR2(30 BYTE)                NOT NULL
)
TABLESPACE PASO
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
NOMONITORING;


DROP TABLE QA_WEB.TB_QA_WEB_FERIADOS CASCADE CONSTRAINTS;

CREATE TABLE QA_WEB.TB_QA_WEB_FERIADOS
(
  ID     NUMBER,
  FECHA  VARCHAR2(10 BYTE)
)
TABLESPACE PASO
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
NOMONITORING;


DROP TABLE QA_WEB.TB_QA_WEB_NOQAENTRADA CASCADE CONSTRAINTS;

CREATE TABLE QA_WEB.TB_QA_WEB_NOQAENTRADA
(
  TICKET                 VARCHAR2(8 BYTE),
  ID_ITSM                VARCHAR2(15 BYTE),
  FECHA_PRODUCCION_REAL  VARCHAR2(16 BYTE),
  FECHA_PLANIFICACION    VARCHAR2(16 BYTE)
)
TABLESPACE PASO
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
NOMONITORING;


DROP TABLE QA_WEB.TB_QA_WEB_PASOSQA CASCADE CONSTRAINTS;

CREATE TABLE QA_WEB.TB_QA_WEB_PASOSQA
(
  ID_PASOSQA     INTEGER,
  FECHA_INGRESO  VARCHAR2(16 BYTE),
  TICKET         VARCHAR2(8 BYTE),
  NUMERO         INTEGER,
  FECHA_LLEGADA  VARCHAR2(16 BYTE),
  FECHA_ENVIO    VARCHAR2(16 BYTE),
  ESTADO         VARCHAR2(20 BYTE)
)
TABLESPACE PASO
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
NOMONITORING;


DROP TABLE QA_WEB.TB_QA_WEB_PERFIL CASCADE CONSTRAINTS;

CREATE TABLE QA_WEB.TB_QA_WEB_PERFIL
(
  ID_PERFIL     INTEGER,
  NOMRE_PERFIL  VARCHAR2(30 BYTE)               NOT NULL
)
TABLESPACE PASO
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
NOMONITORING;


DROP TABLE QA_WEB.TB_QA_WEB_PLANIFICACION CASCADE CONSTRAINTS;

CREATE TABLE QA_WEB.TB_QA_WEB_PLANIFICACION
(
  TICKET                 VARCHAR2(8 BYTE),
  FECHA_INGRESO          VARCHAR2(16 BYTE),
  FECHA_PLANIFICACION    VARCHAR2(16 BYTE),
  FECHA_QA               VARCHAR2(16 BYTE),
  FECHA_QA_REAL          VARCHAR2(16 BYTE),
  FECHA_PRODUCCION       VARCHAR2(16 BYTE),
  FECHA_PRODUCCION_REAL  VARCHAR2(16 BYTE),
  HORAS_DESARROLLO       VARCHAR2(4 BYTE),
  ID_TIPO_DESARROLLO     VARCHAR2(2 BYTE),
  TIPO_DESARROLLO        VARCHAR2(30 BYTE),
  ID_VISADOR             VARCHAR2(15 BYTE),
  VISADOR                VARCHAR2(30 BYTE),
  CLIENTE                VARCHAR2(100 BYTE),
  ITSM                   VARCHAR2(30 BYTE),
  ID_ITSM                VARCHAR2(15 BYTE),
  FECHA_SGP              VARCHAR2(16 BYTE),
  ID_PRIORIDAD           VARCHAR2(2 BYTE),
  PRIORIDAD              VARCHAR2(15 BYTE),
  PASO_POR_QA            VARCHAR2(2 BYTE),
  DETALLE_SGP            VARCHAR2(1000 BYTE),
  HISTORIAL              VARCHAR2(2000 BYTE),
  ID_ESTADO              VARCHAR2(2 BYTE),
  ESTADO                 VARCHAR2(30 BYTE),
  USUARIO                VARCHAR2(15 BYTE),
  CUMPLIMIENTO_QA        VARCHAR2(25 BYTE),
  CUMPLIMIENTO_PROD      VARCHAR2(25 BYTE),
  FEEDBACK               VARCHAR2(1000 BYTE),
  NORMA_QA               VARCHAR2(2 BYTE),
  BOTON_PAUSA            NUMBER                 DEFAULT 0
)
TABLESPACE PASO
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
NOMONITORING;


DROP TABLE QA_WEB.TB_QA_WEB_PLANIFICACION_HIST CASCADE CONSTRAINTS;

CREATE TABLE QA_WEB.TB_QA_WEB_PLANIFICACION_HIST
(
  ID_HISTORIAL_PLANIFICACION  INTEGER,
  TICKET                      VARCHAR2(8 BYTE),
  FECHA_QA                    VARCHAR2(16 BYTE),
  FECHA_REAL                  VARCHAR2(16 BYTE),
  FECHA_PRODUCCION            VARCHAR2(16 BYTE),
  OBSERVACIONES               VARCHAR2(400 BYTE),
  FECHA_INGRESO_HISTORIAL     VARCHAR2(20 BYTE),
  FECHA_PROD_REAL             VARCHAR2(16 BYTE),
  HORAS_DESARROLLO            VARCHAR2(4 BYTE),
  TIPO_DESARROLLO             VARCHAR2(30 BYTE),
  CLIENTE                     VARCHAR2(100 BYTE),
  VISADOR                     VARCHAR2(50 BYTE),
  PRIORIDADD                  VARCHAR2(20 BYTE),
  PASAQA                      VARCHAR2(2 BYTE),
  FECHA_PLANIFICACION         VARCHAR2(10 BYTE),
  ITSM                        VARCHAR2(30 BYTE)
)
TABLESPACE PASO
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
NOMONITORING;


DROP TABLE QA_WEB.TB_QA_WEB_PRIORIDAD CASCADE CONSTRAINTS;

CREATE TABLE QA_WEB.TB_QA_WEB_PRIORIDAD
(
  ID_PRIORIDAD  INTEGER,
  DESCRIPCION   VARCHAR2(15 BYTE)               NOT NULL
)
TABLESPACE PASO
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
NOMONITORING;


DROP TABLE QA_WEB.TB_QA_WEB_RECOMENDACIONES CASCADE CONSTRAINTS;

CREATE TABLE QA_WEB.TB_QA_WEB_RECOMENDACIONES
(
  ID_RECOMENDACIONES    NUMBER,
  FECHA_INGRESO         VARCHAR2(16 BYTE),
  TICKET                VARCHAR2(8 BYTE),
  APLICACION            VARCHAR2(15 BYTE),
  NUMERO_APLICACION     VARCHAR2(2 BYTE),
  NUMERO_RECOMENDACION  VARCHAR2(4 BYTE),
  TIPO_ERROR            VARCHAR2(10 BYTE),
  RESPONSABILIDAD       VARCHAR2(30 BYTE),
  DESCRIPCION           VARCHAR2(500 BYTE),
  RESULTADO             VARCHAR2(16 BYTE),
  USUARIO               VARCHAR2(30 BYTE),
  ESTADO                VARCHAR2(20 BYTE),
  STATUS                VARCHAR2(12 BYTE)
)
TABLESPACE PASO
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
NOMONITORING;


DROP TABLE QA_WEB.TB_QA_WEB_TIEMPO_PAUSA CASCADE CONSTRAINTS;

CREATE TABLE QA_WEB.TB_QA_WEB_TIEMPO_PAUSA
(
  ID              INTEGER,
  TICKET          VARCHAR2(8 BYTE),
  TIEMPO_INICIO   DATE,
  TIEMPO_TERMINO  DATE,
  MINUTOS         INTEGER
)
TABLESPACE PASO
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
NOMONITORING;


ALTER TABLE QA_WEB.TB_QA_WEB_TIPO_DESARROLLO
 DROP PRIMARY KEY CASCADE;

DROP TABLE QA_WEB.TB_QA_WEB_TIPO_DESARROLLO CASCADE CONSTRAINTS;

CREATE TABLE QA_WEB.TB_QA_WEB_TIPO_DESARROLLO
(
  ID_TIPO_DESARROLLO  INTEGER,
  DESCRIPCION         VARCHAR2(30 BYTE)
)
TABLESPACE PASO
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
NOMONITORING;


DROP TABLE QA_WEB.TB_QA_WEB_USUARIO CASCADE CONSTRAINTS;

CREATE TABLE QA_WEB.TB_QA_WEB_USUARIO
(
  ID_USUARIO  INTEGER,
  USUARIO     VARCHAR2(15 BYTE)                 NOT NULL,
  PASS        VARCHAR2(15 BYTE)                 NOT NULL,
  NOMBRES     VARCHAR2(50 BYTE),
  A_PATERNO   VARCHAR2(30 BYTE),
  A_MATERNO   VARCHAR2(30 BYTE),
  CARGO       VARCHAR2(30 BYTE),
  CORREO      VARCHAR2(50 BYTE),
  PERFIL      VARCHAR2(30 BYTE),
  ID_PERFIL   INTEGER,
  ESTADO      VARCHAR2(8 BYTE)
)
TABLESPACE PASO
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
NOMONITORING;


DROP TABLE QA_WEB.TB_QA_WEB_VISACION CASCADE CONSTRAINTS;

CREATE TABLE QA_WEB.TB_QA_WEB_VISACION
(
  ID_VISACION         NUMBER,
  TICKET              VARCHAR2(8 BYTE),
  FECHA_RECEPCION     VARCHAR2(16 BYTE),
  FECHA_INICIO        VARCHAR2(16 BYTE),
  FECHA_TERMINO       VARCHAR2(16 BYTE),
  HORAS_DESARROLLO    VARCHAR2(2 BYTE),
  TIEMPO_TOTAL        VARCHAR2(5 BYTE),
  DESCRIPCION         VARCHAR2(400 BYTE),
  CLIENTE             VARCHAR2(100 BYTE),
  TIPO_DESARROLLO     VARCHAR2(30 BYTE),
  TIPO_QA             VARCHAR2(20 BYTE),
  RESULTADO_VISACION  VARCHAR2(20 BYTE),
  NUMERO_VISACION     VARCHAR2(2 BYTE),
  ITSM                VARCHAR2(30 BYTE),
  PROGRAMADOR         VARCHAR2(30 BYTE),
  VISADOR             VARCHAR2(30 BYTE),
  ESTADO_VISACION     VARCHAR2(15 BYTE),
  TIPO_APLICACION     VARCHAR2(20 BYTE),
  OBJETOS_PRODUCCION  VARCHAR2(5 BYTE),
  FALLA_VISACION      VARCHAR2(2 BYTE),
  TIPO_ERROR          VARCHAR2(50 BYTE),
  ID_ITSM             VARCHAR2(15 BYTE),
  ID_PROGRAMADOR      VARCHAR2(15 BYTE),
  ID_VISADOR          VARCHAR2(15 BYTE),
  ID_TIPO_APLICACION  VARCHAR2(2 BYTE)
)
TABLESPACE PASO
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
NOMONITORING;


CREATE INDEX QA_WEB.IDX01_TICKET ON QA_WEB.TB_QAWEB_DETALLE
(TICKET)
LOGGING
TABLESPACE TBS_DAT_SMALL
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE INDEX QA_WEB.IDX01_CALTIKXET ON QA_WEB.TB_QA_WEB_CALENDARIO
(TICKET)
LOGGING
TABLESPACE TBS_DAT_SMALL
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE INDEX QA_WEB.INX_TICKET ON QA_WEB.TB_QA_WEB_NOQAENTRADA
(TICKET)
LOGGING
TABLESPACE PASO
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE INDEX QA_WEB.IDX01_IDESTADO ON QA_WEB.TB_QA_WEB_PLANIFICACION
(ID_ESTADO)
LOGGING
TABLESPACE TBS_DAT_SMALL
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE INDEX QA_WEB.IDX02_TICKET ON QA_WEB.TB_QA_WEB_PLANIFICACION
(TICKET)
LOGGING
TABLESPACE TBS_DAT_SMALL
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE INDEX QA_WEB.IDX01_WPHTICKET ON QA_WEB.TB_QA_WEB_PLANIFICACION_HIST
(TICKET)
LOGGING
TABLESPACE TBS_DAT_SMALL
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE INDEX QA_WEB.IDX01_TANAPP ON QA_WEB.TB_QA_WEB_RECOMENDACIONES
(TICKET, APLICACION, NUMERO_APLICACION)
LOGGING
TABLESPACE TBS_DAT_SMALL
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE INDEX QA_WEB.IDX02_TPNREC ON QA_WEB.TB_QA_WEB_RECOMENDACIONES
(TICKET, APLICACION, NUMERO_RECOMENDACION)
LOGGING
TABLESPACE TBS_DAT_SMALL
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE UNIQUE INDEX QA_WEB.TB_QA_WEB_TIPO_DESARROLLO_PK ON QA_WEB.TB_QA_WEB_TIPO_DESARROLLO
(ID_TIPO_DESARROLLO)
LOGGING
TABLESPACE PASO
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE INDEX QA_WEB.IDX01_USERPASS ON QA_WEB.TB_QA_WEB_USUARIO
(USUARIO, PASS)
LOGGING
TABLESPACE TBS_DAT_SMALL
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE INDEX QA_WEB.IDX02_PERDILESTADO ON QA_WEB.TB_QA_WEB_USUARIO
(ID_PERFIL, ESTADO)
LOGGING
TABLESPACE TBS_DAT_SMALL
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE INDEX QA_WEB.IDX01_VISTICKET ON QA_WEB.TB_QA_WEB_VISACION
(TICKET)
LOGGING
TABLESPACE TBS_DAT_SMALL
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE INDEX QA_WEB.IDX02_TICKETTAPP ON QA_WEB.TB_QA_WEB_VISACION
(TICKET, TIPO_APLICACION)
LOGGING
TABLESPACE TBS_DAT_SMALL
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE INDEX QA_WEB.IDX03_TICKETTAPPNV ON QA_WEB.TB_QA_WEB_VISACION
(TICKET, TIPO_APLICACION, NUMERO_VISACION)
LOGGING
TABLESPACE TBS_DAT_SMALL
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             40K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE OR REPLACE TRIGGER QA_WEB.TRIG_DET
BEFORE INSERT ON QA_WEB.TB_QAWEB_DETALLE 
FOR EACH ROW
BEGIN
SELECT SEC_QAWEB_DETALLE.NEXTVAL INTO :NEW.ID_DETALLE  FROM DUAL;
END;
/


ALTER TABLE QA_WEB.TB_QA_WEB_TIPO_DESARROLLO ADD (
  CONSTRAINT TB_QA_WEB_TIPO_DESARROLLO_PK
  PRIMARY KEY
  (ID_TIPO_DESARROLLO)
  USING INDEX QA_WEB.TB_QA_WEB_TIPO_DESARROLLO_PK
  ENABLE VALIDATE);
