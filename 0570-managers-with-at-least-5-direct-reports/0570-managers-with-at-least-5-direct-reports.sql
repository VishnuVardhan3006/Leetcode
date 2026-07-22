# Write your MySQL query statement below
select e.name
from Employee e
join Employee m 
on e.id = m.managerID
group by e.id,e.name
having count(*) >= 5