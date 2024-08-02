select categoryid, count(*) as "count" from products
group by categoryid having count(*) >= 10;