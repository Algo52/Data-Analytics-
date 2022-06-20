INSERT INTO [dbo].[clone]Values('Anit','Kumar','ankitkumar@ineuron.com','Marketing', 50000,  '2020-01-14')
INSERT INTO[dbo].[clone]  Values('Rya','Agarwal','riyaagarwal@ineuron.com','Finance', 45000, '2018-04-23')
INSERT INTO [dbo].[clone] Values('Nshit','Sharma','nishitsharma@ineuron.com','Purchase', 48000, '2018-10-10')
INSERT INTO [dbo].[clone] Values('amay','Raina','samayraina@ineuron.com','Marketing', 36000,  '2017-08-22')
INSERT INTO [dbo].[clone] Values('man','Singh','amansingh@ineuron.com','Finance', 45000,  '2017-08-12')

select * from [dbo].[Worker1]
intersect
select * from [dbo].[clone]



With t1 as (select w1.id from [dbo].[Worker1] w1 left join [dbo].[clone] wc on w1.id=wc.id)
select * from
[dbo].[clone]
where id  not in (select * from t1)