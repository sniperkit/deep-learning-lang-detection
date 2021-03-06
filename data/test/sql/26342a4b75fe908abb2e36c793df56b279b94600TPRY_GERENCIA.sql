--------------------------------------------------------
-- Archivo creado  - viernes-abril-04-2014   
--------------------------------------------------------
DROP TABLE "REFERENCIA"."TPRY_GERENCIA" cascade constraints;
--------------------------------------------------------
--  DDL for Table TPRY_GERENCIA
--------------------------------------------------------

  CREATE TABLE "REFERENCIA"."TPRY_GERENCIA" 
   (	"GCIA_ID" NUMBER, 
	"GCIA_NOMBRE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
REM INSERTING into REFERENCIA.TPRY_GERENCIA
SET DEFINE OFF;
Insert into REFERENCIA.TPRY_GERENCIA (GCIA_ID,GCIA_NOMBRE) values (1,'Abastecimientos');
Insert into REFERENCIA.TPRY_GERENCIA (GCIA_ID,GCIA_NOMBRE) values (2,'Proyectos');
Insert into REFERENCIA.TPRY_GERENCIA (GCIA_ID,GCIA_NOMBRE) values (3,'Usuario');
--------------------------------------------------------
--  DDL for Index TGENAREA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REFERENCIA"."TGENAREA_PK" ON "REFERENCIA"."TPRY_GERENCIA" ("GCIA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  Constraints for Table TPRY_GERENCIA
--------------------------------------------------------

  ALTER TABLE "REFERENCIA"."TPRY_GERENCIA" ADD CONSTRAINT "PK01_GCIA_ID" PRIMARY KEY ("GCIA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE;
  ALTER TABLE "REFERENCIA"."TPRY_GERENCIA" MODIFY ("GCIA_ID" NOT NULL ENABLE);
