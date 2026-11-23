CREATE DATABASE hr_analytics;
USE hr_analytics;
CREATE TABLE employees (
    EmployeeNumber INT PRIMARY KEY,
    Age INT,
    Attrition VARCHAR(10),
    Department VARCHAR(50),
    JobRole VARCHAR(50),
    Gender VARCHAR(10),
    MonthlyIncome INT,
    OverTime VARCHAR(10),
    YearsAtCompany INT,
    YearsSinceLastPromotion INT,
    JobSatisfaction INT,
    WorkLifeBalance INT,
    MaritalStatus VARCHAR(20),
    TotalWorkingYears INT
);
SELECT COUNT(*) FROM employees;

SELECT COUNT(*) AS Total,
COUNT(CASE WHEN Attrition='Yes' THEN 1 END) * 100.0 / COUNT(*) AS Attrition_Rate
FROM employees;
SELECT Department,
COUNT(CASE WHEN Attrition='Yes' THEN 1 END) * 100.0 / COUNT(*) AS Attrition_Pct
FROM employees GROUP BY Department;
SELECT OverTime,
COUNT(CASE WHEN Attrition='Yes' THEN 1 END) * 100.0 / COUNT(*) AS Attrition_Pct
FROM employees GROUP BY OverTime;

