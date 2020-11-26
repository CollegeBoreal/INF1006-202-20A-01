-- Mon domaine

CREATE DATABASE carshop;

-- Mon utilisateur

CREATE USER 'fadde'@'%' IDENTIFIED BY 'password';
GRANT ALL ON carshop.* TO 'fadde'@'%';

-- Selectionnet la base de donnees 
 
use carshop;

-- Mes tables
  
   
 CREATE TABLE PRICES (
  price INT AUTO_INCREMENT,
  value INT NOT NULL,
  currency VARCHAR(30) NOT NULL,
  PRIMARY KEY(price)
  );
  
  
  
CREATE TABLE  MODELS (
  model INT AUTO_INCREMENT,
  name VARCHAR(40) NOT NULL,
  PRIMARY KEY(model)
  );
  
  
CREATE TABLE MAKES (
  make INT AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY(make)
  );


  
CREATE TABLE COLOURS (
   colour INT AUTO_INCREMENT,
   name VARCHAR(30) NOT NULL,
   PRIMARY KEY(colour)
   );


  
CREATE TABLE PRODUCTS (
  model INT,
  make INT,
  colour INT,
  price INT,
  product INT,
  PRIMARY KEY(model, make, colour, price),
  FOREIGN KEY(model) 
     REFERENCES MODELS(model),
  FOREIGN KEY(make) 
     REFERENCES MAKES(make),
  FOREIGN KEY(colour) 
     REFERENCES COLOURS(colour),
 FOREIGN KEY(price)
        REFERENCES PRICES(price)
   
   );
 
 CREATE TABLE SHIPPING_ADDRESS (
  shipping_address INT AUTO_INCREMENT,
  city VARCHAR(40) NOT NULL,
  state VARCHAR(30) NOT NULL,
  zip_code VARCHAR(30) NOT NULL,
  PRIMARY KEY(shipping_address)
);

 
 
 CREATE TABLE CUSTOMERS (
  customer INT AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  purchase Date,
  shipping_address INT,
  price INT,
  PRIMARY KEY(customer),
  FOREIGN KEY(shipping_address) 
     REFERENCES SHIPPING_ADDRESS(shipping_address),
  FOREIGN KEY(price)
     REFERENCES PRODUCTS(price)
  );
  
  
CREATE TABLE PAYMENTS (
  payment INT AUTO_INCREMENT,
  payment_method VARCHAR(40) NOT NULL,
  customer INT,
  PRIMARY KEY(payment),
     FOREIGN KEY(customer)
        REFERENCES CUSTOMERS(customer)
 );
