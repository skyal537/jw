--------------------------------------------------------
--  파일이 생성됨 - 화요일-3월-31-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table POST
--------------------------------------------------------

  CREATE TABLE JAVA2.POST 
   (	POST_ID NUMBER, 
	POST_CONTENT VARCHAR2(3000 BYTE), 
	POST_TITLE VARCHAR2(30 BYTE), 
	MEM_ID_SEND VARCHAR2(20 BYTE), 
	MEM_ID_ARRV VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE TS_STUDY ;
  
  COMMENT ON COLUMN POST.POST_ID IS '쪽지ID'
  COMMENT ON COLUMN POST.POST_CONTENT IS '쪽지내용'
  COMMENT ON COLUMN POST.POST_TITLE IS '제목'
  COMMENT ON COLUMN POST.MEM_ID_SEND IS '보낸이_회원ID'
  COMMENT ON COLUMN POST.MEM_ID_ARRV IS '받는이_회원ID'
  COMMENT ON TABLE POST  IS '쪽지 테이블'
  
REM INSERTING into JAVA2.POST
SET DEFINE OFF;
--------------------------------------------------------
--  Constraints for Table POST
--------------------------------------------------------

  ALTER TABLE JAVA2.POST MODIFY (MEM_ID_ARRV NOT NULL ENABLE);
  ALTER TABLE JAVA2.POST MODIFY (MEM_ID_SEND NOT NULL ENABLE);
  ALTER TABLE JAVA2.POST MODIFY (POST_ID NOT NULL ENABLE);
