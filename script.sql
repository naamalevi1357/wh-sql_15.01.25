-- a
CREATE TABLE nutritions(
nutrition_id INT PRIMARY KEY NOT NULL,
name TEXT NOT NULL,
claories INT NOT NULL,
fats INT NOT NULL,
Suger INT NOT NULL,
id_product INT, FOREIGN KEY (id_product)REFERENCES products(id_product))

CREATE TABLE products(
product_id INT PRIMARY KEY NOT NULL,
name TEXT NOT NULL,
price INT NOT NULL,
id_category INT, FOREIGN KEY (id_category)REFERENCES category(id_category))

CREATE TABLE category(
category_id INT PRIMARY KEY NOT NULL,
name TEXT NOT NULL)

CREATE TABLE (
order_id INT PRIMARY KEY NOT NULL,
date_time INT NOT NULL,
address TEXT NOT NULL,
customer_name TEXT NOT NULL,
customer_ph INT NOT NULL,
price_total INT NOT NULL)


CREATE TABLE products_orders (
order_id INT NOT NULL,
product_id INT NOT NULL,
amount INT NOT NULL,
PRIMARY KEY (order_id, product_id)
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (product_id) REFERENCES products(product_id))


