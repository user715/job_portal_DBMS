create database job_portal_;
use job_portal_;

create table location(
state varchar(255),
country varchar(255),
pincode int not null primary key
);

create table company(
company_id int not null auto_increment primary key,
company_name varchar(255),
job_openings int default 0,
applicants int default 0,
max_salary int,
avg_salary int
);

create table users(
user_id int not null auto_increment primary key,
user_name varchar(255) not null,
age int,
gender char(1),
company_id int default 1,
years_of_experience int,
skills varchar(300),
location int,
foreign key(location) references location(pincode),
foreign key(company_id) references company(company_id)
);

create table jobs(
job_id int not null auto_increment primary key,
company_id int not null,
job_role varchar(255) not null,
ctc int,
skills varchar(300),
location int not null,
foreign key(location) references location(pincode),
foreign key(company_id) references company(company_id)
);

create table applications(
user_id int not null,
job_id int not null,
foreign key (user_id) references users(user_id),
foreign key (job_id) references jobs(job_id)
);

create table reviews(
user_id int not null,
job_id int not null,
rating int,
comment_ varchar(255),
foreign key (user_id) references users(user_id),
foreign key (job_id) references jobs(job_id)
);