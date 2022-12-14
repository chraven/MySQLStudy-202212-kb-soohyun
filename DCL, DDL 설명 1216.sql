/*
	계정생성 DDL
    CREATE USER '계정아이디'@localhost identified by '비밀번호'; -> 내부 IP 접속(현재 pc 안에서만 접근 가능. 현재 pc에 원격 접속을 해서 접속 가능)
    CREATE USER '계정아이디'@% identified by '비밀번호'; -> 외부 IP 접속
		> create user 'junil'@localhost identified by 'root';
        > grant all privileges on *.* to junil@localhost;
        > flush privileges; //마지막에 해주어야 하는 코드
	
	DCL(권한 관련)
    1. GRANT(데이터베이스, 테이블 사용자 권한 부여)
		- GRANT 권한 TO 사용자 계정 (잘 쓸일 없음)
        - GRANT 권한 ON 객체명(데이터베이스, 테이블명) TO 사용자 계정 //특정 테이블, 데이터베이스에게 권한을 준다//
			> GRANT ALL PRIVILEGES ON subquery_study.board_mst to root@localhost -> 내부 IP(현재 pc에서만 접근 가능)
            > GRANT ALL PRIVILEGES ON subquery_study.board_mst to root@% ->외부 IP(다른 pc에서도 접근 가능)
            > GRANT ALL PRIVILEGES ON subquery_study.board_mst to root@200.100.% ->외부 IP(해당 ip를 포함하고 있는 pc에서만 접근 가능)
   
   2. REVOKE(데이터베이스, 테이블 사용자 권한 회수)
		- GRANT 권한 TO 사용자 계정 (잘 쓸일 없음)
        - GRANT 권한 ON 객체명(데이터베이스, 테이블명) TO 사용자 계정
			> REVOKE insert, update, create ON *.* TO root@localhost;(insert, update, create 권한 해제) //*.*:모든 데이터베이스의 모든 테이블
            > REVOKE ALL ON *.* TO root@localhost;(모든 권한 해제)


*/