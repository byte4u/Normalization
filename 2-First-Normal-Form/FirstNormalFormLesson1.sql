/* ****************************************************** */
/* **************** First normal form ******************* */
/* ****************************************************** */
-- ---------------------------------------------------------
/* ***** Delete Customer ***** */
DROP TABLE customer;
-- ---------------------------------------------------------
/* ***** Create Customer table ***** */
CREATE TABLE IF NOT EXISTS customer
(
   customerId INT AUTO_INCREMENT PRIMARY KEY,
   name VARCHAR(55),
   genre ENUM('M', 'F'),
   phone VARCHAR(75),
   address VARCHAR (255)
)
CHARACTER SET utf8
COLLATE utf8_general_ci;
-- ---------------------------------------------------------
/* ***** Insert multiple records ***** */
INSERT INTO 
customer (name, genre, phone, address) 
VALUES 
('Joseph', 'M', '(213)211-1212, (213)211-3636', '455 Park, Western Heights, Los Angeles, CA 90001'),
('Robert', 'M', '(323)222-2312', '328 Daly, Westlake, Los Angeles, CA 90002'),
('Kate', 'F', '(206)355-6899, (206)355-6633', '200 Spring, First Hill, Seattle, WA 98104'),
('Jennifer', 'F', '(206)556-2666', '30 Spring, First Hill, Seattle, WA 98104'),
('Monica', 'F', '(206)442-9669', '45 Spring, First Hill, Seattle, WA 98104'),
('James', 'M', '(213)886-4545', '415 Park, Western Heights, Los Angeles, CA 90001'),
('Jolie', 'F', '(213)244-4228', '310 Park, Western Heights, Los Angeles, CA 90001'),
('Richard', 'M', '(323)323-1998, (323)323-1874', '38 Daly, Westlake, Los Angeles, CA 90002'),
('Vanessa', 'F', '(206)999-0098, (206)999-0555', '215 Spring, First Hill, Seattle, WA 98104');
-- ---------------------------------------------------------
/* ***** Shows all records ***** */
SELECT * FROM customer;
-- ---------------------------------------------------------
/* ***** Counts how many customers there are ***** */
SELECT COUNT(name) AS 'Customers Qty' 
FROM customer;
-- ---------------------------------------------------------
/* ***** Count how many phones there are ***** */
SELECT COUNT(phone) AS 'Phones' 
FROM customer;
-- ---------------------------------------------------------
/* ***** Shows all female customers ***** */
SELECT genre, COUNT(genre) 
FROM customer
GROUP BY genre;
-- ---------------------------------------------------------
/* ***** Shows customers all Seattle customers ***** */
SELECT address, COUNT(address) 
FROM customer
GROUP BY address;
-- ---------------------------------------------------------

