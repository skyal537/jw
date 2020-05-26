--------------------------------------------------------
--  파일이 생성됨 - 화요일-3월-31-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table AIR_LINE
--------------------------------------------------------

  CREATE TABLE JAVA2.AIR_LINE 
   (	AIR_LINE VARCHAR2(30 BYTE), 
	AIR_LINE_NM VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE TS_STUDY ;
  
  COMMENT ON COLUMN AIR_LINE.AIR_LINE IS '항공사코드'
  COMMENT ON COLUMN AIR_LINE.AIR_LINE_NM IS '항공사명'
  COMMENT ON TABLE AIR_LINE  IS '항공사 테이블'
  
REM INSERTING into JAVA2.AIR_LINE
SET DEFINE OFF;
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('OZ','아시아나항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('LJ','진에어');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('KE','대한항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('CZ','중국남방항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('UA','유나이티드항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('5J','세부퍼시픽항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('8Y','팬퍼시픽항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('DL','델타항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('SQ','싱가폴항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('BI','로얄브루나이항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('D7','에어아시아엑스');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('00','선박');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('NX','에어마카오');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('ZE','이스타항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('NZ','뉴질랜드항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('AI','에어인디아');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('LA','라탐항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('ET','에티오피아항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('SA','남아프리카항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('EY','에티하드항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('AC','에어캐나다');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('AA','아메리칸항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('AM','에어로멕시코');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('QV','라오항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('TK','터키항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('TW','티웨이항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('TG','타이항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('7C','제주항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('KC','에어아스타나');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('EK','에미레이트항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('QR','카타르항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('TL','타히티누이항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('MU','중국동방항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('VJ','비엣젯항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('QH','뱀부항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('VN','베트남항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('RS','에어서울');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('SU','러시아항공');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('AY','핀에어');
Insert into JAVA2.AIR_LINE (AIR_LINE_CODE,AIR_LINE_NM) values ('LO','로트폴란드항공');
