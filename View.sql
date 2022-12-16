/*
	뷰(VIEW)
    자주 조회하는 select문을 저장하는 방법
*/

create view course_view 
as
	select
		cm.id as course_id,
        cm.subject_id,
        sjm.`name` as subject_name,
        cm.student_id,
        stm.`name` as student_name,
        status_id
	from
		course_mst cm
		left outer join subject_mst sjm on(sjm.id = cm.subject_id)
		left outer join student_mst stm on(stm.id = cm.student_id);
/*view를 만들 땐 컬럼 이름이 겹치지 않도록 명시를 해야 한다*/
select
	*
from
	course_view
where
	course_id > 5;