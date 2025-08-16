----------------------------
README.TXT
----------------------------

This submission contains SQL scripts, which involves creating and using 
stored procedures and cursors in MySQL. The submission includes five SQL scripts 
corresponding to the five questions.

Files included:

1. q1.sql  - ListAllSubscribers() procedure using a cursor to iterate through all subscribers.
2. q2.sql  - GetWatchHistoryBySubscriber(IN sub_id INT) procedure to return shows watched 
             by a subscriber along with watch time.
3. q3.sql  - AddSubscriberIfNotExists(IN subName VARCHAR(100)) procedure to add a new 
             subscriber if not already present.
4. q4.sql  - SendWatchTimeReport() procedure to call GetWatchHistoryBySubscriber() 
             for all subscribers who have watched something.
5. q5.sql  - PrintAllSubscribersWatchHistory() procedure that loops through each subscriber 
             and prints their watch history.
6. README.TXT - This file.

Instructions to execute:

1. Open MySQL Workbench and connect to your MySQL server.
2. Create a new database (if not already existing):
   
Example:
   CREATE DATABASE XYZ;
   USE XYZ;

3. Create the required tables and insert sample data using the provided table creation 
   and insertion statements in each script file if not already created.

4. Execute each script in order:

   a. Run Q1.sql to create and test ListAllSubscribers().
      Example: CALL ListAllSubscribers();

   b. Run Q2.sql to create GetWatchHistoryBySubscriber() procedure.
      Example: CALL GetWatchHistoryBySubscriber(1);

   c. Run Q3.sql to create AddSubscriberIfNotExists() procedure.
      Example: CALL AddSubscriberIfNotExists('Michael Brown');

   d. Run Q4.sql to create SendWatchTimeReport() procedure.
      Example: CALL SendWatchTimeReport();

   e. Run Q5.sql to create PrintAllSubscribersWatchHistory() procedure.
      Example: CALL PrintAllSubscribersWatchHistory();

5. All procedures can be executed multiple times and will produce results.

Git Repository:
https://github.com/Aagat19/Software_Systems_Development

Note: Ensure MySQL version >= 8.0 for proper execution of stored procedures and cursors.

----------------------------
End of README.TXT
----------------------------
