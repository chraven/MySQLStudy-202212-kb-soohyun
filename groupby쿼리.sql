SELECT
	product_name,
	COUNT(order_id),/*아래 goupby로 묶인 행이 몇개 있는지 알려줌. count 소괄호 안에는 뭐가 들어가든 상관x*/
	SUM(stock),/*stock의 총합*/
	MIN(stock),/*제일 작은 값*/
	MAX(stock),/*제일 큰 값*/
	SUM(stock) / COUNT(1),
	AVG(stock)
FROM
	order_mst
GROUP BY
	product_name; /*product_name이 같은 것끼리 묶어라*/
/*--------------------------------------------------------*/	
SELECT
	product_name,
	sum(price * stock) AS total_price/*상품명대로의 가격*수량의 총합*/
FROM
	order_mst
GROUP BY
	product_name;
	/*--------------------------------------------------------*/	
SELECT
	*,
	price * stock AS total_price/*상품명대로의 가격*수량의 총합*/
FROM
	order_mst;
/*--------------------------------------------------------*/	
SELECT
	product_name,
	COUNT(order_id) AS order_count,
	SUM(stock) AS stock_sum,
	MIN(stock),/*제일 작은 값*/
	MAX(stock) AS max_stock,
	SUM(stock) / COUNT(1),
	AVG(stock)
FROM
	order_mst
WHERE
	stock > 50/*group by 하기전 각각에 조건을 줘서 거름*/
GROUP BY
	product_name /*product_name이 같은 것끼리 묶어라*/
HAVING 
max_stock > 49
ORDER by
order_count DESC,
stock_sum desc /*desc 내림차순 없으면 오름차순*/
LIMIT 0, 2;/*limit 1 : 제일 위의 라인 하나를 가져옴.*/
/*limit 한개 숫자면 위에서부터의 갯수 숫자가 두개면(0,2) 0번 인덱스부터 2개 */
/*-----------------------------------------------------------------------------------*/
SELECT
	*
FROM
	order_mst
LIMIT 3,3;/*인덱스는 행의 순서. 키값과 상관 없음*/
