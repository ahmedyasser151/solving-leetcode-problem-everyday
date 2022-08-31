# url of problem -> https://leetcode.com/problems/second-highest-salary/
# the solution:

select 
	distinct lead(salary) over(order by salary desc) SecondHighestSalary 
from employee 
group by salary
limit 1;
