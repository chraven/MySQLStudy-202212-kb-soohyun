
select
성적.순번,
성적.학번,
학생.이름,
성적.과목번호,
과목.과목이름,
점수


from 성적
LEFT OUTER JOIN 학생 on (학생.학번 = 성적.학번)
LEFT OUTER JOIN 과목 on (과목.과목번호 = 성적.과목번호)

where  
성적.과목번호 < 3

order by
성적.순번,
성적.과목번호;

show databases;
use delivery_db;
show tables;
desc delivery_mst;
SHOW FULL TABLES IN db_study2 WHERE TABLE_TYPE LIKE 'VIEW';