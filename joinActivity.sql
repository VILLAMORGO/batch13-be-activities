CREATE TABLE students (
	id integer PRIMARY KEY,
	first_name character varying(255) NOT NULL,
	middle_name character varying(255) DEFAULT 'blank',
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

CREATE TABLE notes (
	id integer PRIMARY KEY,
	body character varying(255) NOT NULL,
	student_id integer
);

INSERT INTO notes (id, body, student_id)
VALUES

	(1, 'A little progress each day adds up to big results.', 3),
	(3, 'Fall seven times, stand up eight.', null),
	(2, 'Every person you meet knows something you don’t; learn from them.', 3),
	(4, 'It takes courage to grow up and become who you really are.', 1),
	(5, 'Opportunities don’t happen. You create them.', 2),
	(7, 'Whatever you are, be a good one.', 4),
	(8, 'The noblest question in the world is: What good may I do in it?', null),
	(6, 'The only place where success comes before work is in the dictionary.', 2),
	(10, 'Great things are done by a series of small things brought together.', 4),
	(9, 'The way to get started is to quit talking and begin doing.', 5);
	
    
SELECT s.id, s.first_name, s.middle_name, s.last_name, s.age, s.location, n.body, n.student_id
FROM students AS s
INNER JOIN notes AS n
ON s.id = n.student_id;

SELECT s.id, s.first_name, s.middle_name, s.last_name, s.age, s.location, n.body, n.student_id
FROM students AS s
LEFT JOIN notes AS n
ON s.id = n.student_id;

SELECT s.id, s.first_name, s.middle_name, s.last_name, s.age, s.location, n.body, n.student_id
FROM students AS s
RIGHT JOIN notes AS n
ON  n.student_id = s.id;

SELECT s.id, s.first_name, s.middle_name, s.last_name, s.age, s.location, n.body, n.student_id
FROM students AS s
FULL JOIN notes AS n
ON s.id = n.student_id;