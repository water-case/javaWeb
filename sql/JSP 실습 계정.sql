--ȸ�� ���̺� ����
create table t_member(
    id varchar2(10) primary key,
    pwd varchar2(10),
    name varchar2(50),
    email varchar2(50),
    joinDate date default sysdate
);

--ȸ�� ���� �߰�
insert into t_member
values('hong', '1212', 'ȫ�浿', 'hong@gmail.com', sysdate);

insert into t_member
values('lee', '1212', '�̼���', 'lee@test.com', sysdate);

insert into t_member
values('kim', '1212', '������', 'kim@jweb.com', sysdate);
commit;

select * from t_member;

-- �Խ��� ���̺� ����
create table t_Board(
    articleNO number(10) primary key,
    parentNO number(10) default 0,
    title varchar2(500) not null,
    content varchar2(4000),
    imageFileName varchar2(100),
    writedate date default sysdate not null,
    id varchar2(10),
    constraint fk_id foreign key(id) references t_member(id)
);

-- ���̺� �׽�Ʈ ���� �߰�
insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
 values(1, 0, '�׽�Ʈ��', '�׽�Ʈ', null, sysdate, 'hong');
 
insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
 values(2, 0, '�ȳ��ϼ���', '��ǰ�ı��Դϴ�', null, sysdate, 'hong');
 
insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
 values(3, 2, '�亯�Դϴ�', '�ı⿡ ���� �亯', null, sysdate, 'hong');
 
insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
 values(5, 3, '�亯', '��ǰ ���ƿ�', null, sysdate, 'lee');
 
insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
 values(4, 0, '�������Դϴ�', '������ �׽�Ʈ', null, sysdate, 'kim');
 
insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
 values(6, 2, '��ǰ �ı�', '�̼��ž��� ��ǰ�ı⸦ �ø��ϴ�', null, sysdate, 'lee');
 
commit;

select * from t_board;