

-- 트랜잭션
CREATE TABLE student (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    age NUMBER
);

INSERT INTO student VALUES (1, '김철수', 15);
INSERT INTO student VALUES (2, '홍길동', 16);

SELECT * FROM student;

COMMIT;

INSERT INTO student VALUES (3, '도우너', 12);
-- 커밋 안한상태에서 롤백하면 도우너 취소
ROLLBACK;

-- 계좌 이체
UPDATE tb_account
SET balance = balance + 5000
WHERE name = '김철수';

UPDATE tb_account
SET balance = balance - 5000
WHERE name = '박영희';
-- 계좌이체 둘다 성공해야 커밋 (하나라도 실패하면 롤백해야되서)
COMMIT;


-- WHERE 절 없는 student 딜리트 = student 다지움
DELETE FROM student;
-- 삭제후 커밋 안해서 롤백가능
ROLLBACK;


SELECT * FROM student;
-- TRUNCATE = RESET
TRUNCATE TABLE student;