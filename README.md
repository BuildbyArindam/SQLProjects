# SQL Internship Projects

## 📘 Overview
This repository contains two fully functional MySQL database systems created for SQL development practice and internship submission.

### 🎓 1. Student Result Processing System
Handles student academic records, GPA calculation, semester-wise ranking, and result summary exports.

### ✈️ 2. Airline Reservation System
Manages airline flights, customer bookings, seat availability, and generates booking summaries.

## 🧰 Tools Used
- MySQL 8.x
- MySQL Workbench (for schema design and ER diagrams)

## 🚀 How to Use
1. Clone this repository.
2. Use MySQL Workbench to run `.sql` files.
3. Follow project-specific README files for setup and usage.

## 📄 License
Open-source for learning and demonstration purposes.

-----------------------------------------------

# Student Result Processing System

## 📚 Objective
A SQL-based system designed to efficiently manage student academic records including grades, GPA, CGPA calculations, and performance ranking. Built entirely using MySQL and suitable for universities or schools.

## 🗂️ Features
- Student, Course, Grade, and Semester Management
- Automated GPA Calculation via Triggers
- Pass/Fail Analysis
- Semester-wise Rank List Generation
- Exportable Views for Reports

## 📄 File Overview
| File                           | Description                                  |
|--------------------------------|----------------------------------------------|
| `student_schema.sql`           | Database schema: tables with constraints     |
| `student_sample_data.sql`      | Example students, courses, grades            |
| `student_triggers.sql`         | Trigger to calculate GPA automatically       |
| `student_queries.sql`          | Custom queries: GPA, rankings, stats         |
| `student_views_and_reports.sql`| Views for exporting semester summaries       |
| `student_er_diagram.png`       | ER Diagram of the whole project in summaries |

## ⚙️ Setup Instructions
1. Open MySQL Workbench.
2. Run `student_schema.sql` to create the database structure.
3. Load `student_sample_data.sql` to insert example data.
4. Run `student_triggers.sql` to enable GPA calculation.
5. Use `student_queries.sql` and `student_views_and_reports.sql` to generate reports and statistics.
6. Use `student_er_diagram.png` to get the visual structure of the project.

## 📊 ER Diagram
> You can create the ER diagram using **MySQL Workbench**:
> - Go to **Database > Reverse Engineer**.
> - Select your database and follow prompts.
> - Save or export the ER diagram as PNG.

## 💻 Usage Example
- Calculate GPA for each student:
  ```sql
  SELECT * FROM GPA;
  ```
- Generate semester rank list:
  ```sql
  SELECT * FROM Semester_Rank_List;
  ```

## 📈 Future Enhancements
- Web interface for input and results
- Attendance tracking integration

----------------------------------------

# Airline Reservation System

## ✈️ Objective
This project is a comprehensive airline reservation database system developed in MySQL. It manages flights, customer bookings, seat availability, and booking statuses using normalized schemas and database triggers.

## 🧩 Features
- Flight, Seat, Customer, and Booking Records
- Real-time Seat Availability Checks
- Booking and Cancellation with Triggers
- Booking Summary Reports via Views

## 📄 File Overview
| File                            | Description                                  |
|---------------------------------|----------------------------------------------|
| `airlines_schema.sql`           | Defines tables: Flights, Seats, Bookings     |
| `airlines_sample_data.sql`      | Sample flight schedules and bookings         |
| `airline_triggers.sql`          | Triggers for booking and seat management     |
| `airline_queries.sql`           | Search flights, list available seats         |
| `airline_views_and_reports.sql` | Booking summaries and availability reports   |
| `airline_er_diagram.png`        | ER Diagram of the whole project in summaries |

## ⚙️ Setup Instructions
1. Open MySQL Workbench.
2. Run `airlines_schema.sql` to create tables.
3. Execute `airlines_sample_data.sql` to populate demo data.
4. Apply `airline_triggers.sql` for automatic updates.
5. Run `airline_queries.sql` and `airline_views_and_reports.sql` for flight search and summary.
6. Use `airline_er_diagram.png` to get the visual structure of the project.

## 📊 ER Diagram
> Steps to create ER diagram in **MySQL Workbench**:
> - Select **Database > Reverse Engineer**.
> - Choose the airline reservation database.
> - Use the generated ER diagram; export to PNG.

## 💻 Usage Example
- Search for flights:
  ```sql
  SELECT * FROM Flights WHERE departure_city = 'NYC';
  ```
- Find available seats:
  ```sql
  SELECT * FROM Seats WHERE is_booked = FALSE;
  ```

## 🚀 Future Enhancements
- Mobile app integration
- Loyalty rewards management
```

---
