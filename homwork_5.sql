CREATE TABLE products (    
	id SERIAL NOT NULL PRIMARY KEY,    
	productName VARCHAR(30) NOT NULL,   
	 company VARCHAR(20) NOT NULL,    
	 productCount INT DEFAULT 0,    
	 price NUMERIC NOT NULL,    
	 isDiscounted BOOLEAN);

	 INSERT INTO products (productName, company, productCount, price, isDiscounted) 
	 VALUES('iPhone X', 'Apple', 3, 76000, false),
	 ('iPhone 8', 'Apple', 2, 71000, true),
	 ('iPhone 7', 'Apple', 5, 42000, true),
	 ('Galaxy S9', 'Samsung', 2, 46000, false),
	 ('Galaxy S8 Plus', 'Samsung', 1, 56000, true),
	 ('Desire 12', 'HTC', 5, 28000, true),
	 ('Nokia 9', 'HMD Global', 6, 38000, true);

	 1) SELECT * FROM products WHERE company NOT IN('HTC');
	 2) SELECT * FROM products  WHERE company ='Apple' AND (price<700000);
	 3) SELECT * FROM products WHERE price>46000;
	 4) SELECT productname, price FROM products ORDER BY productname DESC, price LIMIT 2;
	 5) SELECT productname FROM products WHERE price= (SELECT MIN(price) FROM products);
	 6) SELECT * FROM products WHERE isdiscounted = true;
	 7) SELECT * FROM products WHERE isdiscounted = false;
	 8) SELECT productname,price FROM products ORDER BY price DESC;
	 9) SELECT company, SUM(price) FROM products GROUP BY company;
	 9) SELECT SUM(price) FROM products;
	 10) SELECT company, productcount FROM products WHERE productcount <=2 GROUP BY company, productcount;
