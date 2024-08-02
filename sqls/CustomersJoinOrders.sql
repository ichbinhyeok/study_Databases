SELECT customerName, COUNT(*) as "주문 카운팅"
FROM customers
         LEFT join orders on customers.customerID = orders.customerID
group by customerName