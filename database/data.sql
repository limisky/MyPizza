USE `pizza` ;

INSERT INTO `component` VALUES (1,'tomato',20,30,NULL),(2,'spinach',20,50,NULL),(3,'red onion',20,20,NULL),(4,'cilantro',20,30,NULL),(5,'peanut ',20,30,NULL),(6,'pineapple',20,40,NULL),(7,'jalapeno peppers',20,20,NULL),(8,'mushroom',20,30,NULL),(9,'Parmesan',20,50,NULL),(10,'Mozzarella',20,50,NULL),(11,'Fontina',20,50,NULL),(12,'blue cheese',20,50,NULL),(13,'white cheese',20,50,NULL),(14,'yogurt',20,40,NULL),(15,'curried chicken',20,50,NULL),(16,'ham',20,30,NULL),(17,'salami',20,40,NULL),(18,'BBQ chicken',20,30,NULL),(19,'bacon',20,20,NULL);
INSERT INTO `product` VALUES (1,'Four Cheese',80,'Tomato base, parmesan, blue cheese, fontina & mozzarella','http://www.pyrobeijing.com/sites/default/files/styles/colorbox/public/495Z6813_0.JPG',8),(2,'Spinach & Cheese',85,'Our own special white cheese blend, covered in saut��ed spinach, mozzarella and tomato','http://www.pyrobeijing.com/sites/default/files/styles/colorbox/public/495Z6802_0.JPG',11),(3,'Curry Chicken',95,'Tomato base, mozzarella, curried chicken, and red onion; then topped with cilantro, spiced peanut bits and drizzled with yogurt.','http://www.pyrobeijing.com/sites/default/files/styles/colorbox/public/Curry-Chicken-Pizza%281000PXx667PX%29_0.JPG',22),(4,'Hawaiian',90,'Tomato base, ham, fresh pineapple & mozzarella','http://www.pyrobeijing.com/sites/default/files/styles/colorbox/public/495Z6772.JPG',1),(5,'Hot N\' Spicy',90,'Tomato, mozzarella, red onion, mushroom, salami & jalapeno peppers','http://www.pyrobeijing.com/sites/default/files/styles/colorbox/public/495Z6813_1.JPG',3),(6,'BBQ Chicken',95,'Tomato base, BBQ chicken, red onion, bacon, cilantro (coriander) & mozzarella','http://www.pyrobeijing.com/sites/default/files/styles/colorbox/public/495Z6842.JPG',11);
INSERT INTO `product_component` VALUES (1,1,1),(1,9,1),(1,12,1),(1,11,1),(1,10,1),(2,13,1),(2,2,1),(2,10,1),(2,1,1),(3,1,1),(3,10,1),(3,15,1),(3,3,1),(3,4,1),(3,5,1),(3,14,1),(4,1,1),(4,16,1),(4,6,1),(4,10,1),(5,1,1),(5,10,1),(5,3,1),(5,8,1),(5,17,1),(5,7,1),(6,1,1),(6,18,1),(6,3,1),(6,19,1),(6,4,1),(6,10,1);
INSERT INTO `users` VALUES ('admin','admin',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `user_roles` VALUES ('admin','admin');