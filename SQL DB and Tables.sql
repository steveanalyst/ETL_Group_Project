CREATE SCHEMA google_db;

Use google_db;

CREATE TABLE glassdoor_google(
company VARCHAR (100),
job_title_cleaned VARCHAR (100),
overall_ratings FLOAT (4),
work_balance_stars FlOAT (4)
);

Use google_db;

CREATE TABLE google_job_description(
Company VARCHAR (20),
Title VARCHAR (200),
Category VARCHAR (200),
Responsibilities VARCHAR (10000), 
Minimum_Qualifications TEXT (5000),
Preferred_Qualifications TEXT (5000)
);


#after we've uploaded the dataframes into SQL let's play with aggregates

USE google_db;

SELECT  gg.job_title_cleaned AS "Job Title", AVG(gg.overall_ratings) AS "Overall Rating"
FROM glassdoor_google gg
GROUP BY gg.job_title_cleaned;
