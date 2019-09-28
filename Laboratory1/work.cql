INSERT INTO dish_keyspace.features (feature_name,feature_id ) VALUES ('diet',1);
INSERT INTO dish_keyspace.features (feature_name,feature_id ) VALUES ('vegan',2);
INSERT INTO dish_keyspace.features (feature_name,feature_id ) VALUES ('all',3);

SELECT feature_name FROM features;
SELECT feature_id FROM features;

INSERT INTO dish_keyspace.receipts (receipt, receipt_ingridient_id, receipt_id) VALUES ({id:1, receipt_content:'receipt for dish'}, 1, 1); 
INSERT INTO dish_keyspace.receipts (receipt, receipt_ingridient_id, receipt_id) VALUES ({id:2, receipt_content:'receipt for dish'}, 2, 2); 
INSERT INTO dish_keyspace.receipts (receipt, receipt_ingridient_id, receipt_id) VALUES ({id:3, receipt_content:'receipt for dish'}, 3, 3); 
INSERT INTO dish_keyspace.receipts (receipt, receipt_ingridient_id, receipt_id) VALUES ({id:4, receipt_content:'receipt for dish'}, 4, 4); 
INSERT INTO dish_keyspace.receipts (receipt, receipt_ingridient_id, receipt_id) VALUES ({id:5, receipt_content:'receipt for dish'}, 5, 5); 

SELECT receipt FROM receipts;
SELECT receipt_ingridient_id FROM receipts;
SELECT receipt_id FROM  receipts;

INSERT INTO dish_keyspace.ingridients (ingridient_id, ingridient_list) VALUES(1, ['flour', 'water', 'salt', 'meat']);
INSERT INTO dish_keyspace.ingridients (ingridient_id, ingridient_list) VALUES(2, ['flour', 'egg', 'butter', 'meat']);
INSERT INTO dish_keyspace.ingridients (ingridient_id, ingridient_list) VALUES(3, ['flour', 'water', 'salt', 'meat']);
INSERT INTO dish_keyspace.ingridients (ingridient_id, ingridient_list) VALUES(4, ['egg', 'water', 'salt', 'ingr-2']);
INSERT INTO dish_keyspace.ingridients (ingridient_id, ingridient_list) VALUES(5, ['flour', 'water', 'ingr-1', 'meat']);

SELECT ingridient_id FROM ingridients;
SELECT ingridient_list FROM ingridients;

INSERT INTO dish_keyspace.dish (dish_name, dish_id, dish_feauture_id, dish_receipt_id) VALUES ('dish-1', '1', 1, 1);
INSERT INTO dish_keyspace.dish (dish_name, dish_id, dish_feauture_id, dish_receipt_id) VALUES ('dish-2', '2', 2, 1);
INSERT INTO dish_keyspace.dish (dish_name, dish_id, dish_feauture_id, dish_receipt_id) VALUES ('dish-2', '3', 3, 3);
INSERT INTO dish_keyspace.dish (dish_name, dish_id, dish_feauture_id, dish_receipt_id) VALUES ('dish-2', '4', 4, 2);
INSERT INTO dish_keyspace.dish (dish_name, dish_id, dish_feauture_id, dish_receipt_id) VALUES ('dish-2', '5', 5, 2);

SELECT dish_name FROM dish;
SELECT dish_feauture_id FROM dish;
SELECT dish_id FROM dish;
SELECT dish_receipt_id FROM dish;
//UPDATES

UPDATE dish_keyspace.dish SET dish_name = 'another dish' WHERE dish_id='2';
SELECT dish_name FROM dish_keyspace.dish WHERE  dish_id = '2';

UPDATE dish_keyspace.dish SET dish_feature_id = 1 WHERE dish_feature_id = 2 ;
SELECT dish_feature_id FROM dish_keyspace.dish WHERE  dish_feature_id = 2;

UPDATE dish_keyspace.dish SET dish_name = 'dish feature 3' WHERE dish_feature_id='3';
SELECT dish_name FROM dish_keyspace.dish WHERE  dish_feature_id = '3';


UPDATE dish_keyspace.ingridients SET ingridients_list = ['water', 'salt', 'meat'] WHERE ingridient_id='2';
SELECT ingridients_list FROM dish_keyspace.ingridients WHERE  ingridient_id = '2';

UPDATE dish_keyspace.features SET dish_feature_id = 1 WHERE dish_feature_id = 2 ;
SELECT dish_feature_id FROM dish_keyspace.dish WHERE  dish_feature_id = 2;

UPDATE dish_keyspace.receipts SET receipt_ingridient_id = 3 WHERE receipt_id=2;
SELECT receipt_ingridient_id FROM dish_keyspace.receipts WHERE  receipt_id = 2;

SELECT dish_name FROM dish_keyspace.dish WHERE dish_feauture_id = 3;

SELECT receipt FROM dish_keyspace.receipts WHERE receipt_id = 1 AND receipt_ingridient_id = 1;

SELECT feature  FROM dish_keyspace.features WHERE feauture_id = 1;


DELETE receipt FROM dish_keyspace.receipts WHERE receipt_id=5 AND receipt_ingridient_id=3;

DELETE dish FROM dish_keyspace.ingridient_list WHERE ingridient_id=2;

DELETE groups FROM dish_keyspace.dish_name WHERE dish_id=5 AND dish_receipt_id=5; 
