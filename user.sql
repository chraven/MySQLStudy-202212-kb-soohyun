INSERT INTO
	user_mst
	
VALUES
 	 (0, 'aaa', '1234', '김준일', 'aaa@gmail.com', NOW(), NOW()),
	 (0, 'bbb', '1234', '김준일', 'aaa@gmail.com', NOW(), NOW()),
	 (0, 'ccc', '1234', '김준일', 'aaa@gmail.com', NOW(), NOW()),
	 (0, 'ddd', '1234', '김준일', 'aaa@gmail.com', NOW(), NOW());
 	/*0은 id - auto increment로 자동증가 그럼 트리거가 insert작업을 했는지 확인, insert*/
 	
DELETE
FROM
	user_mst
WHERE
	id = 1;
	
SELECT
	nm.title,
	nm.content,
	wm.name,
	ni.img_name
FROM 
	study_notice_mst nm
	LEFT OUTER JOIN study_writer_mst wm ON(wm.id = nm.writer_id)
	LEFT OUTER JOIN study_notice_img ni ON(ni.notice_id = nm.id);
	
/*===========================================*/	
SELECT
	* /*모든 컬럼을 다 출력*/
FROM
	user_mst AS um
	LEFT OUTER JOIN user_dtl AS ud ON (ud.id = um.id);
	/*두 테이블 간 id가 일치하는 조건으로 조합함. 왼쪽이 기준이고 오른쪽 dtl 2행이 없으므로 그에 대한 조합은 null값으로 조합된다.
	AS는 생략 가능하다  */
SELECT
	*
FROM 
	order_mst om
	LEFT OUTER JOIN order_dtl od ON (od.order_id = om.id)
	/*대상이 앞에 오고 조건이 뒤로 온다. 기준(om)에 붙이는 테이블 od가 ~인 것 순으로  조건 붙이기.*/
	LEFT OUTER JOIN user_mst um  ON(um.id = om.user_id);
	/*주문에 대한 사용자 정보.*/

SELECT
	*
FROM 
	user_mst um
	LEFT OUTER JOIN order_mst om ON (om.user_id = um.id)
	/*모든 사용자 정보*/
	LEFT OUTER JOIN order_dtl od ON (od.order_id = om.id);
	/*id값이 두개로 나옴. 경우의 수가 2개라서. product가 2개 경우라서.*/

INSERT INTO subject_mst
(
id,
`name`
)

VALUES 
	(1, 'java'),
	(2, 'python'),
	(3, 'c');
	
INSERT INTO student_mst
(
id, 
`name`
)

VALUES
 	(1, '신경수'),
 	(2, '고희주'),
 	(3, '장건녕'),
 	(4, '문승주');

INSERT INTO emp_mst
(
id,
`name`
)

VALUES 
	(1, '문성현'),
	(2, '윤대휘'),
	(3, '문자영'),
	(4, '정규민');

INSERT INTO course_mst
(
id,
subject_id,
student_id,
status_id
)

VALUES 
	(1, 1, 1, 1),
	(2, 2, 1, 2),
	(3, 3, 1, 2),
	(4, 1, 2, 2),
	(5, 3, 2, 1),
	(6, 1, 3, 1),
	(7, 1, 4 ,2);
	
INSERT INTO student_dtl
(
id,
emp_id
)

VALUES 
(0, 1),
(0, 2),
(0, 3),	
(0, 4);
	
insert INTO status_mst
(
id, 
`name`
)

VALUES
(0, '수강'),
(0, '수료');

SELECT
	cm.id AS '순번',
	sbm.name AS '과목명',
	sm.name AS '수강생명',
	em.name AS '담당자명',
	stm.name AS '상태'
	
FROM course_mst cm
	LEFT OUTER JOIN subject_mst sbm ON (sbm.id = cm.subject_id)
	LEFT OUTER JOIN student_mst sm ON (sm.id = cm.student_id)
	LEFT OUTER JOIN student_dtl sd ON(sd.id = sm.id)
	LEFT OUTER JOIN emp_mst em ON(em.id = sd.emp_id)
	LEFT OUTER JOIN status_mst stm ON (stm.id = cm.status_id);
	
SELECT/*학생 이름 기준으로 데이터 출력하기*/
	sm.id AS '순번',
	sbm.name AS '과목명',
	sm.name AS '수강생명',
	em.name AS '담당자명',
	stm.name AS '상태'
FROM 
	student_mst sm
	LEFT OUTER JOIN course_mst cm ON (cm.student_id = sm.id)
	LEFT OUTER JOIN subject_mst sbm ON (sbm.id = cm.subject_id)
	LEFT OUTER JOIN status_mst stm ON (stm.id = cm.status_id)
	LEFT OUTER JOIN student_dtl sd ON (sd.id = sm.id)
	LEFT OUTER JOIN emp_mst em ON (em.id = sd.emp_id)

ORDER BY /*select에서 정렬 도와주는 코드. 순번 다음에 그 안에서 과목명 알파벳 순. 그런데 바꾼 이름보단 원래 테이블의 컬럼 이름으로 주로*/
	/*`순번`,	`과목명`,	`상태`;*/
	sm.id,
	sbm.id;
	
