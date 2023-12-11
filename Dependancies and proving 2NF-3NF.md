Dependancies:

    'Users' Table:

            - UserID determines Name, Email, Password, RegistrationDate

    'Profiles' Table:

            - ProfileID determines UserID, Age, Gender, Height, Weight
            - UserID determines ProfileID, Age, Gender, Height, Weight

    'Goals' Table: 

            - GoalID determines UserID, Description, StartDate, EndDate, Status
            - UserID determines GoalID, Description, StartDate, EndDate, Status

    'HealthMetrics' Table:

            - MetricID determines UserID, Date, MetricType, Value
            - UserID determines MetricID, Date, MetricType, Value

    'Exercises' Table:

            - ExerciseID determines Name, Description

    'UserExercises' Table: 

            - UserExerciseID determines UserID, ExerciseID, Date, Duration
            - UserID and ExerciseID determines UserExerciseID, Date, Duration

    'Trainers' Table:

            - TrainerID determines Name, Specialization

    'Sessions' Table: 

            - SessionID determines UserID, TrainerID, Date, Time, Status
            - UserID and TrainerID determines SessionID, Date, Time, Status

    'Classes' Table: 

            - ClassID determines ClassName, Description, Schedule, TrainerID
            - TrainerID determines ClassID, ClassName, Description, Schedule

    'UserClasses' Table: 

            - UserClassID determines UserID, ClassID, RegistrationDate
            - UserID and ClassID determines UserClassID, RegistrationDate


Is the Database 2NF and 3NF?

    - Proving 2NF:

        We know that this Database is 2NF because: 
            
            a. It is 1NF (all attributes are atomic or indivisible)

            b.  If we look at the dependancies, all the non-prime attributes depend on the primary key, and not just a part of it
    
    - Proving 3NF:

        We know this database is 3NF because:

            a. It is 2NF (proven above)

            b. Again if we look at the dependancies, none of the non-prime attributes depend on another non-prime attribute, 
                they only depend on the primary key. 
         