CREATE TABLE Users (
    UserID SERIAL PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    Password VARCHAR(255),
    RegistrationDate DATE
);

CREATE TABLE Profiles (
    ProfileID SERIAL PRIMARY KEY,
    UserID INTEGER REFERENCES Users(UserID),
    Age INTEGER,
    Gender CHAR(1),
    Height FLOAT,
    Weight FLOAT
);

CREATE TABLE Goals (
    GoalID SERIAL PRIMARY KEY,
    UserID INTEGER REFERENCES Users(UserID),
    Description TEXT,
    StartDate DATE,
    EndDate DATE,
    Status VARCHAR(255)
);

CREATE TABLE HealthMetrics (
    MetricID SERIAL PRIMARY KEY,
    UserID INTEGER REFERENCES Users(UserID),
    Date DATE,
    MetricType VARCHAR(255),
    Value FLOAT
);

CREATE TABLE Exercises (
    ExerciseID SERIAL PRIMARY KEY,
    Name VARCHAR(255),
    Description TEXT
);

CREATE TABLE UserExercises (
    UserExerciseID SERIAL PRIMARY KEY,
    UserID INTEGER REFERENCES Users(UserID),
    ExerciseID INTEGER REFERENCES Exercises(ExerciseID),
    Date DATE,
    Duration INTEGER
);

CREATE TABLE Trainers (
    TrainerID SERIAL PRIMARY KEY,
    Name VARCHAR(255),
    Specialization VARCHAR(255)
);

CREATE TABLE Sessions (
    SessionID SERIAL PRIMARY KEY,
    UserID INTEGER REFERENCES Users(UserID),
    TrainerID INTEGER REFERENCES Trainers(TrainerID),
    Date DATE,
    Time TIME,
    Status VARCHAR(255)
);

CREATE TABLE Classes (
    ClassID SERIAL PRIMARY KEY,
    ClassName VARCHAR(255),
    Description TEXT,
    Schedule VARCHAR(255),
    TrainerID INTEGER REFERENCES Trainers(TrainerID)
);

CREATE TABLE UserClasses (
    UserClassID SERIAL PRIMARY KEY,
    UserID INTEGER REFERENCES Users(UserID),
    ClassID INTEGER REFERENCES Classes(ClassID),
    RegistrationDate DATE
);
