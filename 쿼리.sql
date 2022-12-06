
/* 
CRUD(Create, Read, Update, Delete)

INSERT (추가) - C
SELECT (조회) - R
UPDATE (수정) - U
DELETE (삭제) - D
*/

INSERT INTO product_mst(
	id,
 	product_name, 
	product_price
) /*insert into와 value 순서 맞춰서 쓸 것*/
VALUES
   (0, '스타벅스 블루 머그컵', 15000),
	(0, '스타벅스 블랙 머그컵', 15000), 
	(0, '스타벅스 화이트 머그컵', 20000);