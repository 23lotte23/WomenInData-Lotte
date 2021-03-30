/* Create relationable db (2 tables) */

CREATE TABLE users  
  (id  INT AUTO_INCREMENT ,
  first_name VARCHAR (100), 
  last_name   VARCHAR (100), 
  email VARChar (100), 
  postcode  VARCHAR(10),
PRIMARY KEY (id));

CREATE TABLE sales
  (sale_no INT AUTO_INCREMENT,
  title  VARCHAR (100),
  artist VARCHAR (100),
  cust_id INT,
  FOREIGN KEY (cust_id) REFERENCES users (id));
  
/*insert data into db*/
INSERT INTO users (first_name, last_name, email, postcode) 
VALUES ("Hugh", "Jones", "Hughjones@mail.com", "WV3 4PR"),
("Billy", "Liar", "Billyliar@mail.com", "SY13 4HD"),
("Andy", "Wagstaff", "Andywagstaff@mail.com", "b5 6HQ"),
("Sheila", "Smith", "Sheilasmith@mail.com", "TF7 7FT"),
("Albi", "Jackson", "Albijackson@mail.com", "CA8 7PG");

INSERT INTO sales (title, album, cust_id)
VALUES ('Nevermind', 'Nirvana', '5'), ('Revolver', 'Beatles', '1'), ('21', 'Adele', '3');

/*join the tables*/

SELECT users.id, users.first.name, users.last_name, users.email, users.postcode
FROM users
INNER JOIN sales ON users.id =sales.cust_id;

/*SHOW users and table structures*/

DESCRIBE  users ;
DESCRIBE sales;
SELECT * FROM users;
SELECT * FROM sales;

/*Run a simple query searching one table*/

SELECT * from users WHERE first_name = Albi;

/*Run a complex query demonstrate the relations between the 2 tables*/

SELECT * FROM users, sales
WHERE users.id = sales.id
AND sales.title = "nevermind";

/*Filter data using comparison operators*/

SELECT * from users WHERE id < 3;





 
