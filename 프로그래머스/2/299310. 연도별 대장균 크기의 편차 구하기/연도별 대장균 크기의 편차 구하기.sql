-- 코드를 작성해주세요
WITH TT AS (
    SELECT 
        YEAR(DIFFERENTIATION_DATE) AS YEAR,
        MAX(SIZE_OF_COLONY) AS MAX_SIZE
    FROM ECOLI_DATA
    GROUP BY YEAR
)



SELECT 
    YEAR(DIFFERENTIATION_DATE) AS YEAR,
     (T.MAX_SIZE-E.SIZE_OF_COLONY) AS YEAR_DEV,
    ID
FROM ECOLI_DATA E
JOIN TT T
ON T.YEAR = YEAR(DIFFERENTIATION_DATE)
ORDER BY YEAR, YEAR_DEV;