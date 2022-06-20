declare @n as int
set @n =10
select top(@n)*from[dbo].[Worker1]

declare @m as int
set @m =5;

with t1 as(
select *,ROW_NUMBER() over(order by [Salary]desc) as rowno from[dbo].[Worker1])
select * from t1 where rowno=@m

