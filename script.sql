-- 코드 조각 게시판
-- 1. 코드 조각 테이블(게시물) : CodeDTO
-- 2. 언어 테이블(카테고리) : LanguageDTO

create table tblLanguage(
    name varchar2(100) primary key, --언어(PK)
    icon varchar2(100) not null,    --아이콘
    color varchar2(10) not null     --색상
);

insert into tblLanguage values ('Java', 'fa-solid fa-code', '#0096FF');
insert into tblLanguage values ('SQL', 'fa-solid fa-database', '#ff5733');
insert into tblLanguage values ('HTML', 'fa-brands fa-html5', '#00A36C');
insert into tblLanguage values ('CSS', 'fa-brands fa-css3-alt', '#FFBF00');
insert into tblLanguage values ('JavaScript', 'fa-brands fa-js', '#FFE5B4');

commit;

select * from tblLanguage;

-- tblCode
create sequence seqCode;
create table tblCode(
    seq number primary key,                                         --번호(PK)
    subject varchar2(300) not null,                                 --제목
    code varchar2(2000) not null,                                   --코드(내용)
    regdate date default sysdate not null,                          --날짜
    language varchar2(100) not null references tblLanguage(name)    --언어(FK)
);

select * from tblCode;
delete from tblCode where seq=23;

commit;


select * from tblCode c
    inner join tblLanguage l
        on c.language = l.name
    order by seq desc;