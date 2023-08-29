CREATE database AS6
USE AS6

select * from books 
CREATE TABLE books(
    bookID varchar(255) PRIMARY KEY,
    bookName NVARCHAR(255),
    tacgia varchar(255),
    tomtat NVARCHAR(max),
    NamXuatBan int,
    LanXuatBan int,
    MaNXB int,
    GiaBan money,
    SoLuong int,
    MaLoaiSach int,
    FOREIGN KEY (MaNXB) REFERENCES NhaXuatBan(MaNXB),
    FOREIGN KEY (MaLoaiSach) REFERENCES LoaiSach(MaLoaiSach)
)
INSERT INTO books(bookID,bookName,tacgia,tomtat,NamXuatBan,LanXuatBan,MaNXB,GiaBan,SoLuong,MaLoaiSach) VALUES
    ('B001',N'Trí tuệ đo Thái','Eran Katz',N'Bạn có muốn biết...',2010,1,10,79000,100,100)


CREATE TABLE LoaiSach (
    MaLoaiSach int primary key,
    TenLoaiSach nvarchar(255) not null
);
INSERT into LoaiSach(MaLoaiSach,TenLoaiSach) VALUES
    (100,N'Khoa học xã hội')

CREATE TABLE NhaXuatBan (
    MaNXB int primary key,
    TenNXB nvarchar(255) not null,
    DiaChi nvarchar(255)
);
INSERT INTO NhaXuatBan(MaNXB,TenNXB,DiaChi) VALUES 
     (10,N'Tri Thức',N'53 Nguyễn Du,Hai bà trưng,Hà Nội')