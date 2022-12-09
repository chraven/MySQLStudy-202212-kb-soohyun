
/* 
CRUD(Create, Read, Update, Delete)

INSERT (추가) - C
SELECT (조회) - R
UPDATE (수정) - U
DELETE (삭제) - D
*/

INSERT INTO product_mst 
/*(
	id,
 	product_name, 
	product_price
)*/ /*insert into와 value 순서 맞춰서 쓸 것. 순서가 맞춰져 있으면, 컬럼 수가 맞으면 생략 가능*/
VALUES
   (0, '스타벅스 블루 머그컵', 15000),
	(0, '스타벅스 블랙 머그컵', 15000),
	(0, '스타벅스 화이트 머그컵', 20000);
	

SELECT 
	product_name,
 	id, 
	product_price /*컬럼 순서를 바꿀 수 있다*/
FROM 
	product_mst;
	
INSERT INTO student_mst
/*순서가 맞춰져 있으면, 컬럼 수가 맞으면 컬럼항목 생략 가능*/
VALUES
(0, '김영희', 1, 80),
(0, '김일희', 2, 90),
(0, '김이희', 3, 75),
(0, '김삼희', 1, 85),
(0, '김사희', 2, 95),
(0, '김오희', 3, 90),
(0, '김육희', 1, 85);


SELECT
	id,
	`name`,/*명령어와 겹치는 경우 `를 써서 구분을 함*/
	student_year,/*원하는 항목만 입력 가능, 순서 변경 가능*/
	score 
FROM
	student_mst
WHERE
	student_year NOT IN(1, 2); /*키워드 옆에다가 not을 쓴다. IN은 포함하는 것, NOT IN은 포함 안하는 것 내보냄.*/

SELECT
	id,
	`name`,/*명령어와 겹치는 경우 `를 써서 구분을 함*/
	student_year,/*원하는 항목만 입력 가능, 순서 변경 가능*/
	score 
FROM
	student_mst	
WHERE 
	score not BETWEEN 80 AND 90; /*not between은 사이에 포함되지 않는 것. between and는 그 반대*/

SELECT
	id,
	`name`,/*명령어와 겹치는 경우 `를 써서 구분을 함*/
	student_year,/*원하는 항목만 입력 가능, 순서 변경 가능*/
	score 
FROM
	student_mst	
WHERE 
 `name` IS NOT NULL; /*문장앞에 not이 아니라 IS 다음에 써야 함*/

/*-----------------------------------------------*/

UPDATE 
	student_mst 
SET 
	score = 80
WHERE 
	`name` = '박준현';
/*
2학년 중에 성적이 80 ~ 90 사이인 학생들의 점수를 100으로 바꿔라
*/
 
UPDATE 
	student_mst
SET 
	score = 100
WHERE 
	student_year = 2
	and score BETWEEN 80 AND 90; 
	
/*-----------------------------------------------*/

DELETE
FROM 
	student_mst
WHERE 
	score < 80;
	 
 
	
	