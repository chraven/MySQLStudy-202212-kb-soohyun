INSERT INTO
	board_mst
VALUES
	(0, '제목1', '게시글 내용', 0, 1),
	(0, '제목2', '게시글 내용', 0, 1),
	(0, '제목3', '게시글 내용', 0, 1),
	(0, '제목1', '게시글 내용', 0, 2),
	(0, '제목2', '게시글 내용', 0, 2),
	(0, '제목3', '게시글 내용', 0, 2),
	(0, '제목4', '게시글 내용', 0, 1),
	(0, '제목5', '게시글 내용', 0, 1),
	(0, '제목6', '게시글 내용', 0, 1),
	(0, '제목4', '게시글 내용', 0, 2),
	(0, '제목5', '게시글 내용', 0, 2),
	(0, '제목6', '게시글 내용', 0, 2);


SELECT
	*,
	(SELECT COUNT(1) FROM bpard_mst bm2 WHERE bm2.wrtier_id = bm.writer_id) AS writer_count
FROM 
	board_mst bm;
/*같은 테이블 내에서 다른 값을 내기 위해서 별칭을 따로 줌.각 행마다 border_mst(bm2)에서writer_id가 같은 놈을 찾아 돌며 count한다.*/
/*실행 창에 border_mst가 두개 펼쳐져 있다고 생각. 이중 for문이라고 생각하면 됨*/
	
SELECT
	bm.id,
	bm.title,
	bm.content,
	bm.read_count,
	bm.writer_id,
	wc.writer_count
FROM
	board_mst bm
	LEFT OUTER JOIN (SELECT
	 writer_id, 
	 COUNT(1) AS writer_count
	FROM
		 board_mst 
	GROUP by 
	writer_id) wc ON(wc.writer_id = bm.writer_id);/*서브 쿼리를 조인 하는 게 더 효율적*/
	/*서브쿼리 자체를 wc로 선언. From부터 실행되니까 여기서 약어를 선언해서 select에 써도 무방.*/

SET profiling = 1;/*얘를 실행하고 쿼리 위에꺼 실행하고 아래 프로파일 실행 순*/
SHOW PROFILES;/*실행에 걸린 시간을 보여주는 코드*/

INSERT INTO
	user_mst
VALUE
	

