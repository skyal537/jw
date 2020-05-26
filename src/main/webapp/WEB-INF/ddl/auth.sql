--------------------------------------------------------
--  파일이 생성됨 - 화요일-3월-31-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table AUTH
--------------------------------------------------------

  CREATE TABLE JAVA2.AUTH 
   (	AUTH_CODE NUMBER, 
	AUTH_NM VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE TS_STUDY ;
  
  COMMENT ON COLUMN AUTH.AUTH_CODE IS '권한코드'
  COMMENT ON COLUMN AUTH.AUTH_NM IS '권한명'
  COMMENT ON TABLE AUTH  IS '권한 테이블'
  
REM INSERTING into JAVA2.AUTH
SET DEFINE OFF;
Insert into JAVA2.AUTH (AUTH_CODE,AUTH_NM) values (0,'관리자');
Insert into JAVA2.AUTH (AUTH_CODE,AUTH_NM) values (1,'운영자');
Insert into JAVA2.AUTH (AUTH_CODE,AUTH_NM) values (2,'일반회원');
--------------------------------------------------------
--  Constraints for Table AUTH
--------------------------------------------------------

  ALTER TABLE JAVA2.AUTH MODIFY (AUTH_CODE NOT NULL ENABLE);
