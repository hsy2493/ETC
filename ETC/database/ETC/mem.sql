ALTER TABLE meminfo;
--테이블 생성

DROP TABLE meminfo;
DROP COLUMN DEPTNO;
-- 복사테이블 데이터 삭제

DROP TABLE IF EXISTS meminfo;
--테이블 데이터 삭제2

CREATE TABLE meminfo (
    memid VARCHAR(50),
    mempwd VARCHAR(50),
    memgender VARCHAR(50),
    memname VARCHAR(50),
    membirth DATE,
    memaddress VARCHAR(50)
);
SELECT * FROM meminfo;
-- 테이블 데이터 추가