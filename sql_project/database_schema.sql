-- Creating Table into Data Base			
CREATE TABLE Actor_Data 				
			(	
	actor_id INT Primary key,	
	first_name Varchar(25),	
	last_name Varchar(25),	
	last_update timestamptz	
			);	
				
CREATE TABLE Address				
(				
	address_id INT	Primary key,
	address Varchar(50),	
	address2 Varchar(50),	
	district Varchar(50),	
	city_id INT,	
	postal_code INT,	
	phone Varchar(15),	
	last_update timestamptz	
);				
				
CREATE TABLE City				
(				
	city_id INT,	
	city Varchar(100),	
	country_id INT,	
	last_update timestamptz	
);				
				
CREATE TABLE Country				
(	
	country_id INT,	
	country Varchar (10),	
	last_update timestamptz	
);				
				
CREATE TABLE Customer				
(				
	customer_id INT Primary Key,	
	store_id INT,	
	first_name Varchar (15),	
	last_name Varchar (15),	
	email Varchar (40),	
	address_id INT,	
	activebool Varchar (15),	
	create_date Date,	
	last_update timestamptz,	
	active INT,	
	initials Varchar(5)	
);				
				
CREATE TABLE Customer_Spendings				
(				
	name varchar(50),	
	amount Decimal(5,2)	
);			
				
CREATE TABLE film				
(				
	film_id INT Primary Key,	
	title Varchar(50),	
    description Varchar(100),				
    release_year INT,				
	language_id INT,	
 	rental_duration INT,	
	rental_rate Decimal(5,2),	
	length INT,              -- Duration of length in Min.	
    replacement_cost Decimal(5,2),		
	rating Varchar(10),	
	last_update timestamptz,	
	special_features Varchar(100),	
	fulltext Varchar(300)	
);				
				
CREATE TABLE Film_Actor				
(				
	actor_id INT,	
	film_id INT,	
	last_update timestamptz	
);				
				
CREATE TABLE Inventory				
(				
	inventory_id INT Primary Key,	
	film_id INT,	
	store_id INT,	
	last_update timestamptz	
);				
				
CREATE TABLE Payment				
(				
	payment_id INT Primary Key,	
	customer_id INT,	
	staff_id INT,	
	rental_id INT,	
	amount Decimal(5,2),	
	payment_date timestamptz	
);				
				
CREATE TABLE rental				
(				
	rental_id INT Primary Key,	
	rental_date timestamptz,	
	inventory_id INT,	
	customer_id INT,	
	return_date timestamptz,	
	staff_id INT,	
	last_update timestamptz	
);				
				
CREATE TABLE Staff				
(				
	staff_id INT Primary Key,	
	first_name Varchar(15),	
	last_name Varchar(15),	
	address_id INT,	
	email Varchar(30),	
	store_id INT,	
`	active Char(4),	
	username Varchar(15),	
	password Varchar(100),	
	last_update timestamptz	
);				
				
CREATE TABLE Store				
(				
	store_id INT Primary Key,	
    manager_staff_id INT,		
    address_id INT,		
    last_update timestamptz		
);				
				
				
--Imported  Data Into Tables : Address|City|Country|Customer|CuatomerSpending|film|FlmActor|Inventory|Payment|rental				
-- Manually Entering Data into the Tables
			
				
INSERT INTO Staff 
	(staff_id, first_name, last_name, address_id, email, store_id, active, username, password, last_update) 				
VALUES 				
	(1, 'Mike', 'Hillyer', 3, 'Mike.Hillyer@sakilastaff.com', 1, 'TRUE', 'Mike', '8cb2237d0679ca88db6464eac60da96345513964', '2020-05-16 20:43:11.79328+05:30'),			
	(2, 'Jon', 'Stephens', 4, 'Jon.Stephens@sakilastaff.com', 2, 'TRUE', 'Jon', '8cb2237d0679ca88db6464eac60da96345513964', '2020-05-16 20:43:11.79328+05:30');			
				
				
INSERT INTO Store 
	(store_id,manager_staff_id,address_id,last_update)				
VALUES				
	('1','1','1','2020-02-15 15:27:12+05:30'),			
	('2','2','2','2020-02-15 15:27:12+05:30');			
				
				
-- Data Cleaning
				
				
SELECT 				
	* 				
FROM 
	Actor_DATA				
WHERE				
	actor_id is Null			
or				
    first_name is Null				
or				
    last_name is Null				
or				
	last_update is Null;			
				
				
SELECT 
	* 				
FROM 
	Address				
WHERE 
	address_id is Null				
or				
	address is Null			
or				
	address2 is Null			
or				
	district is Null			
or				
	city_id is Null			
or				
	postal_code is Null			
or 				
	phone is Null			
or 				
	last_update is Null;			
				
SELECT
	* 				
FROM
	city				
WHERE
	city_id is Null			
or				
	city is Null			
or				
	country_id is Null			
or				
	last_update is Null;			
				
SELECT 				
	* 			
FROM
	Country				
WHERE
	country_id is Null			
or				
	country is Null			
or				
	last_update is Null;			
				
SELECT 
	* 				
FROM
	Customer				
WHERE 
	customer_id is Null			
or				
	store_id is Null			
or				
	first_name is Null			
or				
	last_name is Null			
or				
	Email is Null				
or				
	address_id is Null			
or 				
	activebool is Null			
or 				
	reate_date is Null			
or 				
	last_update is Null			
or 				
	active is Null			
or 				
	initials is Null;			
				
SELECT 
	* 				
FROM
	Customer_Spendings				
WHERE
	name is Null			
or				
	amount is Null;			
				
				
SELECT 
	* 				
FROM
	Film				
WHERE
	film_id is Null			
or				
	title is Null			
or				
	description is Null			
or				
	release_year is Null			
or				
	language_id is Null			
or 				
	rental_duration is Null			
or 				
	rental_rate is Null			
or 				
	length is Null			
or 				
	replacement_cost is Null			
or 				
	rating is Null			
or 				
	last_update is Null			
or 				
	special_features is Null			
or			
	fulltext is Null;				
				
				
SELECT
	* 				
FROM
	Film_Actor				
WHERE
	actor_id is Null			
or				
	film_id is Null			
or				
	last_update is Null;			
				
SELECT 
	* 				
FROM
	Inventory				
WHERE
	inventory_id is Null			
or				
	film_id is Null			
or				
	store_id is Null			
or 				
	last_update is Null;			
				
SELECT
	* 				
FROM
	Payment				
WHERE
	payment_id is Null			
or				
	customer_id is Null			
or				
	staff_id is Null			
or 				
	rental_id is Null			
or				
	amount is Null			
or 				
	payment_date is Null;			
				
SELECT 
	* 				
FROM
	Rental				
WHERE
	rental_id is Null			
or				
	rental_date is Null			
or				
	inventory_id is Null			
or 				
	customer_id is Null			
or				
	return_date is Null			
or 				
	staff_id is Null 			
or 				
	last_update is Null;			
				
				
-- Found 183 Null values				
				
Delete FROM Rental				
WHERE 
	rental_id is Null			
or				
	rental_date is Null			
or				
	inventory_id is Null			
or 				
	customer_id is Null			
or				
	return_date is Null			
or 				
	staff_id is Null 			
or 				
	last_update is Null;			
				
				
				
SELECT 
	* 				
FROM
	Staff				
WHERE	
	staff_id is Null			
or				
	first_name is Null			
or				
	last_name is Null			
or 				
	address_id is Null			
or 				
	email is Null 			
or 				
	store_id is Null			
or 				
	active is Null			
or 				
	username is Null			
or 				
	password is Null			
or 				
	last_update is Null;			
				
SELECT 
	*				
FROM
	Store				
WHERE
	store_id is Null			
or 				
	manager_staff_id is Null			
or 				
	address_id is Null			
or 				
	last_update is Null;			
				
				
#NAME?				
				
				
-- 1. Top 10 Most Rented Movies				
				
				
SELECT 				
	f.Title As Movies, 			
	count(rental_ID) As Total_Rental			
FROM 				
	Rental r			
Inner Join 				
	Inventory i ON r.Inventory_ID = i.Inventory_ID			
Inner Join				
	Film f ON f.Film_Id = i.Film_Id			
Group By 				
	f.Title		
order By 				
	Total_Rental Desc			
Limit 10;				
				
				
-- 2. Top-Spending Customers				
				
				
				
SELECT				
	Name As Customer_Name,			
 	Sum(Amount) As Total_spendings			
FROM 				
	Customer_Spendings			
GROUP BY				
	Customer_Name			
orDER BY 				
	Total_spendings DESC;			
				
-- 3. Most Active Cities or Locations				
				
				
SELECT				
    c.City,				
 	c.City_ID,			
	Sum(Amount) AS Total_spendings			
FROM				
    City c				
INNER JOIN				
    Address a ON c.city_id = a.city_id				
INNER JOIN				
    Customer x ON a.address_id = x.address_id				
INNER JOIN 				
	Payment p ON x.Customer_ID = p.Customer_ID			
GROUP BY 				
	c.City, c.City_ID			
orDER BY 				
	Total_spendings DESC;			
				
				
--4. Staff Performance				
				
SELECT 				
	s.staff_id,			
	First_name || ' ' || Last_name As Staff_Name,			
	Sum(amount) As Total_sales			
FROM				
	Staff s			
INNER JOIN				
	Payment p ON s.staff_id = p.staff_id			
Group By 				
	s.staff_id,			
	Staff_Name			
order BY 				
	Total_sales DESC;			
				
-- 5. Inactive Customers				
				
SELECT				
	c.Customer_ID,			
	c.First_name,			
	c.Last_name,			
	c.Email,			
	Max(r.rental_Date) as Last_rental_date			
FROM				
	Customer c			
INNER JOIN				
	Rental r ON c.Customer_ID = r.Customer_ID			
GROUP BY				
	c.Customer_ID, c.First_name,  c.Last_name,c.Email			
HAVING				
	Max(r.rental_Date)  < Current_date - INTERVAL '6 months'			
	or			
	Max(r.rental_Date) is Null;			
				
				
				
-- 6. Busy Rental Hours				
SELECT * FROM rental				
SELECT				
	TO_CHAR (Rental_date, 'HH24:MI') As Time,			
	Count(*) As Rentals			
FROM				
	Rental			
GROUP BY				
	Time			
orDER BY Rentals DESC;				
				
-- 7. High-Cost Films vs. Rentals				
				
SELECT 				
	f.Film_ID,			
	f.Title,			
	f.Replacement_cost,			
	Count(r.rental_ID) As Total_rentals			
FROM 				
	Film f			
INNER JOIN				
	Inventory i ON f.Film_ID = i.Film_ID			
INNER JOIN				
	Rental r ON i.Inventory_ID = r.Inventory_ID			
GROUP BY 				
	f.Film_ID, f.Title, f.Replacement_cost			
orDER BY				
	f.Replacement_cost DESC,			
	Total_rentals;			
				
--8. Monthly Income Trends				
				
SELECT				
	TO_CHAR(Payment_Date,'YYYY') As Year,			
	TO_CHAR(Payment_Date,'Month') As Month,			
	Sum(amount) As Revenue			
FROM 				
	Payment			
GROUP BY 				
	 Year,Month;			
				
				
				
--9. Store-wise Rental Comparison				
				
SELECT				
 	 c.Store_ID As Store,			
	 Count(r.rental_ID) As Total_rental,			
	 Sum(p.Amount) As Total_Revenue			
FROM 				
	Customer c			
INNER JOIN				
	Rental r ON C.Customer_ID = r.Customer_ID			
INNER JOIN				
	Payment p ON r.Rental_ID = p.Rental_ID			
GROUP BY 				
	 c.Store_ID			
orDER BY				
	Total_rental DESC,			
	Total_Revenue DESC;			
				
-- 10. Customer Rental History Patterns				
SELECT 				
    c.customer_id,				
    c.first_name || ' ' || c.last_name As customer_name,				
    COUNT(r.rental_id) As total_rentals				
FROM 				
	customer c			
LEFT JOIN 				
	rental r ON c.customer_id = r.customer_id			
GROUP BY 				
	c.customer_id, customer_name			
orDER BY 				
	total_rentals DESC;			
