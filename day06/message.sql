select * from message;

drop table message;

create table message(
	mnum int primary key,
	writer varchar(15) not null,
	title varchar(15) not null,
	content varchar(50) not null,
	wdate date default sysdate
);

insert into message values((select NVL(MAX(mnum),0)+1 from message), '정은', 'ㅇ니라나ㅣ','dd',sysdate);
insert into message values((select NVL(MAX(mnum),0)+1 from message), 'whdd', '쌀과자','chhz',sysdate);
