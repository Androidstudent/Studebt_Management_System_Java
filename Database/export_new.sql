--------------------------------------------------------
--  File created - Friday-August-22-2014   
--------------------------------------------------------
DROP TABLE "GROUPB"."DEPARTMENT" cascade constraints;
DROP TABLE "GROUPB"."INSTRUCTOR_DETAILS" cascade constraints;
DROP TABLE "GROUPB"."STUDENT_ADDRESS" cascade constraints;
DROP TABLE "GROUPB"."STUDENT_DETAILS" cascade constraints;
DROP TABLE "GROUPB"."STUDENT_SUBJECT_MARKS" cascade constraints;
DROP TABLE "GROUPB"."SUBJECT_DETAILS" cascade constraints;
DROP TABLE "GROUPB"."USER_TABLE" cascade constraints;
DROP SEQUENCE "GROUPB"."DEPARTMENT_ID_SEQ";
DROP SEQUENCE "GROUPB"."INSTRUCTOR_ID_SEQ";
DROP SEQUENCE "GROUPB"."STUDENT_ADDRESS_ID_SEQ";
DROP SEQUENCE "GROUPB"."STUDENT_ID_SEQ";
DROP SEQUENCE "GROUPB"."SUBJECT_CODE_SEQ";
DROP SEQUENCE "GROUPB"."USER_ID_SEQ";
DROP PROCEDURE "GROUPB"."PR_DEPARTMENT";
DROP PROCEDURE "GROUPB"."PR_INSTRUCTOR_DETAILS";
DROP PROCEDURE "GROUPB"."PR_STUDENT_DETAILS";
DROP PROCEDURE "GROUPB"."PR_SUBJECT_DETAILS";
DROP PROCEDURE "GROUPB"."PR_USER";
--------------------------------------------------------
--  DDL for Sequence DEPARTMENT_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "GROUPB"."DEPARTMENT_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 12 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INSTRUCTOR_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "GROUPB"."INSTRUCTOR_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 5 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence STUDENT_ADDRESS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "GROUPB"."STUDENT_ADDRESS_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 8 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence STUDENT_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "GROUPB"."STUDENT_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 8 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SUBJECT_CODE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "GROUPB"."SUBJECT_CODE_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 155 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence USER_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "GROUPB"."USER_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 12 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table DEPARTMENT
--------------------------------------------------------

  CREATE TABLE "GROUPB"."DEPARTMENT" 
   (	"DEPARTMENT_ID" VARCHAR2(20 BYTE), 
	"DEPARTMENT_CODE" VARCHAR2(20 BYTE), 
	"DEPARTMENT_NAME" VARCHAR2(100 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table INSTRUCTOR_DETAILS
--------------------------------------------------------

  CREATE TABLE "GROUPB"."INSTRUCTOR_DETAILS" 
   (	"INSTRUCTOR_ID" VARCHAR2(20 BYTE), 
	"FIRST_NAME" VARCHAR2(20 BYTE), 
	"MIDDLE_NAME" VARCHAR2(20 BYTE), 
	"LAST_NAME" VARCHAR2(20 BYTE), 
	"CONTACT_NUMBER" VARCHAR2(20 BYTE), 
	"EMAIL_ID" VARCHAR2(20 BYTE), 
	"GENDER" VARCHAR2(10 BYTE), 
	"DATE_OF_BIRTH" DATE, 
	"DEPARTMENT_ID" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table STUDENT_ADDRESS
--------------------------------------------------------

  CREATE TABLE "GROUPB"."STUDENT_ADDRESS" 
   (	"STUDENT_ID" VARCHAR2(20 BYTE), 
	"HOME" VARCHAR2(40 BYTE), 
	"CITY" VARCHAR2(20 BYTE), 
	"STATE" VARCHAR2(10 BYTE), 
	"PINCODE" VARCHAR2(10 BYTE), 
	"STUDENT_ADDRESS_ID" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table STUDENT_DETAILS
--------------------------------------------------------

  CREATE TABLE "GROUPB"."STUDENT_DETAILS" 
   (	"STUDENT_ID" VARCHAR2(20 BYTE), 
	"FIRST_NAME" VARCHAR2(20 BYTE), 
	"MIDDLE_NAME" VARCHAR2(20 BYTE), 
	"LAST_NAME" VARCHAR2(20 BYTE), 
	"GENDER" VARCHAR2(10 BYTE), 
	"DATE_OF_BIRTH" DATE, 
	"CONTACT_NUMBER" VARCHAR2(20 BYTE), 
	"EMAIL_ID" VARCHAR2(20 BYTE), 
	"DEPARTMENT_ID" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table STUDENT_SUBJECT_MARKS
--------------------------------------------------------

  CREATE TABLE "GROUPB"."STUDENT_SUBJECT_MARKS" 
   (	"STUDENT_SUBJECT_MARKS_ID" VARCHAR2(20 BYTE), 
	"STUDENT_ID" VARCHAR2(20 BYTE), 
	"SUBJECT_CODE" VARCHAR2(20 BYTE), 
	"MARKS" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SUBJECT_DETAILS
--------------------------------------------------------

  CREATE TABLE "GROUPB"."SUBJECT_DETAILS" 
   (	"SUBJECT_CODE" VARCHAR2(20 BYTE), 
	"SUBJECT_NAME" VARCHAR2(20 BYTE), 
	"SEMISTER" VARCHAR2(20 BYTE), 
	"INSTRUCTOR_ID" VARCHAR2(20 BYTE), 
	"DEPARTMENT_ID" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USER_TABLE
--------------------------------------------------------

  CREATE TABLE "GROUPB"."USER_TABLE" 
   (	"USER_ID" VARCHAR2(20 BYTE), 
	"USER_NAME" VARCHAR2(20 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"ROLE" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into GROUPB.DEPARTMENT
SET DEFINE OFF;
Insert into GROUPB.DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_CODE,DEPARTMENT_NAME) values ('1','IPCT','Internet Programing and Database Management');
Insert into GROUPB.DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_CODE,DEPARTMENT_NAME) values ('2','MDEV','Mobile Devlopment');
Insert into GROUPB.DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_CODE,DEPARTMENT_NAME) values ('3','BMKT','Business and Marketing');
Insert into GROUPB.DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_CODE,DEPARTMENT_NAME) values ('4','HOPM','Hospitality Managment');
Insert into GROUPB.DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_CODE,DEPARTMENT_NAME) values ('6','ARTT','Arts & Technology');
REM INSERTING into GROUPB.INSTRUCTOR_DETAILS
SET DEFINE OFF;
Insert into GROUPB.INSTRUCTOR_DETAILS (INSTRUCTOR_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,CONTACT_NUMBER,EMAIL_ID,GENDER,DATE_OF_BIRTH,DEPARTMENT_ID) values ('I1','Kamal','K','K','6657745578','kkamk@gmail.com','M',to_date('06-JUN-80','DD-MON-RR'),'1');
Insert into GROUPB.INSTRUCTOR_DETAILS (INSTRUCTOR_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,CONTACT_NUMBER,EMAIL_ID,GENDER,DATE_OF_BIRTH,DEPARTMENT_ID) values ('I2','Yelber','A','Ramanandi','6478596569','yelber@gmail.com','M',to_date('29-AUG-65','DD-MON-RR'),'1');
Insert into GROUPB.INSTRUCTOR_DETAILS (INSTRUCTOR_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,CONTACT_NUMBER,EMAIL_ID,GENDER,DATE_OF_BIRTH,DEPARTMENT_ID) values ('I3','Frank','H','Goortani','6475896567','frank@gmail.com','M',to_date('01-DEC-75','DD-MON-RR'),'2');
Insert into GROUPB.INSTRUCTOR_DETAILS (INSTRUCTOR_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,CONTACT_NUMBER,EMAIL_ID,GENDER,DATE_OF_BIRTH,DEPARTMENT_ID) values ('I4','Safaa','G','Dawoud','6475353535','safaa@gmail.com','F',to_date('16-MAY-78','DD-MON-RR'),'1');
Insert into GROUPB.INSTRUCTOR_DETAILS (INSTRUCTOR_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,CONTACT_NUMBER,EMAIL_ID,GENDER,DATE_OF_BIRTH,DEPARTMENT_ID) values ('I5','Arslan','K','Ali','6477725793','arslan@gmail.com','M',to_date('20-APR-65','DD-MON-RR'),'1');
REM INSERTING into GROUPB.STUDENT_ADDRESS
SET DEFINE OFF;
Insert into GROUPB.STUDENT_ADDRESS (STUDENT_ID,HOME,CITY,STATE,PINCODE,STUDENT_ADDRESS_ID) values ('S1','Glen Springs Drive','scarborough','ONTARIO','M1W1X8','1');
Insert into GROUPB.STUDENT_ADDRESS (STUDENT_ID,HOME,CITY,STATE,PINCODE,STUDENT_ADDRESS_ID) values ('S2','Victoria Park','toronto','ONTARIO','M22RT5','2');
Insert into GROUPB.STUDENT_ADDRESS (STUDENT_ID,HOME,CITY,STATE,PINCODE,STUDENT_ADDRESS_ID) values ('S3','Brine Drive','toronto','ONTARIO','M12RU5','3');
Insert into GROUPB.STUDENT_ADDRESS (STUDENT_ID,HOME,CITY,STATE,PINCODE,STUDENT_ADDRESS_ID) values ('S4','BRIMORTAN DRIVE','Scarborough','ONTARIO','M12RT6','4');
Insert into GROUPB.STUDENT_ADDRESS (STUDENT_ID,HOME,CITY,STATE,PINCODE,STUDENT_ADDRESS_ID) values ('S5','BRIMORTAN DRIVE','toronto','ONTARIO','M12RE5','5');
Insert into GROUPB.STUDENT_ADDRESS (STUDENT_ID,HOME,CITY,STATE,PINCODE,STUDENT_ADDRESS_ID) values ('S7','Kings Street','toronto','ONTARIO','M12GT4','7');
REM INSERTING into GROUPB.STUDENT_DETAILS
SET DEFINE OFF;
Insert into GROUPB.STUDENT_DETAILS (STUDENT_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,GENDER,DATE_OF_BIRTH,CONTACT_NUMBER,EMAIL_ID,DEPARTMENT_ID) values ('S1','Raj','P.','Pandya','M',to_date('16-MAY-92','DD-MON-RR'),'6477725793','rpandya10@gmail.com','1');
Insert into GROUPB.STUDENT_DETAILS (STUDENT_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,GENDER,DATE_OF_BIRTH,CONTACT_NUMBER,EMAIL_ID,DEPARTMENT_ID) values ('S2','Jay','N','Patel','M',to_date('20-DEC-90','DD-MON-RR'),'6475353535','pateljay@gmail.com','1');
Insert into GROUPB.STUDENT_DETAILS (STUDENT_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,GENDER,DATE_OF_BIRTH,CONTACT_NUMBER,EMAIL_ID,DEPARTMENT_ID) values ('S3','Nishit','A.','Shah','M',to_date('01-JAN-88','DD-MON-RR'),'6475896567','nishit12@gmail.com','1');
Insert into GROUPB.STUDENT_DETAILS (STUDENT_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,GENDER,DATE_OF_BIRTH,CONTACT_NUMBER,EMAIL_ID,DEPARTMENT_ID) values ('S4','Maharshi','B.','Patel','M',to_date('11-NOV-90','DD-MON-RR'),'6478596569','mainak@gmail.com','2');
Insert into GROUPB.STUDENT_DETAILS (STUDENT_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,GENDER,DATE_OF_BIRTH,CONTACT_NUMBER,EMAIL_ID,DEPARTMENT_ID) values ('S5','Dhanesh','C.','Patel','M',to_date('11-JAN-91','DD-MON-RR'),'66576576578','dhanno@gmail.com','2');
Insert into GROUPB.STUDENT_DETAILS (STUDENT_ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,GENDER,DATE_OF_BIRTH,CONTACT_NUMBER,EMAIL_ID,DEPARTMENT_ID) values ('S7','Kandarp','A.','Dave','M',to_date('01-JAN-92','DD-MON-RR'),'6477712516','kd@gmail.com','2');
REM INSERTING into GROUPB.STUDENT_SUBJECT_MARKS
SET DEFINE OFF;
Insert into GROUPB.STUDENT_SUBJECT_MARKS (STUDENT_SUBJECT_MARKS_ID,STUDENT_ID,SUBJECT_CODE,MARKS) values ('1','S1','141','95');
Insert into GROUPB.STUDENT_SUBJECT_MARKS (STUDENT_SUBJECT_MARKS_ID,STUDENT_ID,SUBJECT_CODE,MARKS) values ('2','S1','142','98');
Insert into GROUPB.STUDENT_SUBJECT_MARKS (STUDENT_SUBJECT_MARKS_ID,STUDENT_ID,SUBJECT_CODE,MARKS) values ('3','S1','143','98');
Insert into GROUPB.STUDENT_SUBJECT_MARKS (STUDENT_SUBJECT_MARKS_ID,STUDENT_ID,SUBJECT_CODE,MARKS) values ('4','S1','148','89');
Insert into GROUPB.STUDENT_SUBJECT_MARKS (STUDENT_SUBJECT_MARKS_ID,STUDENT_ID,SUBJECT_CODE,MARKS) values ('5','S1','149','90');
Insert into GROUPB.STUDENT_SUBJECT_MARKS (STUDENT_SUBJECT_MARKS_ID,STUDENT_ID,SUBJECT_CODE,MARKS) values ('6','S2','141','80');
Insert into GROUPB.STUDENT_SUBJECT_MARKS (STUDENT_SUBJECT_MARKS_ID,STUDENT_ID,SUBJECT_CODE,MARKS) values ('7','S2','142','95');
Insert into GROUPB.STUDENT_SUBJECT_MARKS (STUDENT_SUBJECT_MARKS_ID,STUDENT_ID,SUBJECT_CODE,MARKS) values ('8','S2','144','89');
Insert into GROUPB.STUDENT_SUBJECT_MARKS (STUDENT_SUBJECT_MARKS_ID,STUDENT_ID,SUBJECT_CODE,MARKS) values ('9','S2','150','90');
Insert into GROUPB.STUDENT_SUBJECT_MARKS (STUDENT_SUBJECT_MARKS_ID,STUDENT_ID,SUBJECT_CODE,MARKS) values ('10','S2','151','90');
Insert into GROUPB.STUDENT_SUBJECT_MARKS (STUDENT_SUBJECT_MARKS_ID,STUDENT_ID,SUBJECT_CODE,MARKS) values ('11','S3','141','96');
Insert into GROUPB.STUDENT_SUBJECT_MARKS (STUDENT_SUBJECT_MARKS_ID,STUDENT_ID,SUBJECT_CODE,MARKS) values ('12','S3','142','85');
Insert into GROUPB.STUDENT_SUBJECT_MARKS (STUDENT_SUBJECT_MARKS_ID,STUDENT_ID,SUBJECT_CODE,MARKS) values ('13','S3','143','90');
Insert into GROUPB.STUDENT_SUBJECT_MARKS (STUDENT_SUBJECT_MARKS_ID,STUDENT_ID,SUBJECT_CODE,MARKS) values ('14','S3','148','95');
Insert into GROUPB.STUDENT_SUBJECT_MARKS (STUDENT_SUBJECT_MARKS_ID,STUDENT_ID,SUBJECT_CODE,MARKS) values ('15','S3','149','90');
Insert into GROUPB.STUDENT_SUBJECT_MARKS (STUDENT_SUBJECT_MARKS_ID,STUDENT_ID,SUBJECT_CODE,MARKS) values ('16','S4','141','90');
Insert into GROUPB.STUDENT_SUBJECT_MARKS (STUDENT_SUBJECT_MARKS_ID,STUDENT_ID,SUBJECT_CODE,MARKS) values ('17','S4','142','90');
Insert into GROUPB.STUDENT_SUBJECT_MARKS (STUDENT_SUBJECT_MARKS_ID,STUDENT_ID,SUBJECT_CODE,MARKS) values ('18','S4','144','90');
Insert into GROUPB.STUDENT_SUBJECT_MARKS (STUDENT_SUBJECT_MARKS_ID,STUDENT_ID,SUBJECT_CODE,MARKS) values ('19','S4','150','87');
Insert into GROUPB.STUDENT_SUBJECT_MARKS (STUDENT_SUBJECT_MARKS_ID,STUDENT_ID,SUBJECT_CODE,MARKS) values ('20','S4','151','85');
Insert into GROUPB.STUDENT_SUBJECT_MARKS (STUDENT_SUBJECT_MARKS_ID,STUDENT_ID,SUBJECT_CODE,MARKS) values ('21','S5','141','90');
Insert into GROUPB.STUDENT_SUBJECT_MARKS (STUDENT_SUBJECT_MARKS_ID,STUDENT_ID,SUBJECT_CODE,MARKS) values ('22','S5','142','89');
Insert into GROUPB.STUDENT_SUBJECT_MARKS (STUDENT_SUBJECT_MARKS_ID,STUDENT_ID,SUBJECT_CODE,MARKS) values ('23','S5','143','90');
Insert into GROUPB.STUDENT_SUBJECT_MARKS (STUDENT_SUBJECT_MARKS_ID,STUDENT_ID,SUBJECT_CODE,MARKS) values ('24','S5','149','85');
Insert into GROUPB.STUDENT_SUBJECT_MARKS (STUDENT_SUBJECT_MARKS_ID,STUDENT_ID,SUBJECT_CODE,MARKS) values ('25','S5','150','90');
REM INSERTING into GROUPB.SUBJECT_DETAILS
SET DEFINE OFF;
Insert into GROUPB.SUBJECT_DETAILS (SUBJECT_CODE,SUBJECT_NAME,SEMISTER,INSTRUCTOR_ID,DEPARTMENT_ID) values ('153','ASP.Net','2','I2','1');
Insert into GROUPB.SUBJECT_DETAILS (SUBJECT_CODE,SUBJECT_NAME,SEMISTER,INSTRUCTOR_ID,DEPARTMENT_ID) values ('141','JAVA','1','I2','1');
Insert into GROUPB.SUBJECT_DETAILS (SUBJECT_CODE,SUBJECT_NAME,SEMISTER,INSTRUCTOR_ID,DEPARTMENT_ID) values ('142','PHP','1','I4','1');
Insert into GROUPB.SUBJECT_DETAILS (SUBJECT_CODE,SUBJECT_NAME,SEMISTER,INSTRUCTOR_ID,DEPARTMENT_ID) values ('143','Database','1','I4','1');
Insert into GROUPB.SUBJECT_DETAILS (SUBJECT_CODE,SUBJECT_NAME,SEMISTER,INSTRUCTOR_ID,DEPARTMENT_ID) values ('144','Programming Logic','1','I4','1');
Insert into GROUPB.SUBJECT_DETAILS (SUBJECT_CODE,SUBJECT_NAME,SEMISTER,INSTRUCTOR_ID,DEPARTMENT_ID) values ('145','Web Technology','1','I5','1');
Insert into GROUPB.SUBJECT_DETAILS (SUBJECT_CODE,SUBJECT_NAME,SEMISTER,INSTRUCTOR_ID,DEPARTMENT_ID) values ('146','Intro to Mobile','1','I3','2');
Insert into GROUPB.SUBJECT_DETAILS (SUBJECT_CODE,SUBJECT_NAME,SEMISTER,INSTRUCTOR_ID,DEPARTMENT_ID) values ('147','Advance Java','2','I1','1');
Insert into GROUPB.SUBJECT_DETAILS (SUBJECT_CODE,SUBJECT_NAME,SEMISTER,INSTRUCTOR_ID,DEPARTMENT_ID) values ('148','Oracle','2','I2','1');
Insert into GROUPB.SUBJECT_DETAILS (SUBJECT_CODE,SUBJECT_NAME,SEMISTER,INSTRUCTOR_ID,DEPARTMENT_ID) values ('149','Advance Database','2','I2','1');
Insert into GROUPB.SUBJECT_DETAILS (SUBJECT_CODE,SUBJECT_NAME,SEMISTER,INSTRUCTOR_ID,DEPARTMENT_ID) values ('150','Android','2','I3','2');
Insert into GROUPB.SUBJECT_DETAILS (SUBJECT_CODE,SUBJECT_NAME,SEMISTER,INSTRUCTOR_ID,DEPARTMENT_ID) values ('151','iOS','2','I3','2');
Insert into GROUPB.SUBJECT_DETAILS (SUBJECT_CODE,SUBJECT_NAME,SEMISTER,INSTRUCTOR_ID,DEPARTMENT_ID) values ('152','Software Design','2','I5','1');
Insert into GROUPB.SUBJECT_DETAILS (SUBJECT_CODE,SUBJECT_NAME,SEMISTER,INSTRUCTOR_ID,DEPARTMENT_ID) values ('154','Data Structure','1','I4','1');
REM INSERTING into GROUPB.USER_TABLE
SET DEFINE OFF;
Insert into GROUPB.USER_TABLE (USER_ID,USER_NAME,PASSWORD,ROLE) values ('10','I5','1234',2);
Insert into GROUPB.USER_TABLE (USER_ID,USER_NAME,PASSWORD,ROLE) values ('11','Raj','1234',1);
Insert into GROUPB.USER_TABLE (USER_ID,USER_NAME,PASSWORD,ROLE) values ('1','admin','admin',1);
Insert into GROUPB.USER_TABLE (USER_ID,USER_NAME,PASSWORD,ROLE) values ('2','I3','123',2);
Insert into GROUPB.USER_TABLE (USER_ID,USER_NAME,PASSWORD,ROLE) values ('3','I2','123',2);
Insert into GROUPB.USER_TABLE (USER_ID,USER_NAME,PASSWORD,ROLE) values ('4','I1','123',2);
Insert into GROUPB.USER_TABLE (USER_ID,USER_NAME,PASSWORD,ROLE) values ('5','S1','123',3);
Insert into GROUPB.USER_TABLE (USER_ID,USER_NAME,PASSWORD,ROLE) values ('6','S2','123',3);
Insert into GROUPB.USER_TABLE (USER_ID,USER_NAME,PASSWORD,ROLE) values ('7','S3','123',3);
Insert into GROUPB.USER_TABLE (USER_ID,USER_NAME,PASSWORD,ROLE) values ('8','S4','123',3);
Insert into GROUPB.USER_TABLE (USER_ID,USER_NAME,PASSWORD,ROLE) values ('9','S7','1234',3);
--------------------------------------------------------
--  DDL for Index USER_TABLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GROUPB"."USER_TABLE_PK" ON "GROUPB"."USER_TABLE" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index STUDENT_SUBJECT_MARKS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GROUPB"."STUDENT_SUBJECT_MARKS_PK" ON "GROUPB"."STUDENT_SUBJECT_MARKS" ("STUDENT_SUBJECT_MARKS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index STUDENT_DETAILS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GROUPB"."STUDENT_DETAILS_PK" ON "GROUPB"."STUDENT_DETAILS" ("STUDENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SUBJECT_DETAILS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GROUPB"."SUBJECT_DETAILS_PK" ON "GROUPB"."SUBJECT_DETAILS" ("SUBJECT_CODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index INSTRUCTOR_DETAILS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GROUPB"."INSTRUCTOR_DETAILS_PK" ON "GROUPB"."INSTRUCTOR_DETAILS" ("INSTRUCTOR_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DEPARTMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GROUPB"."DEPARTMENT_PK" ON "GROUPB"."DEPARTMENT" ("DEPARTMENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index STUDENT_ADDRESS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GROUPB"."STUDENT_ADDRESS_PK" ON "GROUPB"."STUDENT_ADDRESS" ("STUDENT_ADDRESS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table INSTRUCTOR_DETAILS
--------------------------------------------------------

  ALTER TABLE "GROUPB"."INSTRUCTOR_DETAILS" ADD CONSTRAINT "INSTRUCTOR_DETAILS_PK" PRIMARY KEY ("INSTRUCTOR_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "GROUPB"."INSTRUCTOR_DETAILS" MODIFY ("INSTRUCTOR_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USER_TABLE
--------------------------------------------------------

  ALTER TABLE "GROUPB"."USER_TABLE" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "GROUPB"."USER_TABLE" ADD CONSTRAINT "USER_TABLE_PK" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DEPARTMENT
--------------------------------------------------------

  ALTER TABLE "GROUPB"."DEPARTMENT" ADD CONSTRAINT "DEPARTMENT_PK" PRIMARY KEY ("DEPARTMENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "GROUPB"."DEPARTMENT" MODIFY ("DEPARTMENT_ID" NOT NULL ENABLE);
 
  ALTER TABLE "GROUPB"."DEPARTMENT" MODIFY ("DEPARTMENT_CODE" NOT NULL ENABLE);
 
  ALTER TABLE "GROUPB"."DEPARTMENT" MODIFY ("DEPARTMENT_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SUBJECT_DETAILS
--------------------------------------------------------

  ALTER TABLE "GROUPB"."SUBJECT_DETAILS" ADD CONSTRAINT "SUBJECT_DETAILS_PK" PRIMARY KEY ("SUBJECT_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "GROUPB"."SUBJECT_DETAILS" MODIFY ("SUBJECT_CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STUDENT_DETAILS
--------------------------------------------------------

  ALTER TABLE "GROUPB"."STUDENT_DETAILS" ADD CONSTRAINT "STUDENT_DETAILS_PK" PRIMARY KEY ("STUDENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "GROUPB"."STUDENT_DETAILS" MODIFY ("STUDENT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STUDENT_ADDRESS
--------------------------------------------------------

  ALTER TABLE "GROUPB"."STUDENT_ADDRESS" ADD CONSTRAINT "STUDENT_ADDRESS_PK" PRIMARY KEY ("STUDENT_ADDRESS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "GROUPB"."STUDENT_ADDRESS" MODIFY ("PINCODE" NOT NULL ENABLE);
 
  ALTER TABLE "GROUPB"."STUDENT_ADDRESS" MODIFY ("CITY" NOT NULL ENABLE);
 
  ALTER TABLE "GROUPB"."STUDENT_ADDRESS" MODIFY ("STATE" NOT NULL ENABLE);
 
  ALTER TABLE "GROUPB"."STUDENT_ADDRESS" MODIFY ("STUDENT_ADDRESS_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STUDENT_SUBJECT_MARKS
--------------------------------------------------------

  ALTER TABLE "GROUPB"."STUDENT_SUBJECT_MARKS" ADD CONSTRAINT "STUDENT_SUBJECT_MARKS_PK" PRIMARY KEY ("STUDENT_SUBJECT_MARKS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "GROUPB"."STUDENT_SUBJECT_MARKS" MODIFY ("STUDENT_SUBJECT_MARKS_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table INSTRUCTOR_DETAILS
--------------------------------------------------------

  ALTER TABLE "GROUPB"."INSTRUCTOR_DETAILS" ADD CONSTRAINT "INSTRUCTOR_DEPARTMENT_ID_FK1" FOREIGN KEY ("DEPARTMENT_ID")
	  REFERENCES "GROUPB"."DEPARTMENT" ("DEPARTMENT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STUDENT_ADDRESS
--------------------------------------------------------

  ALTER TABLE "GROUPB"."STUDENT_ADDRESS" ADD CONSTRAINT "FK_STUDENT_ID" FOREIGN KEY ("STUDENT_ID")
	  REFERENCES "GROUPB"."STUDENT_DETAILS" ("STUDENT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STUDENT_DETAILS
--------------------------------------------------------

  ALTER TABLE "GROUPB"."STUDENT_DETAILS" ADD CONSTRAINT "STUDENT_DETAILS_FK1" FOREIGN KEY ("DEPARTMENT_ID")
	  REFERENCES "GROUPB"."DEPARTMENT" ("DEPARTMENT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STUDENT_SUBJECT_MARKS
--------------------------------------------------------

  ALTER TABLE "GROUPB"."STUDENT_SUBJECT_MARKS" ADD CONSTRAINT "FK_MARKS_STUDENT_ID" FOREIGN KEY ("STUDENT_ID")
	  REFERENCES "GROUPB"."STUDENT_DETAILS" ("STUDENT_ID") ENABLE;
 
  ALTER TABLE "GROUPB"."STUDENT_SUBJECT_MARKS" ADD CONSTRAINT "FK_MARKS_SUBJECT_CODE" FOREIGN KEY ("SUBJECT_CODE")
	  REFERENCES "GROUPB"."SUBJECT_DETAILS" ("SUBJECT_CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SUBJECT_DETAILS
--------------------------------------------------------

  ALTER TABLE "GROUPB"."SUBJECT_DETAILS" ADD CONSTRAINT "FK_INSTRUCTOR_ID" FOREIGN KEY ("INSTRUCTOR_ID")
	  REFERENCES "GROUPB"."INSTRUCTOR_DETAILS" ("INSTRUCTOR_ID") ENABLE;
 
  ALTER TABLE "GROUPB"."SUBJECT_DETAILS" ADD CONSTRAINT "SUBJECT_DEPARTMENT_ID_FK" FOREIGN KEY ("DEPARTMENT_ID")
	  REFERENCES "GROUPB"."DEPARTMENT" ("DEPARTMENT_ID") ENABLE;
--------------------------------------------------------
--  DDL for Procedure PR_DEPARTMENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "GROUPB"."PR_DEPARTMENT" (p_departmentCode department.department_code%type,p_departmentName department.department_name%type)is
 begin
 insert into department(department_id,department_code,department_name)
          values(department_id_seq.nextval, p_departmentCode, p_departmentName);
 end;

/
--------------------------------------------------------
--  DDL for Procedure PR_INSTRUCTOR_DETAILS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "GROUPB"."PR_INSTRUCTOR_DETAILS" (p_firstName instructor_details.first_name%Type, p_middleName instructor_details.first_name%Type,
 p_lastName instructor_details.first_name%Type, p_contact instructor_DETAILS.first_name%Type, p_email instructor_DETAILS.EMAIL_ID%Type,
 p_gender instructor_details.gender%Type , p_DOB instructor_details.date_of_birth%Type) is

 begin
 insert into INSTRUCTOR_DETAILS (INSTRUCTOR_ID,first_name,middle_name,last_name,contact_number,email_id,gender,date_of_birth)
                            values( 'I' || instructor_Id_seq.nextval, p_firstName, p_middleName, p_lastName, p_contact, p_email, p_gender, p_DOB);
end;

/
--------------------------------------------------------
--  DDL for Procedure PR_STUDENT_DETAILS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "GROUPB"."PR_STUDENT_DETAILS" (p_firstName student_details.first_name%Type, p_middleName student_details.first_name%Type,
 p_lastName student_details.first_name%Type, p_gender student_details.gender%Type , p_DOB student_details.date_of_birth%Type,
 p_contact STUDENT_DETAILS.first_name%Type, p_email STUDENT_DETAILS.EMAIL_ID%Type,p_department_id STUDENT_DETAILS.DEPARTMENT_ID%type, p_address STUDENT_ADDRESS.HOME%type,
 p_city STUDENT_ADDRESS.CITY%type, p_state STUDENT_ADDRESS.STATE%type, p_pincode STUDENT_ADDRESS.PINCODE%type) is

 begin
 insert into student_details (student_id,first_name,middle_name,last_name,gender,date_of_birth,contact_number,email_id,DEPARTMENT_ID)
                            values( 'S' || student_Id_seq.nextval, p_firstName, p_middleName, p_lastName, p_gender, p_DOB, p_contact, p_email, p_department_id);
if sql%found then
insert into student_address (student_id, home, city, state, pincode,student_address_id) values('S' || student_Id_seq.currval, p_address,p_city, p_state, p_pincode, STUDENT_ADDRESS_ID_SEQ.NEXTVAL);
end if;
end;

/
--------------------------------------------------------
--  DDL for Procedure PR_SUBJECT_DETAILS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "GROUPB"."PR_SUBJECT_DETAILS" (p_subjectName subject_details.subject_name%type,
 p_semister subject_details.semister%type,p_instructorId SUBJECT_DETAILS.INSTRUCTOR_ID%type,
 p_departmentId SUBJECT_DETAILS.DEPARTMENT_ID%type) is
 begin
 insert into subject_details(subject_code, subject_name, semister, instructor_id, department_id)
                values(subject_code_seq.nextval,p_subjectName,p_semister,p_instructorId,p_departmentId);
  end;

/
--------------------------------------------------------
--  DDL for Procedure PR_USER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "GROUPB"."PR_USER" (p_userName user_table.user_name%type,p_password user_table.password%type,p_role user_table.role%type )is
 begin
 insert into user_table(user_id, user_name, password, role)
           values(user_id_seq.nextval, p_userName, p_password, p_role);
end;

/