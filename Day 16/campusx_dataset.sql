-- ============================================================
--  CampusX Student Dataset
--  Use this file in Google Colab as shown in the notebook
-- ============================================================

CREATE TABLE IF NOT EXISTS students (
    student_id   INTEGER PRIMARY KEY,
    name         TEXT NOT NULL,
    age          INTEGER,
    city         TEXT,
    enrolled_on  TEXT
);

CREATE TABLE IF NOT EXISTS courses (
    course_id    INTEGER PRIMARY KEY,
    course_name  TEXT NOT NULL,
    instructor   TEXT,
    duration_hrs INTEGER,
    category     TEXT
);

CREATE TABLE IF NOT EXISTS enrollments (
    enrollment_id INTEGER PRIMARY KEY,
    student_id    INTEGER,
    course_id     INTEGER,
    score         REAL,
    grade         TEXT,
    completed     INTEGER,   -- 1 = yes, 0 = no
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id)  REFERENCES courses(course_id)
);

-- ── Students ─────────────────────────────────────────────────
INSERT INTO students VALUES (1,  'Aarav Sharma',    21, 'Jaipur',    '2024-01-10');
INSERT INTO students VALUES (2,  'Priya Mehta',     22, 'Delhi',     '2024-01-12');
INSERT INTO students VALUES (3,  'Rohan Verma',     20, 'Mumbai',    '2024-01-15');
INSERT INTO students VALUES (4,  'Sneha Gupta',     23, 'Bangalore', '2024-01-18');
INSERT INTO students VALUES (5,  'Karan Singh',     21, 'Jaipur',    '2024-02-01');
INSERT INTO students VALUES (6,  'Ananya Rao',      22, 'Hyderabad', '2024-02-03');
INSERT INTO students VALUES (7,  'Vikram Patel',    24, 'Ahmedabad', '2024-02-05');
INSERT INTO students VALUES (8,  'Neha Joshi',      20, 'Pune',      '2024-02-10');
INSERT INTO students VALUES (9,  'Arjun Das',       23, 'Kolkata',   '2024-02-14');
INSERT INTO students VALUES (10, 'Ishaan Nair',     21, 'Kochi',     '2024-02-20');
INSERT INTO students VALUES (11, 'Tanya Khanna',    22, 'Delhi',     '2024-03-01');
INSERT INTO students VALUES (12, 'Siddharth Yadav', 25, 'Lucknow',   '2024-03-05');
INSERT INTO students VALUES (13, 'Pooja Iyer',      21, 'Chennai',   '2024-03-10');
INSERT INTO students VALUES (14, 'Harsh Malhotra',  23, 'Mumbai',    '2024-03-12');
INSERT INTO students VALUES (15, 'Riya Bose',       20, 'Kolkata',   '2024-03-18');

-- ── Courses ──────────────────────────────────────────────────
INSERT INTO courses VALUES (1, '100 Days of ML',         'Nitish Singh', 120, 'Machine Learning');
INSERT INTO courses VALUES (2, 'Python Bootcamp',        'Nitish Singh',  60, 'Programming');
INSERT INTO courses VALUES (3, 'Deep Learning A-Z',      'Nitish Singh',  90, 'Deep Learning');
INSERT INTO courses VALUES (4, 'NLP with Python',        'Nitish Singh',  75, 'NLP');
INSERT INTO courses VALUES (5, 'SQL for Data Science',   'Nitish Singh',  30, 'Database');
INSERT INTO courses VALUES (6, 'Feature Engineering',    'Nitish Singh',  40, 'Machine Learning');

-- ── Enrollments ──────────────────────────────────────────────
INSERT INTO enrollments VALUES (1,  1,  1, 88.5, 'A',  1);
INSERT INTO enrollments VALUES (2,  1,  2, 92.0, 'A+', 1);
INSERT INTO enrollments VALUES (3,  1,  5, 76.0, 'B+', 1);
INSERT INTO enrollments VALUES (4,  2,  1, 95.0, 'A+', 1);
INSERT INTO enrollments VALUES (5,  2,  3, 81.0, 'A',  1);
INSERT INTO enrollments VALUES (6,  3,  1, 67.5, 'B',  1);
INSERT INTO enrollments VALUES (7,  3,  2, 55.0, 'C',  0);
INSERT INTO enrollments VALUES (8,  4,  4, 89.0, 'A',  1);
INSERT INTO enrollments VALUES (9,  4,  1, 91.5, 'A+', 1);
INSERT INTO enrollments VALUES (10, 5,  1, 73.0, 'B+', 1);
INSERT INTO enrollments VALUES (11, 5,  5, 60.0, 'B',  0);
INSERT INTO enrollments VALUES (12, 6,  2, 84.0, 'A',  1);
INSERT INTO enrollments VALUES (13, 6,  3, 79.5, 'B+', 1);
INSERT INTO enrollments VALUES (14, 7,  1, 45.0, 'D',  0);
INSERT INTO enrollments VALUES (15, 7,  6, 88.0, 'A',  1);
INSERT INTO enrollments VALUES (16, 8,  1, 93.0, 'A+', 1);
INSERT INTO enrollments VALUES (17, 8,  2, 87.5, 'A',  1);
INSERT INTO enrollments VALUES (18, 9,  3, 62.0, 'B',  1);
INSERT INTO enrollments VALUES (19, 9,  4, 77.0, 'B+', 1);
INSERT INTO enrollments VALUES (20, 10, 1, 85.0, 'A',  1);
INSERT INTO enrollments VALUES (21, 10, 5, 91.0, 'A+', 1);
INSERT INTO enrollments VALUES (22, 11, 2, 70.0, 'B+', 0);
INSERT INTO enrollments VALUES (23, 11, 6, 83.5, 'A',  1);
INSERT INTO enrollments VALUES (24, 12, 1, 97.0, 'A+', 1);
INSERT INTO enrollments VALUES (25, 12, 3, 94.0, 'A+', 1);
INSERT INTO enrollments VALUES (26, 13, 4, 68.0, 'B',  1);
INSERT INTO enrollments VALUES (27, 13, 1, 74.0, 'B+', 1);
INSERT INTO enrollments VALUES (28, 14, 2, 50.0, 'C',  0);
INSERT INTO enrollments VALUES (29, 14, 5, 88.0, 'A',  1);
INSERT INTO enrollments VALUES (30, 15, 1, 79.0, 'B+', 1);
INSERT INTO enrollments VALUES (31, 15, 6, 65.0, 'B',  1);
