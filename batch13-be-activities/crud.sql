CREATE TABLE students (
	id integer PRIMARY KEY,
	first_name character varying(255) NOT NULL,
	middle_name character varying(255),
	last_name character varying(255) NOT NULL,
	age integer,
	location character varying(255)
);

INSERT INTO students (id, first_name, last_name, age, location)
VALUES 
	(1, 'Juan', 'Cruz', 18, 'Manila'),
	(2, 'Anne', 'Wall', 20, 'Manila'),
	(3, 'Theresa', 'Joseph', 21, 'Manila'),
	(4, 'Issac', 'Gray', 19, 'Laguna'),
	(5, 'Zack', 'Matthews', 22, 'Marikina'),
	(6, 'Finn', 'Lam', 25, 'Manila');
	
UPDATE students SET first_name = 'Ivan', middle_name= 'Ingram', last_name='Howard', age='25', location='Bulacan' WHERE id=1;

DELETE FROM students WHERE id='6';

SELECT COUNT (*) AS count_of_students FROM students;

SELECT * FROM students WHERE location='Manila';

SELECT age, AVG(age) FROM students;

SELECT * FROM students ORDER BY age DESC;
