CREATE KEYSPACE IF NOT EXISTS Dish_keyspace
WITH replication = {
	'class' : 'SimpleStrategy',
	'replication_factor' : 2
};
USE Dish_keyspace;


CREATE TYPE receipt_type (
	receipt_name text,
	receipt_content text,
	receipt_ingridients text
);

CREATE TABLE IF NOT EXISTS "Dish_table" (
	dish_name text,
	dish_receipt FROZEN<receipt_type>,
	dish_id int,
	dish_feature set<text>,
	PRIMARY KEY ((dish_id))	
);

CREATE TABLE IF NOT EXISTS "Receipts" (
	receipt_id int,
	receipt_ingridients list<text>,
	PRIMARY KEY (receipt_id)
);

CREATE TABLE IF NOT EXISTS "Ingridients" (
	ingridients_id int,
	ingridients_list list<text>,
	PRIMARY KEY (ingridients_id) 
);

CREATE TABLE IF NOT EXISTS "Features" (
	feature_id int,
	feature_name set<text>,
	PRIMARY KEY (feature_id) 
);
