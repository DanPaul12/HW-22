

CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO Members
Values (2, "Jane Smith", 53), (3, "Goofy Goo", 30), (4, "Randall Wilson", 55);

INSERT INTO WorkoutSessions
Values (1, 1, "2023-12-20", "3:30", "lifting"), (2, 1, "2023-12-22", "4:30", "running"), (3, 3, "2023-12-23", "5:30", "swimming");

UPDATE WorkoutSessions
SET session_time = "10:30"
WHERE member_id = 3;

DELETE FROM WorkoutSessions
WHERE member_id = 3;

DELETE FROM Members
WHERE id = 3;

Select * from Members;
Select * from WorkoutSessions;