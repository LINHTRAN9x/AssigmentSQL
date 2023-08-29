CREATE DATABASE AS3
USE AS3


CREATE TABLE userInfo(
   userID int primary key,
   name Nvarchar(255),
   scmt int unique,
   address Nvarchar(255)
)
INSERT INTO userInfo(userID,name,scmt,address) VALUES 
               (10,N'Nguyễn Nguyệt Nga',123456789,N'Hà Nội')
GO

CREATE TABLE refPhone(
   phoneNum int primary key,
   userID int,
   typeNum Nvarchar(255),
   refDay date
   FOREIGN KEY (userID) REFERENCES userInfo(userID)
)
INSERT INTO refPhone(phoneNum,userID,typeNum,refDay) VALUES
         (123456789,10,N'Trả Trước','2023-11-09')
GO
