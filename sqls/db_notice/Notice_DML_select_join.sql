SELECT
    n.Notice_Title AS 공지내용,
    w.Writer_Name AS 작성자,
    COUNT(v.Visitor_ID) AS 방문자_명수
FROM
    Notice n
        JOIN
    Writers w ON n.Writer_ID = w.Writer_ID
        LEFT JOIN
    Visitors v ON n.Notice_ID = v.Notice_ID
GROUP BY
    n.Notice_Title, w.Writer_Name;