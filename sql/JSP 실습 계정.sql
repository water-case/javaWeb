--회원 테이블 생성
create table t_member(
    id varchar2(10) primary key,
    pwd varchar2(10),
    name varchar2(50),
    email varchar2(50),
    joinDate date default sysdate
);

--회원 정보 추가
insert into t_member
values('hong', '1212', '홍길동', 'hong@gmail.com', sysdate);

insert into t_member
values('lee', '1212', '이순신', 'lee@test.com', sysdate);

insert into t_member
values('kim', '1212', '김유신', 'kim@jweb.com', sysdate);
commit;

select * from t_member;

-- 게시판 테이블 생성
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

-- 테이블에 테스트 글을 추가
insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
 values(1, 0, '테스트글', '테스트', null, sysdate, 'hong');
 
insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
 values(2, 0, '안녕하세요', '상품후기입니다', null, sysdate, 'hong');
 
insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
 values(3, 2, '답변입니다', '후기에 대한 답변', null, sysdate, 'hong');
 
insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
 values(5, 3, '답변', '상품 좋아요', null, sysdate, 'lee');
 
insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
 values(4, 0, '김유신입니다', '김유신 테스트', null, sysdate, 'kim');
 
insert into t_board(articleNO, parentNO, title, content, imageFileName, writedate, id)
 values(6, 2, '상품 후기', '이순신씨의 상품후기를 올립니다', null, sysdate, 'lee');
 
commit;

select * from t_board;