CREATE DATABASE AS4 
USE AS4
SELECT * FROM productss
CREATE TABLE productss(
   productID varchar(255) primary key,
   cus_code int, 
   name Nvarchar(255),
   productCode varchar(255),
   productDate date,
   FOREIGN KEY (cus_code) REFERENCES customer(cus_code)
)
INSERT INTO productss(productID,cus_code,name,productCode,productDate) VALUES 
             ('N37 111111',987688,N'Máy tính sách tay Z37','Z37E','12-12-09')
GO

CREATE TABLE customer(
    cus_code int primary key,
	name Nvarchar(255)
)
INSERT INTO customer(cus_code,name) VALUES
        (987688,N'Nguyễn Văn An')
GO