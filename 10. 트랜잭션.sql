

-- Ʈ�����
CREATE TABLE student (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    age NUMBER
);

INSERT INTO student VALUES (1, '��ö��', 15);
INSERT INTO student VALUES (2, 'ȫ�浿', 16);

SELECT * FROM student;

COMMIT;

INSERT INTO student VALUES (3, '�����', 12);
-- Ŀ�� ���ѻ��¿��� �ѹ��ϸ� ����� ���
ROLLBACK;

-- ���� ��ü
UPDATE tb_account
SET balance = balance + 5000
WHERE name = '��ö��';

UPDATE tb_account
SET balance = balance - 5000
WHERE name = '�ڿ���';
-- ������ü �Ѵ� �����ؾ� Ŀ�� (�ϳ��� �����ϸ� �ѹ��ؾߵǼ�)
COMMIT;


-- WHERE �� ���� student ����Ʈ = student ������
DELETE FROM student;
-- ������ Ŀ�� ���ؼ� �ѹ鰡��
ROLLBACK;


SELECT * FROM student;
-- TRUNCATE = RESET
TRUNCATE TABLE student;