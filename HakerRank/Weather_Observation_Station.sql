-- CITY 컬럼에 있는 모든 행의 수 에서, 중복을 제거한 CITY 이름의 수를 뺀 값을 구하세요.
-- CITY 이름이 중복된 횟수를 구하라
SELECT
  COUNT(*) - COUNT(DISTINCT(CITY))
FROM STATION;



-- STATION 테이블에서 가장 짧은 도시 이름과 가장 긴 도시 이름을 출력
-- 같은 길이의 도시 이름이 여러 개 있을 경우, 알파벳 순으로 이름 선택

-- 가장 짧은 CITY
SELECT
  CITY,
  LENGTH(CITY)
FROM STATION
ORDER BY
    LENGTH(CITY) ASC,
    CITY ASC
LIMIT 1;

-- 가장 긴 CITY
SELECT
  CITY,
  LENGTH(CITY)
FROM STATION
ORDER BY
  LENGTH(CITY) DESC,
  CITY ASC
LIMIT 1;



-- STATION 테이블에서 모음(a,e,i,o,u)로 시작하는 CITY 이름들 추출, 중복 없이
SELECT
  DISTINCT CITY
FROM STATION
WHERE LOWER(LEFT(CITY, 1)) IN ('a', 'e', 'i', 'o', 'u'); 



-- STATION 테이블에서 모음으로 끝나는 CITY 이름, 중복 없이
SELECT
  DISTINCT CITY
FROM STATION
WHERE LOWER(RIGHT(CITY, 1)) IN ('a', 'e', 'i', 'o', 'u'); 



-- CITY 이름 첫 글자 모음
-- 마지막 글자도 모음
-- 중복 없이
SELECT
  DISTINCT CITY
FROM STATION
WHERE
  LOWER(LEFT(CITY, 1)) IN ('a', 'e', 'i', 'o', 'u')
  AND
  LOWER(RIGHT(CITY, 1)) IN ('a', 'e', 'i', 'o', 'u');



-- STATION 테이블에서 모음으로 시작하지 않는 CITY 이름
-- 중복 없이
SELECT
  DISTINCT CITY
FROM STATION
WHERE LOWER(LEFT(CITY, 1)) NOT IN ('a', 'e', 'i', 'o', 'u'); 



-- CITY 마지막 글자 모음 아님
-- 중복 없이
-- 대소문자 구분 없이
SELECT
  DISTINCT CITY
FROM STATION
WHERE LOWER(RIGHT(CITY, 1)) NOT IN ('a', 'e', 'i', 'o', 'u'); 



-- CITY가 모음으로 시작하지 않거나, CITY가 모음으로 끝나지 않으면
SELECT
  DISTINCT CITY
FROM STATION
WHERE
  LOWER(LEFT(CITY, 1)) NOT IN ('a', 'e', 'i', 'o', 'u')
  OR
  LOWER(RIGHT(CITY, 1)) NOT IN ('a', 'e', 'i', 'o', 'u'); 



-- CITY 이름이 모음으로 시작하면 안되고 모음으로 끝나도 안됨
SELECT
  DISTINCT CITY
FROM STATION
WHERE
  LOWER(LEFT(CITY, 1)) NOT IN ('a', 'e', 'i', 'o', 'u')
  AND
  LOWER(RIGHT(CITY, 1)) NOT IN ('a', 'e', 'i', 'o', 'u'); 
