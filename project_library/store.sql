-- fk 설정을 나중에
create table store(
l_id varchar2(100),
st_num varchar2(100) primary key,
st_title varchar2(100),
st_context varchar2(1000),
st_m_id varchar2(100),
st_pw varchar2(100),
st_date date
);

create table member_store(
mst_m_id varchar2(100),
mst_st_num varchar2(100) references store(st_num)
);

insert into store values(
'test01_l_id', 'test01_st_num', 'test01_st_title', 
'test01_st_context', 'test01_st_m_id', 'test01_st_pw', sysdate);

insert into store values(
'test02_l_id', 'test02_st_num', 'test02_st_title', 
'test02_st_context', 'test02_st_m_id', 'test02_st_pw', sysdate);

insert into store values(
'test03_l_id', 'test03_st_num', 'test03_st_title', 
'test03_st_context', 'test03_st_m_id', 'test03_st_pw', sysdate);

insert into store values(
'test04_l_id', 'test04_st_num', 'test04_st_title', 
'test04_st_context', 'test04_st_m_id', 'test04_st_pw', sysdate);

--
insert into store values(
'test05_l_id', 'test05_st_num', 'test05_st_title', 
'test05_st_context', 'test05_st_m_id', 'test05_st_pw', sysdate);

insert into store values(
'test06_l_id', 'test06_st_num', 'test06_st_title', 
'test06_st_context', 'test06_st_m_id', 'test06_st_pw', sysdate);

insert into store values(
'test07_l_id', 'test07_st_num', 'test07_st_title', 
'test07_st_context', 'test07_st_m_id', 'test07_st_pw', sysdate);

insert into store values(
'test08_l_id', 'test08_st_num', 'test08_st_title', 
'test08_st_context', 'test08_st_m_id', 'test08_st_pw', sysdate);


insert into store values(
'test09_l_id', 'test09_st_num', 'test09_st_title', 
'test09_st_context', 'test09_st_m_id', 'test09_st_pw', sysdate);

insert into store values(
'test10_l_id', 'test10_st_num', 'test10_st_title', 
'test10_st_context', 'test10_st_m_id', 'test10_st_pw', sysdate);

insert into store values(
'test11_l_id', 'test11_st_num', 'test11_st_title', 
'test11_st_context', 'test11_st_m_id', 'test11_st_pw', sysdate);

insert into store values(
'test12_l_id', 'test12_st_num', 'test12_st_title', 
'test12_st_context', 'test12_st_m_id', 'test12_st_pw', sysdate);

select * from l_member

insert into l_member values(0001, 'dohye', '123', '도해', '010-45');
insert into l_member values(0001, 'id', '123', '도해', '010-454-8888');

SELECT m_id FROM l_member WHERE m_id = 'dohye'
		
drop table member_store;
drop table store;


SELECT * FROM cols



출처: http://tenlie10.tistory.com/68 [게임 개발자 블로그]

create table library(
l_id number(10),
l_name varchar2(100),
l_location varchar2(1000),
l_holiday varchar2(100),
l_time varchar2(200),
l_phone varchar2(200),
l_website varchar2(400)
);

insert into library values(0001, '중구구립도서관', '서울특별시 중구 동호로 14길 18', '365일 연중무휴', '09:00-18:00', '02)2280-8470', 'https://www.e-junggu.or.kr/new/');

insert into library values(0002, '논현도서관', '서울특별시 강남구 학동로43길 17 (논현2문화센터 6층)', '"둘째(넷째)화요일,일요일을 제외한법정공휴일"', '06:00-22:00', '02-3443-7650', 'http://library.gangnam.go.kr/');

insert into library values(0003, '금천구립가산도서관', '서울특별시 금천구 가산로5길 43', '매월 둘째,넷째 월요일/법정 공휴일', '07:00-22:00', '02-865-6817', 'http://geumcheonlib.seoul.kr');

insert into library values(0004, '관악문화관도서관', '서울특별시 관악구 신림로3길 35(신림동)', '매주 화요일/국가지정공휴일', '09:00-22:00', '02-828-5700', 'http://lib.gwanak.go.kr/');

		SELECT * FROM l_member
		WHERE m_id = 'id' and l_id = 1 and m_pw = '12'
		
select * from l_member

select * from tab
