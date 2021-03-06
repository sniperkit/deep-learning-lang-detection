
  CREATE TABLE "WEBLEARNING"."TOPICDETAIL" 
   (	"TOPICDETAILID" NUMBER NOT NULL ENABLE, 
	"TOPICDETAILNAME" VARCHAR2(35 BYTE) NOT NULL ENABLE, 
	"TOPICID" NUMBER NOT NULL ENABLE, 
	"CLASSNAME" VARCHAR2(500 BYTE), 
	 CONSTRAINT "TOPICDETAIL_PK" PRIMARY KEY ("TOPICDETAILID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "FK_TOPICID_ON_TOPIC" FOREIGN KEY ("TOPICID")
	  REFERENCES "WEBLEARNING"."TOPIC" ("TOPICID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
 
