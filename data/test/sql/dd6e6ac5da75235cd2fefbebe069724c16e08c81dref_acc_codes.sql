SET DEFINE OFF;
CREATE TABLE DREF_ACC_CODES
(
  ACCOUNT_ID    VARCHAR2(50 BYTE),
  ACCOUNT_NAME  VARCHAR2(100 BYTE),
  ACCOUNT_TYPE  VARCHAR2(100 BYTE),
  DESC_LEVEL1   VARCHAR2(100 BYTE),
  DESC_LEVEL2   VARCHAR2(100 BYTE),
  DESC_LEVEL3   VARCHAR2(100 BYTE),
  DESC_LEVEL4   VARCHAR2(100 BYTE)
)
TABLESPACE DTW_ADV_TABLES
RESULT_CACHE (MODE DEFAULT)
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          80K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE UNIQUE INDEX DREF_ACCOUNT_CODES_PK ON DREF_ACC_CODES
(ACCOUNT_ID, ACCOUNT_NAME)
LOGGING
TABLESPACE DTW_ADV_TABLES
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
NOPARALLEL;


ALTER TABLE DREF_ACC_CODES ADD (
  CONSTRAINT DREF_ACCOUNT_CODES_PK
  PRIMARY KEY
  (ACCOUNT_ID, ACCOUNT_NAME)
  USING INDEX DREF_ACCOUNT_CODES_PK
  ENABLE VALIDATE);
