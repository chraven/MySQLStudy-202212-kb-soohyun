/*
	인덱스(INDEX)
    테이블의 동작속도(조회하는 속도)를 높여주는 자료구조
    
*/

insert into delivery_mst
values
	('2212160001', '부산 동래구 교대역점'),
	('2212160002', '부산 동래구 교대역점'),
	('2212160003', '부산 동래구 교대역점'),
	('2212160004', '부산 동래구 교대역점');
    
select * from delivery_mst;
create index order_id on delivery_mst(`주문번호`); /*소괄호 안은 필드이름. 두개의 컬럼을 하나의 인덱스에 종속시킬 수도( , ) 있다.*/
show index from delivery_mst;/*주문 번호에다가 인덱스를 준 것. 처음 만들어졌을 때 있던 인덱스 + 지금 만든 인덱스로 총 두 줄이 뜬다.*/

