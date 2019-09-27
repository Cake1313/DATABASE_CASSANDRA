INSERT INTO "Receipts"(receipt_id, receipt)
 VALUES (1, {
 	receipt_name:' varenyky',
 	receipt_content:'receipt for varenyky',
 	receipt_ingridient_id:1
 });
 INSERT INTO "Receipts"(receipt_id, receipt, receipt_ingridients_id)
 VALUES (1, {
 	receipt_name:' kartoshechka',
 	receipt_content:'receipt for kartoshechka',
 	receipt_ingridient_id:2
 }, 1 );
  INSERT INTO "Receipts"(receipt_id, receipt, receipt_ingridients_id)
 VALUES (1, {
 	receipt_name:' kartoshechka',
 	receipt_content:'receipt for kartoshechka',
 	receipt_ingridient_id:2
 }, 1 );
  INSERT INTO "Receipts"(receipt_id, receipt, receipt_ingridients_id)
 VALUES (1, {
 	receipt_name:' makaroshki',
 	receipt_content:'receipt for makaroshki',
 	receipt_ingridient_id:3
 }, 1 );
 INSERT INTO "Dish_table"(dish_name, dish_id, dish_feature_id) VALUES ('varenyky', 1, 1);
 INSERT INTO "Dish_table"(dish_name, dish_id, dish_feature_id) VALUES ('kartoshechka', 2, 2);
 INSERT INTO "Dish_table"(dish_name, dish_id, dish_feature_id) VALUES ('makaroshki', 3, 2);
 
 INSERT INTO "Ingridients"(ingridients_id, ingridients_list) VALUES ('1', ['flour', 'water', 'salt', 'meat'])
 INSERT INTO "Ingridients"(ingridients_id, ingridients_list) VALUES ('2', ['potato', 'water', 'salt'])
 INSERT INTO "Ingridients"(ingridients_id, ingridients_list) VALUES ('3', ['pasta', 'water', 'salt', 'cheese'])
 
 INSERT INTO "Features" (feature_id, feature_name)VALUES ('1', 'vegan');
 INSERT INTO "Features" (feature_id, feature_name)VALUES ('1', 'vegan');
 INSERT INTO "Features" (feature_id, feature_name)VALUES ('2', 'diet');
 
 SELECT * FROM Dish_table;
 SELECT * FROM Ingridients;
 SELECT * FROM Receipts;
 SELECT * FROM Features;
 
 UPDATE "Dish_table" SET dish_name = 'Ice-cream' WHERE dish_id=1 AND  dish_feature_id=2;
 UPDATE "Features" SET feature_name = 'for diabetics' WHERE feature_id=2;
 UPDATE "Ingridients" SET ingridients_list = ['pasta', 'water', 'salt', 'cheese', 'tomatos'] WHERE ingridients_id=3;
 
 DELETE dish_name FROM Dish_keyspace."Dish_table" WHERE dish_id = 1;
 DELETE ingridient_list FROM Dish_keyspace."Ingridients" WHERE ingridient_id = 3;
 DELETE feature_name FROM Dish_keyspace."Features" WHERE feature_id = 2;
