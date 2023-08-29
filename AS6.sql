CREATE database AS6
USE AS6

select * from books 
delete books 
CREATE TABLE books(
    bookID varchar(255) PRIMARY KEY,
    bookName NVARCHAR(255),
    tacgiaID int,
    tomtat NVARCHAR(max),
    NamXuatBan int,
    LanXuatBan int,
    MaNXB int,
    GiaBan money,
    SoLuong int,
    MaLoaiSach int,
    FOREIGN KEY (MaNXB) REFERENCES NhaXuatBan(MaNXB),
    FOREIGN KEY (MaLoaiSach) REFERENCES LoaiSach(MaLoaiSach),
    FOREIGN KEY (tacgiaID) REFERENCES tacgia(MaTacGia)
)
INSERT INTO books(bookID,bookName,tacgiaID,tomtat,NamXuatBan,LanXuatBan,MaNXB,GiaBan,SoLuong,MaLoaiSach) VALUES
    ('B001',N'Trí tuệ do Thái',5,N'Bạn có muốn biết...',2010,1,10,79000,100,100),
    ('B002',N'Thiên Đàng',5,N'Bạn có muốn biết...',2011,1,10,99000,100,200)

CREATE TABLE tacgia(
    MaTacGia int primary key,
    TenTacGia nvarchar(255) not null
)
INSERT INTO tacgia(MaTacGia,TenTacGia) VALUES (5,'Eran Katz')

CREATE TABLE LoaiSach (
    MaLoaiSach int primary key,
    TenLoaiSach nvarchar(255) not null
);
INSERT into LoaiSach(MaLoaiSach,TenLoaiSach) VALUES
    (100,N'Khoa học xã hội'),
    (200,N'Tiểu thuyết')

CREATE TABLE NhaXuatBan (
    MaNXB int primary key,
    TenNXB nvarchar(255) not null,
    DiaChi nvarchar(255)
);
INSERT INTO NhaXuatBan(MaNXB,TenNXB,DiaChi) VALUES 
     (10,N'Tri Thức',N'53 Nguyễn Du,Hai bà trưng,Hà Nội')