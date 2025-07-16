-- Employee 테이블
-- 이름 컬럼 추출, 알파벳 순으로 정렬
SELECT
  name
FROM Employee
ORDER BY name;

-- Employee 테이블
-- salary >= 100, onths < 10
-- employee_id 오름차순
SELECT
    name
FROM Employee
WHERE
    salary >= 2000
    AND
    months < 10
ORDER BY
    employee_id;
