SELECT mi.NAME,
       COUNT(hn.HOBBY_PK) AS HOBBY_COUNT,
       a.AGE,
       mi.GENDER,
       addr.ADDRESS
FROM MEM_INFO mi
         JOIN
     AGE a ON mi.MEM_PK = a.MEM_PK
         LEFT JOIN
     HOBBY_NAME hn ON mi.MEM_PK = hn.MEM_PK
         LEFT JOIN
     ADDR_NAME an ON mi.MEM_PK = an.MEM_PK
         LEFT JOIN
     ADDRESS addr ON an.ADDRESS_PK = addr.ADDRESS_PK
GROUP BY mi.NAME, a.AGE, mi.GENDER, addr.ADDRESS
ORDER BY mi.NAME;


SELECT
    mi.NAME,
    COUNT(hn.HOBBY_PK) AS HOBBY_COUNT,
    a.AGE,
    mi.GENDER,
    addr.ADDRESS
FROM
    MEM_INFO mi
        JOIN
    AGE a ON mi.MEM_PK = a.MEM_PK
        LEFT JOIN
    HOBBY_NAME hn ON mi.MEM_PK = hn.MEM_PK
        LEFT JOIN
    (
        SELECT
            an.MEM_PK,
            MIN(an.ADDRESS_PK) AS MIN_ADDRESS_PK
        FROM
            ADDR_NAME an
        GROUP BY
            an.MEM_PK
    ) min_an ON mi.MEM_PK = min_an.MEM_PK
        LEFT JOIN
    ADDR_NAME an ON min_an.MEM_PK = an.MEM_PK AND min_an.MIN_ADDRESS_PK = an.ADDRESS_PK
        LEFT JOIN
    ADDRESS addr ON an.ADDRESS_PK = addr.ADDRESS_PK
GROUP BY
    mi.NAME, a.AGE, mi.GENDER, addr.ADDRESS
ORDER BY
    mi.NAME;






