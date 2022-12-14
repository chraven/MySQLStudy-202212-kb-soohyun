select
	name,
    email,
    0 as score /*알리아스로 없는 컬럼 만들기*/
from 
	user_dtl
where
	name = '김준일'
union /*union 중복 제거해서 보여줌. union all 중복하는 거 모두 보여줌*/
select
	name,
    null as email,/*score_mst엔 email 컬럼이 없기 때문에 알리아스로 맞춰준다.*/
    score
from
	score_mst
where
	score > 80;/*위아래 where로 조건 준 것의 결과를 union은 합쳐서 보여줄 수 있다*/