USE TeeMee_Database
GO

CREATE TABLE Products (
    Id VARCHAR(10) PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
	Image NVARCHAR(255) NOT NULL,
    ImageList NVARCHAR(255) NOT NULL,
    Price DECIMAL(18,2) NOT NULL,
	Category NVARCHAR(255) NOT NULL,
	Discount INT NOT NULL,
	Star DECIMAL(5,1) NOT NULL,
	Description NVARCHAR(255) NOT NULL
);


CREATE TABLE Categories (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(255) NOT NULL,
    ImageUrl NVARCHAR(255) NOT NULL
);

CREATE TABLE Services (
	Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(255) NOT NULL,
    ImageUrl NVARCHAR(255) NOT NULL
);

CREATE TABLE QuickLinks (
	Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(255) NOT NULL,
    ImageUrl NVARCHAR(255) NOT NULL
)

CREATE TABLE Account (
	Name NVARCHAR(50) NOT NULL,
	Username VARCHAR(50) PRIMARY KEY,
	Password VARCHAR(50) NOT NULL,
	Email VARCHAR(100) NOT NULL,
	Phone VARCHAR(50) NOT NULL,
	Birthday DATE NOT NULL,
	Address NVARCHAR(200)
);

INSERT INTO Products (Id, Name, Image, ImageList, Price, Category, Discount, Star, Description)
VALUES
('tra1',N'Camera WI-FI EZVIZ C6N 4MP','main.jpg', '1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg;7.jpg;8.jpg;9.jpg;10.jpg', 694900,'TP', 2, 1, N'Sản Phẩm số 1'),
('tra2',N'Laptop ASUS Gaming', 'main.jpg', '1.jpg', 17990000,'TP', 16, 1, N'Sản phẩm số 2'),
('tra3',N'Laptop ASUS Gaming','main.jpg', '1.jpg', 17990000,'TP', 16, 1, N'Sản phẩm số 2');
/*
(N'Laptop ASUS Gaming1', '/images/product2.jpg', 17990000, 15, 2, N'Sản phẩm số 3'),
(N'Laptop ASUS Gaming2', '/images/product2.jpg', 17990000, 27, 3, N'Sản phẩm số 4'),
(N'Laptop ASUS Gaming3', '/images/product2.jpg', 17990000, 35, 4, N'Sản phẩm số 5'),
(N'Laptop ASUS Gaming4', '/images/product2.jpg', 17990000, 46, 5, N'Sản phẩm số 6'),
(N'Laptop ASUS Gaming5', '/images/product2.jpg', 17990000, 0, 1, N'Sản phẩm số 7'),
(N'Laptop ASUS Gaming6', '/images/product2.jpg', 17990000, 0, 2, N'Sản phẩm số 8'),
(N'Laptop ASUS Gaming7', '/images/product2.jpg', 17990000, 12, 3, N'Sản phẩm số 9');
*/


INSERT INTO Categories (Name, ImageUrl)
VALUES
(N'Nhà sách Tiki','/images/category1.png'),
(N'Đồ Điện Tử','/images/category2.png'),
(N'Đồ Gia Dụng','/images/category3.png');

INSERT INTO Services (Name, ImageUrl)
VALUES
(N'Nhà sách Tiki','/images/category1.png'),
(N'Đồ Điện Tử','/images/category2.png'),
(N'Đồ Gia Dụng','/images/category3.png');

INSERT INTO QuickLinks(Name, ImageUrl)
VALUES
(N'Top Deal','/images/category1.png'),
(N'Siêu Sale Tháng 10','/images/category2.png'),
(N'Vòng Quay Tri Ân','/images/category3.png');

INSERT INTO Account (Name, Username, Password, Email, Phone, Birthday, Address) 
VALUES 
(N'Thiên','admin', 'admin', 'user1@example.com', '1234567890', '2005-05-22', N'824 Võ Nguyên Giáp'),
(N'Thiên2','admin1', 'admin1', 'user2@example.com', '0987654321', '2005-05-22', N'824 Võ Nguyên Giáp');

SELECT * FROM Account;



DROP TABLE Account;
DROP TABLE Products;