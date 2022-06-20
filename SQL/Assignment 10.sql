with t1 as(
select *,ROW_NUMBER() over(order by [Salary]desc) as rowno from[dbo].[Worker1])
select * from t1 where rowno=5

with t1 as(
select [Salary]from [dbo].[Worker1]
group by [Salary] having count(*)>1)
select *from [dbo].[Worker1]
where [Salary] in ( select * from t1)
order by [Salary] desc