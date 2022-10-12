DROP DATABASE AGENTSONCLOUD;

create database AGENTSONCLOUD;

use AGENTSONCLOUD;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    is_deleted TINYINT DEFAULT 0,
    PRIMARY KEY (user_id)
);



CREATE TABLE Products(
    product_id INT AUTO_INCREMENT NOT NULL,
    picUrlProd VARCHAR(255),
    title VARCHAR (255),
    product_name VARCHAR(255),
    price INT,
    description TEXT,
    is_deleted TINYINT DEFAULT 0,
    PRIMARY KEY (Product_id)
);




CREATE TABLE cart (
    cart_id INT AUTO_INCREMENT NOT NULL,
    product_id int,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    user_id int,
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    quantity int,
    price_checkout int,
    is_deleted TINYINT DEFAULT 0,
    PRIMARY KEY (cart_id)
);




CREATE TABLE favorite_list (
    favorite_list INT AUTO_INCREMENT NOT NULL,
    product_id int,
    user_id int,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    price_checkout int,
    is_deleted TINYINT DEFAULT 0,
    PRIMARY KEY (favorite_list)
);