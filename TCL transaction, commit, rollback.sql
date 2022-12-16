/*
	TCL transaction control language
    1. COMMIT		- 트랜잭션 확정
    2. ROLLBACK		- 트랜잭션 취소
    3. SAVEPOINT	- 중간지점 저장

select @@autocommit
set autocommit = 1 (1이면 autocommit 활성화, 0이면 다시 autocommit 비활성화)
트랜잭션을 만들면 자동으로 실행되게 하는 것. 
*/

set autocommit = 0;
select @@autocommit;

create database `transaction_study`;
use transaction_study;

create table `transaction_study`.`emp_mst` (
	`id` INT not null auto_increment,
    `name` varchar(15) default null,
    primary key(`id`)
);

select @@autocommit;

start transaction;
/*autocommit이 걸린 상태에선 start transaction을 쓸 필요 없음*/

savepoint p1;
insert into emp_mst
values
	(0, '김준일'),
	(0, '신경수'),
	(0, '고희주'),
	(0, '장건녕');
select * from emp_mst;
savepoint p2;

update emp_mst 
set
	`name` = '문승주'
where
	id = 5;

rollback to p2;
select * from emp_mst;    
rollback to p1;/*아까 insert한 데이터가 모두 사라짐. 커밋하고 나면 savepoint는 날아감. autocommit을 하면 rollback을 못함*/
/*rollback만 적혀있으면 start transaction으로 돌아감*/
select * from emp_mst;

commit;