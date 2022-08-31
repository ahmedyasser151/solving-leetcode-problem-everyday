# url of the problem -> https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/
# the solution:

select customer_id , count(customer_id) count_no_trans 
from visits 
where visit_id not in (select visit_id from transactions)
group by customer_id
order by 2 desc , 1;
