/* 주어진 데이터가 username밖에 없을 때(test, test2) */
select * from user_mst;
select * from user_dtl;
select
	*
from
	user_dtl
where
	id = (select id from user_mst where username = 'test');
    /*dtl에서 정보 검색을 하고 싶음. id로 mst와 dtl 데이터가 연결됨. user_mst에서 username이 test인 놈의 id를 조회함 그 값이 1임. 그 id가 1인 놈을 dtl에서 select(위) 함*/
    /*(select id from user_mst where username = 'test') 는 1이다.*/

select
	*
from
	user_dtl
where
	id in (select id from user_mst where username like '%test%');
    /*in은 포함관계. test글자가 들어가면 다 검색.*/
    
select
	*
from
	user_dtl ud
    left outer join user_mst um on(um.id = ud.id)
where
	um.username = 'test'; 
    
/* 원하는 컬럼을 만들어서 조회하는 방법*/;

select
		'아이디' as username,
        12 as `month`,
        14 as `day`;
        
select
	*,
    '테스트' as test
    
from 
	user_dtl;
    
insert into 
	user_mst
values
	(0, 'aaa'),
	(0, 'bbb'),
	(0, 'ccc'),
	(0, 'ddd'),
	(0, 'eee');
    
select
	*,
    ifnull(name, 1) as flag, /*A(name)가 null이면 B(1)를 반환, null이 아니면 A를 반환*/
    nullif(name, null) as flag2, /*A와 B가 같으면 null을 반환, 같지 않으면 A를 반환*/
    case 
		when ifnull(name, 1) = 1 then 1 /*when 부분이 조건, then부분이 실행부*/
		when ifnull(name, 1) = 2 then 2 /*when 부분이 조건, then부분이 실행부*/
		when ifnull(name, 1) = 3 then 3 /*when 부분이 조건, then부분이 실행부*/
		when ifnull(name, 1) = 4 then 4 /*when 부분이 조건, then부분이 실행부*/
        else 0 
	end as flag3,
    if(name is null, 1, 0) as flag4/*if(조건부, 참일 시 반환값 , 거짓일 시 반환값)*/
    
from
	user_dtl;
    

