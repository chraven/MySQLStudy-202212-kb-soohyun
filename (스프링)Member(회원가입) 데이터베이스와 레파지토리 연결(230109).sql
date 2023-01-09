/*데이터베이스 create*/
create database board;
use board;

/* Member
* 이메일
* 비밀번호
* 닉네임
* 프로필 사진
* 전화번호
* 주소
*/

create table member (
 email varchar(50) primary key,
 password varchar(20) not null, 
 nickname varchar(20) not null,
 profile varchar(255),
 tel_number varchar(20) not null,
 address text not null 
 );

SELECT * FROM MEMBER;