With t1 as(select *,ROW_NUMBER() over(order by id) row_no 
from [dbo].[Worker1])
select * from t1
where t1.row_no%2!=0

select * into clone from [dbo].[Worker1]
select * from clone

