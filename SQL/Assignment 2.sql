use [analytics_manager]
select * from [dbo].[worker]
insert into [dbo].[worker]
values
(8,'Bhavana','Bhavu',85000,'bangaolr','SocialScience'),
(9,'Amith','SUbu',90000,'TRmill','Bigdata'),
(10,'Kushi','Rani',95000,'Chamrajpet','DataScience'),
(11,'Uday','babu',36000,'Vijaynagar','Science'),
(12,'Monu','Anu',72000,'Jaynagar','Bigdata'),
(13,'Anu','YEnu',71000,'Shivmogha','Science'),
(14,'Reka','Anuty',69000,'Tumkar','Bigdata'),
(15,'Sunbhu','Anna',42000,'dchill','DataScience'),
(16,'Andha','Anthe',96000,'Tumkur','politicalScience');


SELECT LEFT(first_name , 3) AS 'First 3 Letters'
FROM Worker


select CHARINDEX('a',[first_name]) as POS
from [dbo].[worker]
where [first_name]='Hemanth'

select [first_name],[last_name],[department],[salary]
from[dbo].[worker]
where salary in
(select max([salary]) as [salary]
from [dbo].[worker]
group by [department])