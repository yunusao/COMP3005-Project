
--Creates a new member account
INSERT INTO Users (Name, Email, Password, RegistrationDate)
VALUES ('New Member', 'newmember@email.com', 'password', CURRENT_DATE);

--Updates a members profile
UPDATE Profiles
SET Age = 25, Gender = 'M', Height = 180, Weight = 75
WHERE UserID = 1;  

--User books session
INSERT INTO Sessions (UserID, TrainerID, Date, Time, Status)
VALUES (1, 1, '2023-12-10', '10:00', 'Scheduled');  

--Shows users sessions
SELECT * FROM Sessions
WHERE UserID = 4;  

--Show trainer's upcoming sessions
SELECT * FROM Sessions
WHERE TrainerID = 1 AND Date >= CURRENT_DATE;

--Show full user
SELECT * FROM Profiles WHERE UserID = 1;
SELECT * FROM Goals WHERE UserID = 1;  
SELECT * FROM Sessions WHERE UserID = 1;  
SELECT * FROM UserClasses WHERE UserID = 1;  
SELECT * FROM HealthMetrics WHERE UserID = 1;  
SELECT * FROM UserExercises WHERE UserID = 1;  

--User books class
INSERT INTO UserClasses (UserID, ClassID, RegistrationDate)
VALUES (1, 1, CURRENT_DATE);  
--User sets goal
INSERT INTO Goals (UserID, Description, StartDate, EndDate, Status)
VALUES (1, 'Lose weight', CURRENT_DATE, CURRENT_DATE + INTERVAL '3 months', 'In Progress');  

--User adds health metrics
INSERT INTO HealthMetrics (UserID, Date, MetricType, Value)
VALUES (1, CURRENT_DATE, 'Heart Rate', 72);  

--user cancels session
UPDATE Sessions
SET Status = 'Cancelled'
WHERE SessionID = 1;  

