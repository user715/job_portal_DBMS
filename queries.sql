use job_portal_;

# all jobs
select job_id,company_name,job_role,ctc,skills,state,country from 
jobs as j left join company as c on j.company_id=c.company_id left join location as l on
location=l.pincode;

select * from jobs;

#jobs with skills filter
select job_id from jobs where skills like '%C++%'
union
select job_id from jobs where skills like '%oops%';

select job_id from jobs where skills like '%C++%'and job_id in (select job_id from jobs where skills like '%oops%');

#jobs with skills and company name filter
select job_id,company_name,job_role,ctc,skills from jobs as j left join company as c on j.company_id=c.company_id
where company_name='Jabberbean77' and (skills like '%C++%' or skills like '%DBMS%'); 

#ctc skills
select job_id,company_name,job_role,ctc,skills from jobs as j left join company as c on j.company_id=c.company_id
where (skills like '%C++%' or skills like '%DBMS%') and ctc>30; 

#users based on skills and experiance
select * from users where (skills like '%DBMS%' or skills like '%web_dev%') and years_of_experience>5; 

#gender and skill
select * from users where (skills like '%data_analyst%') and gender='f'; 






