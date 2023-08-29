CREATE DATABASE AS5
USE AS5

SELECT * FROM userInfo;
CREATE TABLE userInfo(
   userID int primary key,
   name Nvarchar(255),
   address Nvarchar(255),
   brithday date
)
INSERT INTO userInfo(userID,name,address,brithday) VALUES 
             (10,N'Nguyễn Văn An',N'111 Nguyễn Trãi,Thanh Xuân,Hà Nội','11-18-87')
GO

CREATE TABLE phoneAdd(
   userID int,
   phoneNumber int,
   FOREIGN KEY (userID) REFERENCES	userInfo(userID)
)
INSERT INTO phoneAdd(userID,phoneNumber) VALUES 
         (10,987654321),
		 (10,09873452),
		 (10,09832323),
		 (10,09434343)