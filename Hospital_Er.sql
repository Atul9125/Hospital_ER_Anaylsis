CREATE TABLE hospital_er_data (
    patient_id            VARCHAR(15)   PRIMARY KEY,
    admission_date         TIMESTAMP     NOT NULL,
    first_initial           CHAR(1)       NOT NULL,
    last_name               VARCHAR(100)  NOT NULL,
    gender                  VARCHAR(2)    NOT NULL CHECK (gender IN ('M','F','NC')),
    age                     SMALLINT      NOT NULL CHECK (age >= 0),
    race                    VARCHAR(50)   NOT NULL,
    department_referral     VARCHAR(50),
    admission_flag          BOOLEAN       NOT NULL,
    satisfaction_score      SMALLINT      CHECK (satisfaction_score BETWEEN 0 AND 10),
    waittime_minutes        SMALLINT      NOT NULL CHECK (waittime_minutes >= 0),
    patients_cm             SMALLINT      NOT NULL CHECK (patients_cm IN (0,1))
);

DROP TABLE IF EXISTS hospital_er_data;

--1. Total number of patients
SELECT COUNT(*) AS total_patients FROM hospital_er_data;

-- 2. List all patients from the 'Cardiology' department
SELECT patient_id, last_name, age
FROM hospital_er_data
WHERE department_referral = 'Cardiology';

-- 3. Average wait time overall
SELECT ROUND(AVG(waittime_minutes), 2) AS avg_waittime
FROM hospital_er_data;

-- 4. Number of patients by gender
SELECT gender, COUNT(*) AS total
FROM hospital_er_data
GROUP BY gender;

-- 5. Number of patients by department (highest to lowest)
SELECT department_referral, COUNT(*) AS total
FROM hospital_er_data
GROUP BY department_referral
ORDER BY total DESC;

-- 6. Patients with no department referral (NULL)
SELECT COUNT(*) AS no_referral
FROM hospital_er_data
WHERE department_referral IS NULL;

-- 7. Average satisfaction score by department
SELECT department_referral, ROUND(AVG(satisfaction_score), 2) AS avg_satisfaction
FROM hospital_er_data
WHERE satisfaction_score IS NOT NULL
GROUP BY department_referral
ORDER BY avg_satisfaction DESC;

-- 8. Top 10 longest wait times
SELECT patient_id, last_name, waittime_minutes
FROM hospital_er_data
ORDER BY waittime_minutes DESC
LIMIT 10;

-- 9. Patients aged above 60
SELECT patient_id, last_name, age
FROM hospital_er_data
WHERE age > 60;

-- 10. Count of patients by race
SELECT race, COUNT(*) AS total
FROM hospital_er_data
GROUP BY race
ORDER BY total DESC;

-- 11. Patients admitted (admission_flag = TRUE) vs not admitted
SELECT admission_flag, COUNT(*) AS total
FROM hospital_er_data
GROUP BY admission_flag;

-- 12. Average age by gender
SELECT gender, ROUND(AVG(age), 1) AS avg_age
FROM hospital_er_data
GROUP BY gender;

-- 13. Patients under case management (patients_cm = 1)
SELECT COUNT(*) AS total_case_managed
FROM hospital_er_data
WHERE patients_cm = 1;

-- 14. Monthly admission trend
SELECT DATE_TRUNC('month', admission_date) AS month, COUNT(*) AS total_admissions
FROM hospital_er_data
GROUP BY month
ORDER BY month;

-- 15. Department with the highest average wait time
SELECT department_referral, ROUND(AVG(waittime_minutes), 2) AS avg_wait
FROM hospital_er_data
GROUP BY department_referral
ORDER BY avg_wait DESC
LIMIT 1;

-- 16. Patients with satisfaction score below 5
SELECT patient_id, last_name, satisfaction_score
FROM hospital_er_data
WHERE satisfaction_score < 5;

-- 17. Age group-wise patient count (using CASE)
SELECT
  CASE
    WHEN age < 18 THEN 'Minor'
    WHEN age BETWEEN 18 AND 40 THEN 'Adult'
    WHEN age BETWEEN 41 AND 60 THEN 'Middle-aged'
    ELSE 'Senior'
  END AS age_group,
  COUNT(*) AS total
FROM hospital_er_data
GROUP BY age_group
ORDER BY total DESC;

-- 18. Day of week with most ER visits
SELECT TO_CHAR(admission_date, 'Day') AS weekday, COUNT(*) AS total
FROM hospital_er_data
GROUP BY weekday
ORDER BY total DESC;

-- 19. Gender-wise average satisfaction score, only for admitted patients
SELECT gender, ROUND(AVG(satisfaction_score), 2) AS avg_satisfaction
FROM hospital_er_data
WHERE admission_flag = TRUE AND satisfaction_score IS NOT NULL
GROUP BY gender;

-- 20. Departments where average wait time exceeds overall average (subquery)
SELECT department_referral, ROUND(AVG(waittime_minutes), 2) AS avg_wait
FROM hospital_er_data
GROUP BY department_referral
HAVING AVG(waittime_minutes) > (
    SELECT AVG(waittime_minutes) FROM hospital_er_data
)
ORDER BY avg_wait DESC;