CREATE KEYSPACE IF NOT EXISTS dish_keyspace
WITH replication = {
	'class' : 'SimpleStrategy',
	'replication_factor' : 2
};
USE dish_keyspace;

CREATE TABLE IF NOT EXISTS dish_keyspace.dish (
	dish_name TEXT,
	dish_id INT,
	dish_feauture_id INT,
	dish_receipt_id INT,
	PRIMARY KEY(dish_id)	
);

CREATE TABLE IF NOT EXISTS dish_keyspace.ingridients (
	ingridient_id INT,
	ingridient_list list<text>,
	PRIMARY KEY(ingridient_id)
);
CREATE TYPE IF NOT EXISTS receipt_content (
	id INT,
	receipt_content TEXT
);
CREATE TABLE IF NOT EXISTS dish_keyspace.receipts (
		receipt FROZEN<receipt_content>,
		receipt_id INT,
		receipt_ingridient_id INT,
		PRIMARY KEY(receipt_id)
);
CREATE TABLE IF NOT EXISTS dish_keyspace.features (
	feature_name TEXT,
	feature_id INT,
	PRIMARY KEY(feature_id)
);
