

create table userStore_group2(username varchar(50) primary key,password varchar(50),role varchar(50));

insert into userStore_group2 values('admin123','admin12345','admin')
insert into userStore_group2 values('cashier1','cashier123','cashier')

select * from userStore_group2

drop table userStore_group2
select * from CustomerGroup2

select * from CustomerStatusGroup2
 CustomerStatus table columns – SSN ID, Customer ID, Status, Message, Last Updated
 AccountStatus table columns – Customer ID, Account ID, Account Type, Status, Message, Last Updated
create table CustomerStatus(ssnId number(5),custName Varchar2(30),status Varchar2(30),Message Varchar2(30), )