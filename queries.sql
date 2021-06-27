## Part 1: Test it with SQL
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name='job';

## Part 2: Test it with SQL
SELECT *
FROM employer
WHERE location = "St. Louis City";

## Part 3: Test it with SQL
SET FOREIGN_KEY_CHECKS = 0;
drop table if exists job;
SET FOREIGN_KEY_CHECKS = 1;

## Part 4: Test it with SQL
SELECT skill.name, skill.description, job.name
FROM skill
INNER JOIN job_skills ON skill.id = job_skills.skills_id
INNER JOIN job ON job.id = job_skills.jobs_id
ORDER BY skill.name;