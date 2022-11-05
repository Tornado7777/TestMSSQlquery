CREATE TABLE Products (
	Id INT PRIMARY KEY,
	"Name" TEXT
);

INSERT INTO Products
VALUES
	(1, 'Blaproduct1'),
	(2, 'Blaproduct2'),
	(3, 'Blaproduct3'),
	(4, 'Blaproduct4'),
	(5, 'Blaproduct5');

CREATE TABLE Categories (
	Id INT PRIMARY KEY,
	"Name" TEXT
);

INSERT INTO Categories
VALUES
	(1, 'Table'),
	(2, 'Game'),
	(3, 'Mouse'),
	(4, 'Paper'),
	(5, 'Pocket');

CREATE TABLE ProductCategories (
	ProductId INT FOREIGN KEY REFERENCES Products(Id),
	CategoryId INT FOREIGN KEY REFERENCES Categories(Id),
	PRIMARY KEY (ProductId, CategoryId)
);

INSERT INTO ProductCategories
VALUES
	(2, 1),
	(2, 3),
	(3, 2),
	(1, 4);