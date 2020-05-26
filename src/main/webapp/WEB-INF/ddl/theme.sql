--------------------------------------------------------
--  파일이 생성됨 - 화요일-3월-31-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table THEME
--------------------------------------------------------

  CREATE TABLE JAVA2.THEME 
   (	THEME_CODE VARCHAR2(30 BYTE), 
	THEME_NM VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE TS_STUDY ;
  
  COMMENT ON COLUMN THEME.THEME_CODE IS '테마코드'
  COMMENT ON COLUMN THEME.THEME_NM IS '테마명'
  COMMENT ON TABLE THEME  IS '관광테마 테이블'
  
REM INSERTING into JAVA2.THEME
SET DEFINE OFF;
Insert into JAVA2.THEME (THEME_CODE,THEME_NM) values ('TM00',null);
Insert into JAVA2.THEME (THEME_CODE,THEME_NM) values ('TM01','크루즈');
Insert into JAVA2.THEME (THEME_CODE,THEME_NM) values ('TM02','트레킹');
Insert into JAVA2.THEME (THEME_CODE,THEME_NM) values ('TM03','허니문');
Insert into JAVA2.THEME (THEME_CODE,THEME_NM) values ('TM04','골프');
Insert into JAVA2.THEME (THEME_CODE,THEME_NM) values ('TM05','기타');
--------------------------------------------------------
--  Constraints for Table THEME
--------------------------------------------------------

  ALTER TABLE JAVA2.THEME MODIFY (THEME_CODE NOT NULL ENABLE);
