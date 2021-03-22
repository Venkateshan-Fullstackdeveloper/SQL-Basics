-- TODO:**DISTINCT** KEYWORD USED TO GRAB THE DISTINCT ELEMENTS

-- SELECT DISTINCT stu_fname as firstName, email from students;

-- TODO:**ORDER BY** KEYWORD USED TO ORDER THE ELEMENTS ON THE COLUMN VALUE BASIS

-- SELECT DISTINCT stu_fname, login_count,course_count from students ORDER BY login_count DESC; //DESCENDING ORDER

-- SELECT DISTINCT stu_fname, login_count,course_count from students ORDER BY login_count ASC;
-- ASCENDING ORDER USE ASC AS KEYWORD . BY DEFAULT, ORDER BY ORDER THE VALUES IN ASCENDING ORDER

-- SELECT DISTINCT stu_fname, login_count,course_count from students ORDER BY course_count DESC;
-- SELECT DISTINCT stu_fname, login_count,course_count from students ORDER BY course_count ASC;

-- TODO:*LIMIT** KEYWORD USED TO LIMIT THE ELEMENTS OF THE COLUMN
-- LIMIT 0, 5 WE CAN ALSO USE LIKE THIS AS SAME AS WE USED IN THE SUBSTRING BUT POSITION STARTS WITH 0 
-- SELECT DISTINCT stu_fname,login_count from students ORDER BY login_count DESC LIMIT 5;
-- SELECT DISTINCT stu_fname,login_count from students ORDER BY login_count DESC LIMIT 0,5;
-- ABOVE TWO QUERIES RESULTS THE SAME
-- SELECT DISTINCT stu_fname,login_count from students ORDER BY login_count DESC LIMIT 2,5;
-- ABOVE QUERY RESULTS THAT IT LEAVES THE FIRST TWO VALUES AS WE STARTED FROM POSITION 2 IT TAKES THE THIRD DATA

-- TODO:*LIKE** KEYWORD USED TO MATCH PATTERNS where **NOT LIKE** IS VICE VERSA

-- SELECT DISTINCT stu_fname,email from students WHERE stu_fname LIKE "%esh";
-- % represents any no of characters and _ represents only one charater for one _
-- SELECT DISTINCT stu_fname,email from students WHERE stu_fname LIKE "%i";
-- SELECT DISTINCT stu_fname,email from students WHERE stu_fname LIKE "___i";
-- SELECT DISTINCT stu_fname,email from students WHERE stu_fname NOT LIKE "%esh";

-- TODO:**COUNT()** METHOD IS USED TO COUNT THE DATA IN THE COLUMN

-- SELECT DISTINCT COUNT(stu_fname) AS count from students; 
-- result is 20 since distint wont work because sql works on inside out basis here DISTINCT is not funtion , it is keyword . so the orret wy of using it is shown below
-- SELECT  COUNT(DISTINCT stu_fname) AS count from students; 
-- result is 18 since dupliate elements are removed by DISTINCT KEYWORD

-- TODO:SQL MODE READ DOCUMENTATION

-- TODO: GROUP BY USED TO GROUP THE COLUMN AND IT TAKES ONLY FIRST DATA WHIH MATCHES WITH QUERY AND REST OF WERE HIDDEN IF WE DONT USE ANY AGGREGATE FUNCTIONS OR FUNCTIONS

-- SELECT stu_fname, signup_month from students GROUP BY signup_month;
-- SELECT stu_fname, signup_month, COUNT(*) AS COUNT from students GROUP BY signup_month;

-- TODO: MIN() AND MAX() USED TO GET THE MINIMUM AND MAXIMUM VALUE FROM TABLE
--   IN ORDER TO USE SUBQUERIES YOU HAVE TO USE INSIDE THE PARENTHESES()

-- SELECT stu_fname,email, login_count from students  
-- WHERE login_count = (SELECT MAX(login_count) from students);

-- SELECT stu_fname , email ,course_count from students 
-- WHERE course_count = (SELECT MIN(course_count) from students);

-- TODO: SUM() AND AVG()

-- SELECT signup_month,SUM(login_count) from students 
-- GROUP BY signup_month ORDER BY signup_month;
-- SELECT signup_month,AVG(login_count) AS AVG from students 
-- GROUP BY signup_month ORDER BY signup_month;

-- TODO: AND and OR

-- SELECT DISTINCT stu_fname,email, login_count,course_count from students
-- WHERE login_count >= 20 AND course_count >= 5 
-- ORDER BY login_count;

-- SELECT DISTINCT stu_fname,email, signup_month from students
-- WHERE signup_month = 7 OR signup_month = 10;

-- TODO: BETWEEN KEYWORD USED TO GET THE RANGE OF VALUES

-- SELECT email,login_count,signup_month from students
-- WHERE signup_month BETWEEN 7 AND 10 ORDER BY signup_month; 

-- TODO: CASE THEN

SELECT stu_fname,email,signup_month,
       CASE 
            WHEN signup_month BETWEEN 7 AND 10 THEN 'Early Bird'
            WHEN signup_month BETWEEN 11 AND 12 THEN 'Regular User'
            ELSE '##'
        END AS CUSTOM
from students;            






















