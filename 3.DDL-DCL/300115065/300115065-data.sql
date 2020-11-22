- Dans le domaine

use carshop;

-- Données de la table customers

INSERT INTO CUSTOMERS (name, purchase) VALUES ('Anna_Maeid', '2020-10-03');
INSERT INTO CUSTOMERS (name, purchase) VALUES ('Trace_Robert', '2020-01-06');
INSERT INTO CUSTOMERS (name, purchase) VALUES ('Katti_Sheina', '2019-12-13');

-- Données de la table shipping address

INSERT INTO SHIPPING_ADDRESS (city, state, zip_code) VALUES ('Toronto', 'ON','M1S3K2');
INSERT INTO SHIPPING_ADDRESS (city, state, zip_code) VALUES ('Calgary', 'AB','S9K3L2');
INSERT INTO SHIPPING_ADDRESS (city, state, zip_code) VALUES ('Ottawa', 'ON','N1S4Z1');

-- Données de la table payments

INSERT INTO PAYMENTS (payment_method) VALUES ('Visa');
INSERT INTO PAYMENTS (payment_method) VALUES ('Debit');
INSERT INTO PAYMENTS (payment_method) VALUES ('MC');

-- Données de la table prices

INSERT INTO PRICES (value, currency) VALUES (2040000, 'CA_Dollar');
INSERT INTO PRICES (value, currency) VALUES (3500000, 'US_Dollar');
INSERT INTO PRICES (value, currency) VALUES (4500000, 'Euro');

-- Données de la table models

INSERT INTO MODELS (name) VALUES ('124_Spider');
INSERT INTO MAKES (name) VALUES ('1500_Club_Coupe');
INSERT INTO MAKES (name) VALUES ('1500_Classic_Crew_Cab');

-- Données de la table makes

INSERT INTO MAKES (name) VALUES ('Ram');
INSERT INTO MAKES (name) VALUES ('Audi');
INSERT INTO MAKES (name) VALUES ('BMW');

-- Données de la table colours

INSERT INTO COLOURS (name) VALUES ('Black');
INSERT INTO COLOURS (name) VALUES ('Blue');
INSERT INTO COLOURS (name) VALUES ('Red');
INSERT INTO COLOURS (name) VALUES ('White');

-- Données de la table products

INSERT INTO PRODUCT ( model, make, colour, product ) VALUES ( 1, 1, 2, 100);
INSERT INTO PRODUCT ( model, make, colour, product ) VALUES ( 2, 1, 3, 101);
INSERT INTO PRODUCT ( model, make, colour, product ) VALUES ( 1, 3, 1, 102);
INSERT INTO PRODUCT ( model, make, colour, product ) VALUES ( 3, 2, 4, 103);
