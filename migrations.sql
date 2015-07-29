CREATE TABLE couponlists (id SERIAL PRIMARY KEY, title VARCHAR(255), description VARCHAR(255), product VARCHAR(255), discount DECIMAL, exp_date DATE);
INSERT INTO couponlists (title, description, product, discount, exp_date) VALUES ('Beer', 'buy one get one', 'heinekin', .83, '2015-08-31');
INSERT INTO couponlists (title, description, product, discount, exp_date) VALUES ('magazine', 'buy one get three', 'rolling stone', .93, '2015-08-31');
INSERT INTO couponlists (title, description, product, discount, exp_date) VALUES ('Tacos', 'buy one get three', 'steak tacos', .50, '2015-08-31');
INSERT INTO couponlists (title, description, product, discount, exp_date) VALUES ('paper towls', 'buy two get three', 'towels', .25, '2015-08-31');
INSERT INTO couponlists (title, description, product, discount, exp_date) VALUES ('Bikes', 'Buy one bike get two free', 'bicycles', 1.50, '2015-08-31');
