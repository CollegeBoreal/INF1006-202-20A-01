-- Mon domaine

CREATE DATABASE IF NOT EXISTS Carshop;

-- Mon utilisateur

CREATE USER IF NOT EXISTS 'abdel'@'localhost' IDENTIFIED BY 'password';
GRANT ALL ON Carshop.* TO 'abdel'@'localhost';

-- Selectionnet la base de donnees 
 
use Carshop;

-- Mes tables
  

CREATE TABLE CUSTOMERS(
  customer AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  shipping_address INT,
  purchase Date,
  PRIMARY KEY(customer),
  FOREIGN KEY(shipping_address) 
     REFERENCES SHIPPING_ADDRESS(shipping_address) 

);
  
CREATE TABLE SHIPPING_ADDRESS (
  shipping_address AUTO_INCREMENT,
  city VARCHAR(40) NOT NULL,
  state VARCHAR(30) NOT NULL,
  zip_code VARCHAR(30) NOT NULL,
  PRIMARY KEY(shipping_address)
);

CREATE TABLE PAYMENTS (
  payment INT AUTO_INCREMENT,
  payment_method VARCHAR(40) NOT NULL,
  customer VARCHAR(30),
  price INT,
  PRIMARY KEY(payment),
     FOREIGN KEY(customer)
        REFERENCES CUSTOMERS(customer),
     FOREIGN KEY(price)
        REFERENCES PRICES(price)
 );
 
CREATE TABLE  MODELS (
  model INT AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY(model)
  );
  
  
CREATE TABLE BRANDS (
  brand INT AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY(brand)
  );

  
CREATE TABLE COLOURS (
   colour INT AUTO_INCREMENT,
   name VARCHAR(30) NOT NULL,
   PRIMARY KEY(colour)
   );

CREATE TABLE PRICES (
  price INT AUTO_INCREMENT,
  value INT NOT NULL,
  PRIMARY KEY(price)
  );
  
CREATE TABLE PRODUCTS (
  model INT,
  brand INT,
  colour INT,
  product INT,
  PRIMARY KEY(model, brand, colour),
  FOREIGN KEY(model) 
     REFERENCES MODELS(model),
  FOREIGN KEY(brand) 
     REFERENCES BRANDS(brand),
  FOREIGN KEY(colour) 
     REFERENCES COLOURS(colour)
   
   );
 
