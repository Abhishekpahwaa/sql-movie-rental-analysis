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
				
				
