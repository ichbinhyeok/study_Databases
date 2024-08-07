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