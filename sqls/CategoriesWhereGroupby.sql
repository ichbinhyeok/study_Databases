select c.categoryname,
       count(*) as '카운팅'
from products p
         inner join categories c on p.categoryid = c.categoryid
where p.categoryid in (1, 7)
group by c.categoryname;