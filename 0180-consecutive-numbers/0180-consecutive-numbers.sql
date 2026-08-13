select distinct a.num as ConsecutiveNums 
from Logs a
left join Logs b
    on a.id = b.id+1
left join Logs c
    on b.id = c.id+1
where a.num=b.num and b.num=c.num