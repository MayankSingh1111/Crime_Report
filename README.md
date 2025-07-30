# 🕵️‍♂️ Crime Data Analysis using SQL

This project performs data analysis on a U.S. crime dataset using **pure SQL (MySQL)**. It explores crime patterns across cities, time periods, and demographics to uncover actionable insights.

---

## 📁 Dataset

The dataset used (`crime_safety_dataset.csv`) includes over 1,000+ crime records with the following fields:

- `id`: Unique identifier  
- `date`, `time`: Date and time of the crime  
- `crime_type`: Type of crime (e.g. Assault, Homicide)  
- `city`, `state`: Location details  
- `location_description`: Street or landmark  
- `victim_age`, `victim_gender`, `victim_race`: Victim demographics

---

## 🛠️ Tools & Technologies

- **SQL (MySQL 8.0)**


---

### ✅ You're Good to Upload!

Let me know if you'd like this saved as a `.md` file or want help creating a GitHub repo with proper structure (folders, SQL script, dataset, README).

- MySQL Workbench / Command-Line Client
- CSV File Import (`LOAD DATA INFILE`)

---

## 🧱 Database Setup

1. Create a new database:
   ```sql
   CREATE DATABASE project1;
   USE project1;
Create the table:

sql
Copy
Edit
CREATE TABLE crime (
    id INT PRIMARY KEY,
    date DATE,
    time TIME,
    crime_type VARCHAR(50),
    city VARCHAR(100),
    state VARCHAR(100),
    location_description TEXT,
    victim_age INT,
    victim_gender VARCHAR(30),
    victim_race VARCHAR(30)
);
Load data (move CSV to secure_file_priv folder first):

sql
Copy
Edit
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/crime_safety_dataset.csv'
INTO TABLE crime
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
📊 Key SQL Queries & Insights
🔹 Crime Overview
Total records

Unique crime types

Total crimes per city

🔹 Time-Based Analysis
Crimes by year

Crimes by month

Peak crime hours (by time of day)

🔹 Demographic Insights
Gender distribution of victims

Victim age groups (0–17, 18–35, 36–60, 60+)

Victim race breakdown

🔹 Advanced Patterns
Most common crime type per city

Most common crimes by gender

Top 5 most dangerous cities

📈 Example Queries
sql
Copy
Edit
-- Crimes per year
SELECT YEAR(date) AS year, COUNT(*) AS total
FROM crime
GROUP BY year
ORDER BY year;

-- Victim age groups
SELECT 
  CASE 
    WHEN victim_age < 18 THEN '0-17'
    WHEN victim_age BETWEEN 18 AND 35 THEN '18 - 35'
    WHEN victim_age BETWEEN 36 AND 60 THEN '36 - 60'
    ELSE '60+'
  END AS age_group,
  COUNT(*) AS Victim_number
FROM crime
GROUP BY age_group;

---

 ## How to Use
Clone this repository.

Import crime_safety_dataset.csv into MySQL.

Run the SQL queries from crime_city_report.sql.

Modify and experiment with queries to explore deeper insights.


---

✅ Project Status
 Dataset cleaned and loaded into MySQL

 SQL queries completed

 README and documentation ready

📌 Future Improvements (Optional)
Visualize results using Python (matplotlib/seaborn)

Build an interactive dashboard (Power BI / Tableau)

Add stored procedures for modular querying

🙋‍♂️ Author
Raghav
SQL & Data Analysis Enthusiast
