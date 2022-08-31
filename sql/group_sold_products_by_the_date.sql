# url of the problem -> https://leetcode.com/problems/group-sold-products-by-the-date/
# the solution is:

select 
	sell_date, 
	count(distinct(product)) num_sold, 
	group_concat( distinct product ORDER BY product) products
	
from activities 
group by sell_date;

