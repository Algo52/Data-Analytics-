Select [first_name]
from [dbo].[worker]
where [first_name]!='Hemanth' and [first_name]!='Andha'

select * from [dbo].[worker]
where len([first_name])=7 and left([first_name],1)='h'
