
-- SELECT stu_fname,stu_lname from students;
-- TODO:-- CONCAT() USED TO CONCAT TWO OR MORE  COLUMNS , IT CAN TAKE ANY NUMBER OF COLUMNS AS PARAMETER
-- SELECT CONCAT(stu_fname," ",stu_lname) AS FullNAME from students;

-- SELECT CONCAT(stu_fname," ",stu_lname) AS FullNAME, login_count from students;

-- SELECT CONCAT(stu_fname," ",stu_lname," AND THE LOGIN COUNT IS ", login_count) AS "Full NAME" from students;

-- SELECT CONCAT("The user login count is ",login_count," and the course count is ",course_count) as "Site Info of Users" from students;

-- TODO:-- **NOTE** REPLACE() USED TO REPLACE STRING OR CHARACTERS FROM A COLUMN, **SYNTAX** 
-- REPLACE(column_name," string or char wih you need to replace ", "replacement string or char")

-- SELECT REPLACE(stu_fname,'a','@') as "Fun Name" from students;

-- TODO:SUBSTRING() USED TO GET SUBSTRING OF STRINGS **SYNTAX** 
-- SUBSTRING(column_name,starting position,no of characters to display from the start position ) 

-- SELECT SUBSTRING(email,1,7) as TRUNCATED from students;
-- SELECT CONCAT(SUBSTRING(email,1,7),"...") as TRUNCATED from students;

-- TODO:REVERSE() USED TO REVERSE THE DATA OF THE COLUMN

-- SELECT login_count,REVERSE(login_count) as REVERSED from students;

-- TODO:CHAR_LENGTH() and LENGTH() USE TO GET THE LENGTH OF THE STRING
-- SELECT email,LENGTH(email) as LENGTHS from students;
-- SELECT email,CHAR_LENGTH(email) as LENGTHENING from students;

-- TODO:UPPER() and LOWER() USED TO CONVERT THE STRING TO UPPER AND LOWER CASE
-- SELECT UPPER(stu_fname) as UPPER,LOWER(stu_lname) as LOWER from students;



