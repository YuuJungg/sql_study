-- STUDENTS 테이블
-- Marks > 75
-- Name 끝에서 3글자 기준 오름차순 정렬, 같다면 ID 기준 오름차순
-- Name 컬럼만 출력
SELECT
  Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY
  RIGHT(NAME, 3) ASC, ID ASC;
