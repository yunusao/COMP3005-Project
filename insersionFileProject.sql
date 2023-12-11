TRUNCATE TABLE UserClasses, Classes, Sessions, Trainers, UserExercises, Exercises, HealthMetrics, Goals, Profiles, Users CASCADE;

INSERT INTO Users (Name, Email, Password, RegistrationDate)
VALUES ('Joe', 'joe@email.com', 'password1', CURRENT_DATE),
       ('Laith', 'laith@email.com', 'password2', CURRENT_DATE),
       ('Omar', 'omar@email.com', 'password3', CURRENT_DATE),
       ('Mahmoud', 'mahmoud@email.com', 'password4', CURRENT_DATE),
       ('Aziz', 'aziz@email.com', 'password5', CURRENT_DATE),
       ('Mohammad', 'mohammad@email.com', 'password6', CURRENT_DATE),
       ('Amr', 'amr@email.com', 'password7', CURRENT_DATE),
       ('Youssef', 'youssef@email.com', 'password8', CURRENT_DATE),
       ('Joo', 'joo@email.com', 'password9', CURRENT_DATE),
       ('Khaled', 'khaled@email.com', 'password10', CURRENT_DATE);


INSERT INTO Profiles (UserID, Age, Gender, Height, Weight)
VALUES  (1, 30, 'M', 180, 75),
        (2, 21, 'M', 165, 60),
        (3, 20, 'M', 175, 70),
        (4, 19, 'M', 180, 75),
        (5, 20, 'M', 165, 60),
        (6, 21, 'M', 175, 80),
        (7, 22, 'M', 180, 110),
        (8, 22, 'M', 165, 83),
        (9, 22, 'M', 175, 74),
        (10, 20, 'M', 185, 69);

INSERT INTO Goals (UserID, Description, StartDate, EndDate, Status)
VALUES  (1, 'Lose weight', CURRENT_DATE, CURRENT_DATE + INTERVAL '3 months', 'In Progress'),
        (1, 'Build muscle', CURRENT_DATE, CURRENT_DATE + INTERVAL '6 months', 'In Progress'),
        (2, 'Increase stamina', CURRENT_DATE, CURRENT_DATE + INTERVAL '2 months', 'In Progress'),
        (2, 'Improve flexibility', CURRENT_DATE, CURRENT_DATE + INTERVAL '4 months', 'In Progress'),
        (3, 'Lose weight', CURRENT_DATE, CURRENT_DATE + INTERVAL '3 months', 'In Progress'),
        (3, 'Build muscle', CURRENT_DATE, CURRENT_DATE + INTERVAL '6 months', 'In Progress'),
        (4, 'Increase stamina', CURRENT_DATE, CURRENT_DATE + INTERVAL '2 months', 'In Progress'),
        (4, 'Improve flexibility', CURRENT_DATE, CURRENT_DATE + INTERVAL '4 months', 'In Progress'),
        (5, 'Lose weight', CURRENT_DATE, CURRENT_DATE + INTERVAL '3 months', 'In Progress'),
        (5, 'Build muscle', CURRENT_DATE, CURRENT_DATE + INTERVAL '6 months', 'In Progress'),
        (6, 'Increase stamina', CURRENT_DATE, CURRENT_DATE + INTERVAL '2 months', 'In Progress'),
        (6, 'Improve flexibility', CURRENT_DATE, CURRENT_DATE + INTERVAL '4 months', 'In Progress'),
        (7, 'Lose weight', CURRENT_DATE, CURRENT_DATE + INTERVAL '3 months', 'In Progress'),
        (7, 'Build muscle', CURRENT_DATE, CURRENT_DATE + INTERVAL '6 months', 'In Progress'),
        (8, 'Increase stamina', CURRENT_DATE, CURRENT_DATE + INTERVAL '2 months', 'In Progress'),
        (8, 'Improve flexibility', CURRENT_DATE, CURRENT_DATE + INTERVAL '4 months', 'In Progress'),
        (9, 'Lose weight', CURRENT_DATE, CURRENT_DATE + INTERVAL '3 months', 'In Progress'),
        (9, 'Build muscle', CURRENT_DATE, CURRENT_DATE + INTERVAL '6 months', 'In Progress'),
        (10, 'Increase stamina', CURRENT_DATE, CURRENT_DATE + INTERVAL '2 months', 'In Progress'),
        (10, 'Improve flexibility', CURRENT_DATE, CURRENT_DATE + INTERVAL '4 months', 'In Progress');

INSERT INTO HealthMetrics (UserID, Date, MetricType, Value)
VALUES (1, CURRENT_DATE, 'Heart Rate', 72),
       (2, CURRENT_DATE, 'Heart Rate', 75),
       (3, CURRENT_DATE, 'Heart Rate', 80),
       (4, CURRENT_DATE, 'Heart Rate', 85),
       (5, CURRENT_DATE, 'Heart Rate', 90),
       (6, CURRENT_DATE, 'Heart Rate', 95),
       (7, CURRENT_DATE, 'Heart Rate', 100),
       (8, CURRENT_DATE, 'Heart Rate', 105),
       (9, CURRENT_DATE, 'Heart Rate', 110),
       (10, CURRENT_DATE, 'Heart Rate', 70);


INSERT INTO Exercises (Name, Description)
VALUES ('Running', 'A form of cardio exercise'),
       ('Weightlifting', 'A form of strength training'),
       ('Yoga', 'A form of flexibility and balance exercise'),
       ('Cycling', 'A form of cardio exercise');

INSERT INTO UserExercises (UserID, ExerciseID, Date, Duration)
VALUES  (1, 1, CURRENT_DATE, 30),
        (2, 2, CURRENT_DATE, 45),
        (3, 3, CURRENT_DATE, 60),
        (4, 4, CURRENT_DATE, 30),
        (5, 1, CURRENT_DATE, 45),
        (6, 2, CURRENT_DATE, 60),
        (7, 3, CURRENT_DATE, 30),
        (8, 4, CURRENT_DATE, 45),
        (9, 1, CURRENT_DATE, 60),
        (10, 4, CURRENT_DATE, 60);


INSERT INTO Trainers (Name, Specialization)
VALUES ('Jack', 'Cardio'),
       ('Michael', 'Strength Training'),
       ('Yunus', 'Flexibility');


INSERT INTO Classes (ClassName, Description, Schedule, TrainerID)
VALUES ('Cardio Blast', 'A high intensity cardio class', 'Mon Wed Fri 10:00', 1),
       ('Power Lifting', 'A strength training class', 'Tue Thu 18:00', 2),
       ('Yoga Basics', 'A beginner friendly yoga class', 'Sat Sun 08:00', 3),
       ('Advanced Yoga', 'An advanced yoga class', 'Sat Sun 10:00', 3);


INSERT INTO Sessions (UserID, TrainerID, Date, Time, Status)
VALUES  (1, 1, '2023-12-02', '10:00', 'Scheduled'),
        (2, 2, '2023-12-05', '18:00', 'Scheduled'),
        (3, 3, '2023-12-07', '09:00', 'Scheduled'),
        (4, 1, '2023-12-03', '10:00', 'Scheduled'),
        (5, 2, '2023-12-08', '11:00', 'Scheduled'),
        (6, 3, '2023-12-09', '08:00', 'Scheduled'),
        (7, 1, '2023-12-04', '16:00', 'Scheduled'),
        (8, 2, '2023-12-06', '19:00', 'Scheduled'),
        (9, 3, '2023-12-10', '13:00', 'Scheduled'),
        (10, 3, '2023-12-11', '08:00', 'Scheduled');


INSERT INTO UserClasses (UserID, ClassID, RegistrationDate)
VALUES  (1, 1, CURRENT_DATE),
        (1, 2, CURRENT_DATE),
        (1, 3, CURRENT_DATE),
        (2, 2, CURRENT_DATE),
        (2, 3, CURRENT_DATE),
        (2, 4, CURRENT_DATE),
        (3, 1, CURRENT_DATE),
        (3, 2, CURRENT_DATE),
        (3, 3, CURRENT_DATE),
        (4, 1, CURRENT_DATE),
        (4, 2, CURRENT_DATE),
        (4, 3, CURRENT_DATE),
        (5, 1, CURRENT_DATE),
        (5, 2, CURRENT_DATE),
        (5, 3, CURRENT_DATE),
        (6, 1, CURRENT_DATE),
        (6, 2, CURRENT_DATE),
        (6, 3, CURRENT_DATE),
        (7, 1, CURRENT_DATE),
        (7, 2, CURRENT_DATE),
        (7, 3, CURRENT_DATE),
        (8, 1, CURRENT_DATE),
        (8, 2, CURRENT_DATE),
        (8, 3, CURRENT_DATE),
        (9, 1, CURRENT_DATE),
        (9, 2, CURRENT_DATE),
        (9, 3, CURRENT_DATE),
        (10, 1, CURRENT_DATE),
        (10, 2, CURRENT_DATE),
        (10, 3, CURRENT_DATE),
        (10, 4, CURRENT_DATE);
