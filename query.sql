CREATE TABLE Products
(
	Id INT PRIMARY KEY,
	"Name" TEXT
);

SELECT Products."Name", Categories."Name"
FROM Products
LEFT JOIN ProductCategories
	ON Products.Id = ProductCategories.ProductId
LEFT JOIN Categories
	ON ProductCategories.CategoryId = Categories.Id;    
