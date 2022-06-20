create database analytics_manager
use [analytics_manager]
create table worker
(worker_id int not null,
first_name varchar(30),
last_name varchar(30),
salary int,
current_location char(30),
department varchar(30)
)
select * from [dbo].[worker]

insert into worker values
(1,'Hemanth','Tr Mill',20000,'Bangalore','Business_Analyst'),

(2,'Anjan','Low',30000,'Cham','Business_Analyst'),

(3,'Guru','Gan',40000,'Tr mill','Business_Analyst'),
(4,'Low','Gan',50000,'Tr mill','Business_Analyst'),
(5,'Gan','Gan',60000,'Tr mill','Business_Analyst')
select * from [dbo].[worker]


SELECT FIRST_NAME AS WORKER_NAME
FROM WORKER

SELECT  DEPARTMENT
FROM WORKER


SELECT TOP 5 *
FROM WORKER
ORDER BY WORKER_ID DESC