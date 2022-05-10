/*
    The Taboola take-home assessment following phone call with Steve Jambor
    Question 3 (MySQL):
        Design two tables, products and product price history.
        Product tables should include name and category of product
        PPH table refers to product table and should include price info
        and the start date and/or end date for product
        Current price of a product will have no end date. 
        List the table creation scripts for these two tables and a sample
        query to join the two tables together

*/

-- Create the tables
CREATE TABLE Products (
    productID INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(30) NOT NULL,
    PRIMARY KEY(productID)
);

CREATE TABLE ProductPriceHistory (
    productID INT,
    priceInfo DECIMAL(10, 2),
    priceStartDate DATE NOT NULL,
    priceEndDate DATE,
    PRIMARY KEY (productID, priceStartDate),
    FOREIGN KEY (productID) REFERENCES Products(productID) ON DELETE CASCADE
);

-- Sample inserts to Products
INSERT INTO Products VALUES (01, 'Soap', 'Hygiene');
INSERT INTO Products VALUES (02, 'Cereal', 'Food');

-- Sample inserts to ProductPriceHistory
INSERT INTO ProductPriceHistory VALUES (01, 3.99, '2020-09-02', '2021-06-04');
INSERT INTO ProductPriceHistory VALUES (02, 1.99, '2019-07-14', '2022-02-19');
INSERT INTO ProductPriceHistory VALUES (02, 10.99, '2022-02-20')

-- Merge tables using a WHERE clause
SELECT p.productID, p.name, p.category, pph.priceInfo,
       pph.priceStartDate, pph.priceEndDate
FROM Products p, ProductPriceHistory pph
WHERE p.productID = pph.productID;
