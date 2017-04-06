Exercise 2 Execution Instruction

To execute this program post cloning the github account (https://github.com/felixt1986/w205_2017_spring.git) and readying the system (mount external drive, start Postgres database), please follow the below instruction.

A) In folder exercise_2 Run psycopg-createtable.py  : This helps setup the tcount Postgres database and the tweetwordcount table

B) In folder extweetwordcount Run the ‘sparse run’ command. After few minutes, stop the execution with control C

C) Open Postgres (psql -U postgres), connect to the database (\c tcount), examine the database (\dt), examine the table (SELECT * FROM tweetwordcount)


D) Go back to the instance and in folder exercise_2, run python finalresults.py to examine the # of occurrences of a particular word or all words 


E) In folder exercise_2, run python histogram.py to examine the words which appears between the two integers entered. Please note that the integers need to be separated by a space, not comma (example: python histogram.py 4 12) 
