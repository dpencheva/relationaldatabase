# relationaldatabase
freeCodeCamp.org projects for Relational Database Certification

postgresql

Celestial Bodies Database - universe.sql
Tasks:
    You should create a database named universe
    
    Be sure to connect to your database with \c universe. Then, you should add tables named galaxy, star, planet, and moon
    
    Each table should have a primary key
    
    Each primary key should automatically increment
    
    Each table should have a name column
    
    You should use the INT data type for at least two columns that are not a primary or foreign key
    
    You should use the NUMERIC data type at least once
    
    You should use the TEXT data type at least once
    
    You should use the BOOLEAN data type on at least two columns
    
    Each "star" should have a foreign key that references one of the rows in galaxy
    
    Each "planet" should have a foreign key that references one of the rows in star
    
    Each "moon" should have a foreign key that references one of the rows in planet
    
    Your database should have at least five tables
    
    Each table should have at least three rows
    
    The galaxy and star tables should each have at least six rows
    
    The planet table should have at least 12 rows
    
    The moon table should have at least 20 rows
    
    Each table should have at least three columns
    
    The galaxy, star, planet, and moon tables should each have at least five columns
    
    At least two columns per table should not accept NULL values
    
    At least one column from each table should be required to be UNIQUE
    
    All columns named name should be of type VARCHAR
    
    Each primary key column should follow the naming convention table_name_id. For example, the moon table should have a primary key column named moon_id
    
    Each foreign key column should have the same name as the column it is referencing




World Cup Database - worldcup.sql, insert_data.sh, queries.sh, games.csv, expected_output.txt

Tasks:

    Part 1: Create the database
    
    Part 2: Insert the data
    
    Part 3: Query the database
    
    You should create a database named worldcup

    You should connect to your worldcup database and then create teams and games tables

    Your teams table should have a team_id column that is a type of SERIAL and is the primary key, and a name column that has to be UNIQUE

    Your games table should have a game_id column that is a type of SERIAL and is the primary key, a year column of type INT, and a round column of type VARCHAR

    Your games table should have winner_id and opponent_id foreign key columns that each reference team_id from the teams table

    Your games table should have winner_goals and opponent_goals columns that are type INT

    All of your columns should have the NOT NULL constraint

    Your two script (.sh) files should have executable permissions. Other tests involving these two files will fail until permissions are correct. When these permissions are enabled, the tests will take significantly longer to run

    When you run your insert_data.sh script, it should add each unique team to the teams table. There should be 24 rows

    When you run your insert_data.sh script, it should insert a row for each line in the games.csv file (other than the top line of the file). There should be 32 rows. Each row should have every column filled in with the appropriate info. Make sure to add the correct ID's from the teams table (you cannot hard-code the values)

    You should correctly complete the queries in the queries.sh file. Fill in each empty echo command to get the output of what is suggested with the command above it. Only use a single line like the first query. The output should match what is in the expected_output.txt file
