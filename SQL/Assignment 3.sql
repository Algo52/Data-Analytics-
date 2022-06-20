select RTRIM([first_name]) as TrimfirstName
from [dbo].[worker]


select distinct [department],
len([department]) as Length
from [dbo].[worker]

select MAX([salary]) As HighestSalary
from [dbo].[worker]
where [salary] not in
(select distinct Top 5 [salary]
from[dbo].[worker]
order by[salary] desc)

