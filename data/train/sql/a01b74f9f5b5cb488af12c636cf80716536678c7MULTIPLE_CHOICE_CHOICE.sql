-- Drop the existing table (if any)

DROP TABLE "CS414S16"."MULTPILE_CHOICE_CHOICE";

--------------------------------------------------------
--  DDL for Table MULTPILE_CHOICE_CHOICE
--------------------------------------------------------

  CREATE TABLE "CS414S16"."MULTPILE_CHOICE_CHOICE" 
   (	"MULTIPLE_CHOICE_CHOICE_ID" NUMBER, 
	"QUESTION_ID" NUMBER, 
	"CHOICE_TEXT" VARCHAR2(100 BYTE), 
	"SET_ORDER" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MULTPILE_CHOICE_CHOICE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS414S16"."MULTPILE_CHOICE_CHOICE_PK" ON "CS414S16"."MULTPILE_CHOICE_CHOICE" ("MULTIPLE_CHOICE_CHOICE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MULTPILE_CHOICE_CHOICE_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS414S16"."MULTPILE_CHOICE_CHOICE_UK1" ON "CS414S16"."MULTPILE_CHOICE_CHOICE" ("QUESTION_ID", "SET_ORDER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table MULTPILE_CHOICE_CHOICE
--------------------------------------------------------

  ALTER TABLE "CS414S16"."MULTPILE_CHOICE_CHOICE" ADD CONSTRAINT "MULTPILE_CHOICE_CHOICE_UK" UNIQUE ("QUESTION_ID", "SET_ORDER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "CS414S16"."MULTPILE_CHOICE_CHOICE" ADD CONSTRAINT "MULTPILE_CHOICE_CHOICE_PK" PRIMARY KEY ("MULTIPLE_CHOICE_CHOICE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "CS414S16"."MULTPILE_CHOICE_CHOICE" MODIFY ("SET_ORDER" NOT NULL ENABLE);
  ALTER TABLE "CS414S16"."MULTPILE_CHOICE_CHOICE" MODIFY ("CHOICE_TEXT" NOT NULL ENABLE);
  ALTER TABLE "CS414S16"."MULTPILE_CHOICE_CHOICE" MODIFY ("QUESTION_ID" NOT NULL ENABLE);
  ALTER TABLE "CS414S16"."MULTPILE_CHOICE_CHOICE" MODIFY ("MULTIPLE_CHOICE_CHOICE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table MULTPILE_CHOICE_CHOICE
--------------------------------------------------------

  ALTER TABLE "CS414S16"."MULTPILE_CHOICE_CHOICE" ADD CONSTRAINT "MULTPILE_CHOICE_CHOICE_QU_FK" FOREIGN KEY ("QUESTION_ID")
	  REFERENCES "CS414S16"."QUESTION" ("QUESTION_ID") ENABLE;
