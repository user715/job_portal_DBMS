
use job_portal_;

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/location.csv"
INTO TABLE location
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n';

insert into company values (1,"unemployee",0,0,0,0);

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/company.csv"
INTO TABLE company
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n';

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/users.csv"
INTO TABLE users
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n';

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/jobs_20.csv"
INTO TABLE jobs
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n';

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/applications.csv"
INTO TABLE applications
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n';

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/reviews.csv"
INTO TABLE reviews
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n';