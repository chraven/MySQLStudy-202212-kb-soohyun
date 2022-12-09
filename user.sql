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