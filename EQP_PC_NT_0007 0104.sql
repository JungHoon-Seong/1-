--ȸ��,������ ���̺�
CREATE TABLE member(
mm_userId varchar(20) NOT NULL,
mm_userNo number(11) NOT NULL,
mm_userPwd varchar(20) NOT NULL,
mm_userEnrollDate date NOT NULL,
mm_userEmail varchar(50) NOT NULL,
mm_userPhone varchar(20) NOT NULL,
mm_admincheck char(1) default 'N' NOT NULL,
CONSTRAINT composite_key_Id_with_No  PRIMARY KEY (mm_userId,mm_userNo)
);
DESC MEMBER;
--�Խ��� ���̺�
--table can have only one primary key"�̱� ������ ��Ű,����Ű�� ������ �� ������ �׷��Ƿ� �ܷ� ����Ű�� �������.
CREATE TABLE board(
bo_postNo number(11) PRIMARY KEY,
bo_userNo number(11) NOT NULL,
bo_postTitle varchar(1000) not null,
bo_postContent varchar(3000) not null,
bo_postView number(11) not null,
bo_createDate date DEFAULT sysdate not null,
bo_updateDate date DEFAULT sysdate not null
--CONSTRAINT composite_fk_Id_with_No FOREIGN KEY(bo_userNo)
--REFERENCES member(mm_userNo)
);

SELECT * FROM board 
		LEFT OUTER JOIN board_image ON (bo_postNo = bi_postNo);

--�Խù� �̹����ּ� ����� ���̺�
CREATE TABLE Board_Image(
bi_imgNo number(11) PRIMARY KEY,
bi_postNo number(11) NOT NULL,
bi_imgsrc varchar(2000) ,
CONSTRAINT fk_boardImage_1
 FOREIGN KEY (bi_postNo)
  REFERENCES board(bo_postNo)
);



--�Խù� �����ּ� ����� ���̺�
CREATE TABLE Board_File(
bf_fileSrcNo number(11) PRIMARY KEY,
bf_postNo number(11) NOT NULL,
bf_filesrc varchar(2000) ,
CONSTRAINT fk_boardFile_1
 FOREIGN KEY (bf_postNo)
  REFERENCES board(bo_postNo)
--ON DELETE CASCADE
);
desc board_file;

--�Խù� ����� ���� ���̺�
CREATE TABLE CommentForBoard(
cb_commentNo number(11) PRIMARY KEY,
cb_postNo number(11),
cb_comment varchar(3000) NOT NULL,
cb_commentUserId varchar(20) NOT NULL,
cb_deleteAt char(1) DEFAULT 'N' NOT NULL,
cb_createDate date DEFAULT SYSDATE NOT NULL,
CB_updateDate date DEFAULT SYSDATE NOT NULL,
CONSTRAINT fk_CommentForBoard
 FOREIGN KEY (cb_postNo)
  REFERENCES board(bo_postNo)
  --ON DELETE CASCADE
);
ALTER TABLE CommentForBoard DROP CONSTRAINT FK_COMMENTFORBOARD;

alter table CommentForBoard add constraint FK_COMMENTFORBOARD FOREIGN KEY(cb_postNo) 
  REFERENCES board(bo_postNo) ON DELETE CASCADE;
--��ȣ���� ���� ��������
COMMIT;
CREATE SEQUENCE SEQ_member_no
INCREMENT BY 1
START WITH 0
MINVALUE 0
MAXVALUE 99999999999
NOCYCLE;

CREATE SEQUENCE SEQ_board_no
INCREMENT BY 1
START WITH 1
MINVALUE 0
MAXVALUE 99999999999
NOCYCLE;

DROP SEQUENCE SEQ_BOARD_NO;

CREATE SEQUENCE SEQ_comment_no
INCREMENT BY 1
START WITH 0
MINVALUE 0
MAXVALUE 99999999999
NOCYCLE;

CREATE SEQUENCE SEQ_boardImage_no
INCREMENT BY 1
START WITH 0
MINVALUE 0
MAXVALUE 99999999999
NOCYCLE;

CREATE SEQUENCE SEQ_boardFile_no
INCREMENT BY 1
START WITH 0
MINVALUE 0
MAXVALUE 99999999999
NOCYCLE;

INSERT INTO member VALUES('admin',SEQ_member_no.nextval , 'admin1234', sysdate, 'tester01@abc.com', '000-1234-5678','Y');
INSERT INTO member VALUES('tester01',SEQ_member_no.nextval , '1234', sysdate, 'tester01@abc.com', '000-1234-5678','N');
INSERT INTO member VALUES('tester02',SEQ_member_no.nextval , '1234%', sysdate, 'tester02@abc.com', '000-1234-5678','N');
INSERT INTO member VALUES('tester03',SEQ_member_no.nextval , '1234%^', sysdate, 'tester03@abc.com', '000-1234-5678','N');
commit;

insert into board values(SEQ_board_no.nextval,2,'ù��° ��', '�������',0,sysdate,sysdate );
insert into board values(SEQ_board_no.nextval,3,'�ι�° ��', '�������',0,sysdate,sysdate );
insert into board values(SEQ_board_no.nextval,4,'����° ��', '�������',0,sysdate,sysdate );
insert into board values(SEQ_board_no.nextval,3,'�׹�° ��', '�������',0,sysdate,sysdate );
insert into board values(SEQ_board_no.nextval,2,'�ټ���° ��', '�������',0,sysdate,sysdate );
insert into board values(SEQ_board_no.nextval,2,'������° ��', '�������',0,sysdate,sysdate );


commit;

--insert into board values(SEQ_board_no.nextval,'tester01','������° ��', '�������',0,sysdate );
commit;
select mm_userId 
		from member 
					left inner join board 
									ON (mm_userNo = 0);
select * from member;
select * from board;
desc board;
select * from CommentforBoard;
UPDATE BOARD SET bo_postTitle = #{bo_postTitle}, bo_postContent = #{bo_postContent} WHERE BO_POSTNO = 42


select * from member;
alter table member modify (MM_USERPHONE varchar(20));
update member SET mm_userphone = 0 where mm_userid='tester01';
desc member;
DELETE FROM MEMBER WHERE mm_userid = 'tester01';


ALTER TABLE BOARD_IMAGE modify(BI_imgsrc  null);
ALTER TABLE BOARD_IMAGE ADD(BI_filesrc  varchar(2000) null);


alter table board rename column bo_update TO bo_updateDate;
alter table board modify(bo_updateDate default sysdate not null);


alter user EQP_PC_NT_0007 IDENTIFIED BY 1234;
ALTER TABLE BOARD MODIFY(bo_postTitle varchar(1000));
ALTER TABLE BOARD MODIFY(bo_postContent varchar(3000));

ALTER TABLE BOARD ADD(bo_modificationDate DATE DEFAULT SYSDATE NOT NULL);
ALTER TABLE BOARD RENAME COLUMN bo_modificationDate TO bo_updateDate;
commit;
select * from board;

SELECT
    * FROM member;



--22.01.13
desc member;
alter table member modify(mm_useremail varchar(50));


desc BOARD_IMAGE;
desc Board_File;
desc member;
--���̵�� ������ȣ�� �̿��� ����Ű�� ����ñ� ���Ͻ� ���� ����غ����� ��.
alter table member add(mm_userNo number(11) primary key);
--������ ����üũ �÷�

alter table member add(mm_adminCheck char(1) default 'n' not null);



desc member;
desc BOARD_IMAGE;
select * from member;

--��Ű�� alter�� ������ , Ű�� �߰�,  �߰��� Ű�� �Ա� ����Ű�� �����.
alter table member drop CONSTRAINT SYS_C007010; 
alter table member add (mm_userNo number(11));

alter table board drop constraint FK_BOARD_1;
commit;
alter table member drop constraint SYS_C007010;

alter table member add(mm_userNo number(11) default '0' not null);
alter table member modify mm_userNo default null;

desc member;
desc board;
desc board_image;
desc board_file;
desc commentforboard;
SELECT * FROM board;

SELECT 	
        rownum Rnum,
        bo_postNo,
		bi_imgsrc,
		bo_userNo,
		bo_postTitle,
		to_char(BO_CREATEDATE, 'YYYY/MM/DD') BO_CREATEDATE,
		to_char(BO_UPDATEDATE, 'YYYY/MM/DD') BO_UPDATEDATE,
		BO_POSTVIEW FROM board t1 LEFT OUTER JOIN board_image t2 ON (t1.bo_postNo = t2.bI_postNo);


SELECT * FROM(
	SELECT 	
        rownum Rnum,
        bo_postNo,
		bi_imgsrc,
		bo_userNo,
		bo_postTitle,
		to_char(BO_CREATEDATE, 'YYYY/MM/DD') BO_CREATEDATE,
		to_char(BO_UPDATEDATE, 'YYYY/MM/DD') BO_UPDATEDATE,
		BO_POSTVIEW FROM board t1 LEFT OUTER JOIN board_image t2 ON (t1.bo_postNo = t2.bI_postNo))
		 ORDER BY bo_postNo DESC;

INSERT INTO board(BO_POSTNO, ) VALUES();
SELECT COUNT(*) FROM board;
select * from board;
desc board;
UPDATE board SET bo_postView = bo_postView + 1  WHERE BO_POSTNO = 26;
SELECT 
	 bo_postNo, bi_imgsrc,  bo_postTitle, bo_postContent,
	  to_char(bo_createDate, 'YYYY/MM/DD') bo_createDate ,
	  to_char(bo_updateDate, 'YYYY/MM/DD') bo_updateDate ,
	  bo_postView, bo_userNo, bf_filesrc 
	  FROM board 
	  			left outer join Board_Image 
	  							ON (bo_postNo = bi_postNo) 
	  			left outer join Board_file 
	  							ON (bo_postNo = bf_postNo)
        WHERE bo_postNo = 30;


commit;
select * from board;
select * from member;

delete from board where bo_postNo = 42;
delete from board where bo_postNo = 43;
commit;
select * from CommentForBoard;
SELECT * FROM CommentForBoard where cb_postNo = 30;
SELECT CB_COMMENTNO, CB_COMMENTUSERID, CB_CREATEDATE FROM CommentForBoard where cb_postNo = 30;
UPDATE CommentForBoard SET CB_COMMENT = '����ٲ���', CB_UPDATEDATE = SYSDATE
			WHERE cb_postNo = 30 AND CB_COMMENTNO = 0;
desc CommentForBoard;