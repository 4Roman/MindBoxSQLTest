CREATE TABLE Products
(
	Id INT PRIMARY KEY,
	"Name" TEXT
);
CREATE TABLE Categories 
(
	Id INT PRIMARY KEY,
	"Name" TEXT
);
INSERT INTO Products
VALUES
	(1, 'Notebook'),
	(2, 'Multimeter'),
    (3, 'Broom'),
    (4, 'Rag'),
	(5, 'Drills'),
	(6, 'Closet');
INSERT INTO Categories
VALUES
	(1, 'Electronics'),
	(2, 'Entertainment'),
    (3, 'Tools'),
    (4, 'Cleaning'),
	(5, 'Consumables');
CREATE TABLE ProductCategories 
(
	ProductId INT FOREIGN KEY REFERENCES Products(Id),
	CategoryId INT FOREIGN KEY REFERENCES Categories(Id),
	PRIMARY KEY (ProductId, CategoryId)
);
INSERT INTO ProductCategories
VALUES
	(1, 1),
	(1, 2),
    (2, 1),
    (2, 3),
    (3, 3),
    (3, 4),
    (4, 4),
    (4, 5),
    (5, 3),
    (5, 5);