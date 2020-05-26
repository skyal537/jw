--------------------------------------------------------
--  파일이 생성됨 - 화요일-3월-31-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table AREA
--------------------------------------------------------

  CREATE TABLE JAVA2.AREA 
   (	AREA_COE VARCHAR2(30 BYTE), 
	AREA VARCHAR2(30 BYTE), 
	CONTINENT VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE TS_STUDY ;
  
  COMMENT ON COLUMN AREA.AREA_CODE IS '지역코드'
  COMMENT ON COLUMN AREA.AREA IS '지역명'
  COMMENT ON COLUMN AREA.CONTINENT IS '대륙'
  COMMENT ON TABLE AREA  IS '지역 테이블'
  
REM INSERTING into JAVA2.AREA
SET DEFINE OFF;
Insert into JAVA2.AREA (AREA_COE,AREA,CONTINENT) values ('EUE','동유럽','EU');
Insert into JAVA2.AREA (AREA_COE,AREA,CONTINENT) values ('EUW','서유럽','EU');
Insert into JAVA2.AREA (AREA_COE,AREA,CONTINENT) values ('EUN','북유럽','EU');
Insert into JAVA2.AREA (AREA_COE,AREA,CONTINENT) values ('EUS','남유럽','EU');
--------------------------------------------------------
--  Constraints for Table AREA
--------------------------------------------------------

  ALTER TABLE JAVA2.AREA MODIFY (AREA_COE NOT NULL ENABLE);
