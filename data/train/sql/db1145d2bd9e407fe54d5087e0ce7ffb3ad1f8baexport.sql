--------------------------------------------------------
-- Archivo creado  - jueves-junio-04-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ACTIVIDADES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ACTIVIDADES" 
   (	"NOMBRE" VARCHAR2(20 BYTE), 
	"FECHA" VARCHAR2(20 BYTE), 
	"HORA" VARCHAR2(20 BYTE), 
	"ID_USUARIO" NUMBER, 
	"ID_SESION" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ACTIVIDADES_SESIONES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ACTIVIDADES_SESIONES" 
   (	"NOMBRE" VARCHAR2(20 BYTE), 
	"DIA" VARCHAR2(20 BYTE), 
	"HORA" VARCHAR2(20 BYTE), 
	"ID_SESION" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FISIO
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."FISIO" 
   (	"ID" NUMBER, 
	"NOMBRE" VARCHAR2(20 BYTE), 
	"DESCRIPCION" VARCHAR2(500 BYTE), 
	"FECHA" VARCHAR2(20 BYTE), 
	"HORA" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ENTRENAMIENTOS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ENTRENAMIENTOS" 
   (	"ID" NUMBER, 
	"NOMBRE" VARCHAR2(30 BYTE), 
	"ARCHIVO" BLOB
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("ARCHIVO") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table PISTAS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."PISTAS" 
   (	"NOMBRE" VARCHAR2(20 BYTE), 
	"FECHA" VARCHAR2(20 BYTE), 
	"HORA" VARCHAR2(20 BYTE), 
	"ID_USUARIO" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PISTAS_TIPOS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."PISTAS_TIPOS" 
   (	"NOMBRE" VARCHAR2(20 BYTE), 
	"ID_PISTA" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USUARIOS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."USUARIOS" 
   (	"ID_USUARIO" NUMBER, 
	"NOMBRE" VARCHAR2(20 BYTE), 
	"CLAVE" VARCHAR2(20 BYTE), 
	"TIPO_CUENTA" NUMBER(*,0) DEFAULT 0
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.ACTIVIDADES
SET DEFINE OFF;
REM INSERTING into SYSTEM.ACTIVIDADES_SESIONES
SET DEFINE OFF;
REM INSERTING into SYSTEM.FISIO
SET DEFINE OFF;
REM INSERTING into SYSTEM.ENTRENAMIENTOS
SET DEFINE OFF;
Insert into SYSTEM.ENTRENAMIENTOS (ID,NOMBRE) values ('2','fullbody');
Insert into SYSTEM.ENTRENAMIENTOS (ID,NOMBRE) values ('1','weider');
Insert into SYSTEM.ENTRENAMIENTOS (ID,NOMBRE) values ('3','crossfit');
Insert into SYSTEM.ENTRENAMIENTOS (ID,NOMBRE) values ('4','gap');
Insert into SYSTEM.ENTRENAMIENTOS (ID,NOMBRE) values ('5','bodypump');
Insert into SYSTEM.ENTRENAMIENTOS (ID,NOMBRE) values ('6','volumen');
REM INSERTING into SYSTEM.PISTAS
SET DEFINE OFF;
REM INSERTING into SYSTEM.PISTAS_TIPOS
SET DEFINE OFF;
REM INSERTING into SYSTEM.USUARIOS
SET DEFINE OFF;
Insert into SYSTEM.USUARIOS (ID_USUARIO,NOMBRE,CLAVE,TIPO_CUENTA) values ('1','a','a','0');
Insert into SYSTEM.USUARIOS (ID_USUARIO,NOMBRE,CLAVE,TIPO_CUENTA) values ('2','b','b','1');
Insert into SYSTEM.USUARIOS (ID_USUARIO,NOMBRE,CLAVE,TIPO_CUENTA) values ('3','c','c','2');
