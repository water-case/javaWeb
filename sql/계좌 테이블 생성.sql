-- ���� ���̺� ����
create table cust_account(
    accountNo varchar2(20) primary key,
    custName varchar2(50),
    balance number(20,4)
);

insert into cust_account(accountNo, custName, balance)
values('70-490-930', 'ȫ�浿', 10000000);

insert into cust_account(accountNo, custName, balance)
values('70-490-911', '������', 10000000);

commit;

select * from cust_account;