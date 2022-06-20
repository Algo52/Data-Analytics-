Select [first_name], REPLACE([first_name],'H','h') As Replaced
from [dbo].[worker]

select * from[dbo].[worker]
order by 
[first_name],
[department] desc

select [first_name], [salary]
from[dbo].[worker]
where salary=(Select max([salary]) from [dbo].[worker])