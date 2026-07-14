# 🏥 Hospital Emergency Room Dashboard | Power BI + SQL

A complete Data Analytics project built using **Power BI**, **PostgreSQL**, and a real-world Emergency Room dataset.

This project analyzes Emergency Room patient records to identify patient flow, waiting times, satisfaction levels, department referrals, demographics, and admission statistics through an interactive Power BI dashboard and SQL analysis.

---

# 📌 Project Overview

Healthcare organizations generate huge amounts of patient data every day. Understanding this data helps hospitals improve operational efficiency, reduce waiting times, and increase patient satisfaction.

This project demonstrates how raw hospital ER data can be transformed into meaningful business insights using SQL and Power BI.

---

# 🎯 Objectives

- Analyze Emergency Room patient records
- Monitor patient admission trends
- Track patient waiting times
- Measure patient satisfaction
- Analyze department referrals
- Identify patient demographics
- Build an interactive dashboard for hospital management

---

# 🛠 Tech Stack

| Tool | Purpose |
|------|----------|
| Power BI | Dashboard & Data Visualization |
| PostgreSQL | Database |
| SQL | Data Analysis |
| CSV | Source Dataset |

---

# 📂 Project Structure

```
Hospital-ER-Dashboard/
│
├── HOSPITAL DASH.pbix          # Power BI Dashboard
├── Hospital ER_Data.csv        # Dataset
├── Hospital_Er.sql             # PostgreSQL Database & SQL Queries
├── README.md
└── Images/
      dashboard.png
```

---

# 📊 Dataset Information

The dataset contains Emergency Room patient information including:

| Column |
|---------|
| Patient ID |
| Admission Date |
| First Initial |
| Last Name |
| Gender |
| Age |
| Race |
| Department Referral |
| Admission Status |
| Satisfaction Score |
| Wait Time |
| Patients CM |

---

# 🗄 Database Design

The SQL file creates the table:

```
hospital_er_data
```

The table stores:

- Patient Information
- Admission Details
- Demographic Information
- Satisfaction Score
- Waiting Time
- Department Referrals

The SQL script also includes analytical queries for business reporting.

---

# 📈 Power BI Dashboard Features

The dashboard provides interactive insights including:

## Executive KPIs

- Total Patients
- Average Waiting Time
- Average Satisfaction Score
- Admission Rate

---

## Patient Demographics

- Gender Distribution
- Age Distribution
- Race Distribution

---

## Hospital Performance

- Average Wait Time
- Satisfaction Score
- Monthly Patient Trend

---

## Department Analysis

- Cardiology
- Orthopedics
- Neurology
- General Medicine
- Other Departments

---

## Admission Analysis

- Admitted Patients
- Non-Admitted Patients
- Admission Percentage

---

## Time-Based Analysis

- Daily Patients
- Monthly Patients
- Peak Admission Hours

---

# 📊 SQL Analysis

The SQL script includes queries such as:

- Total Patients
- Department-wise Patients
- Average Waiting Time
- Average Satisfaction Score
- Gender Analysis
- Race Analysis
- Admitted vs Non-Admitted Patients
- Department Referrals
- Patient Count by Month
- Other business insights

---

# 📸 Dashboard Preview

> Add your dashboard screenshot here.

```
Images/dashboard.png
```

Example:

```md
![Dashboard](Images/dashboard.png)
```

---

# 🚀 How to Run

## Step 1

Clone the repository

```bash
git clone https://github.com/yourusername/Hospital-ER-Dashboard.git
```

---

## Step 2

Open PostgreSQL

Execute

```
Hospital_Er.sql
```

This will

- Create the database table
- Insert data (if included)
- Execute analytical queries

---

## Step 3

Open Power BI Desktop

Open

```
HOSPITAL DASH.pbix
```

Refresh the dataset if needed.

---

# 📌 Business Insights

The dashboard helps answer questions such as:

- How many patients visited the ER?
- Which department receives the most referrals?
- What is the average waiting time?
- What is the average patient satisfaction score?
- Which age group visits the ER most frequently?
- What percentage of patients are admitted?
- Which months have the highest patient volume?
- Which demographic groups require more attention?

---

# 📊 Dashboard Highlights

✔ Interactive Filters

✔ Dynamic KPIs

✔ Department Analysis

✔ Patient Demographics

✔ Waiting Time Analysis

✔ Satisfaction Analysis

✔ Monthly Trends

✔ Admission Analysis

---

# 💡 Learning Outcomes

Through this project, I learned:

- Data Cleaning
- SQL Table Design
- SQL Aggregations
- PostgreSQL
- Power BI Data Modeling
- DAX Measures
- Dashboard Design
- Healthcare Data Analytics
- Business Intelligence

---

# 📚 Skills Demonstrated

- SQL
- PostgreSQL
- Power BI
- DAX
- Data Cleaning
- Data Visualization
- Dashboard Design
- Healthcare Analytics
- Business Intelligence
- Data Analysis

---

# 📦 Repository Contents

```
📁 Hospital-ER-Dashboard
│
├── 📄 README.md
├── 📄 Hospital ER_Data.csv
├── 📄 Hospital_Er.sql
├── 📄 HOSPITAL DASH.pbix
└── 📁 Images
      └── dashboard.png
```

---

# ⭐ Future Improvements

- Predict patient waiting time using Machine Learning
- Real-time dashboard with live database connection
- Doctor-wise performance analysis
- Bed occupancy dashboard
- Appointment scheduling analytics
- Emergency severity prediction

---

# 👨‍💻 Author

**Atul Kumar**

Data Analyst | Power BI Developer | SQL Developer

GitHub:
https://github.com/Atul9125

LinkedIn:
www.linkedin.com/in/atul-kumar-shaw-

---

# ⭐ If you found this project helpful

Please consider giving this repository a ⭐ on GitHub.
