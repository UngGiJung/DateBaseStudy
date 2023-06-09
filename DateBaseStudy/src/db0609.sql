SELECT *FROM member

CREATE TABLE MEMBER (
ID varchar2(20) PRIMARY KEY,
password varchar2(20) NOT NULL
)

INSERT INTO MEMBER (id, password)
VALUES('himedia','himedia1234')

purge recyclebin

SELECT *
FROM MEMBER
WHERE id = trim('  himedia   ')