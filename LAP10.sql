--a.Thêm dữ liệu cho bảng Nhanvien:

INSERT INTO dbo.Nhanvien (manv, tennv, gioitinh, diachi, sodt, email, phong)
VALUES ('NV05', N'Nguyen A', N'Nam', N'Ha Noi', '0987654321', 'nva@example.com', N'Kế toán')


--Thực hiện full backup:

BACKUP DATABASE QLBH TO DISK = 'C:\Hoang\QLBH.bak' WITH INIT
 --b. Thêm dữ liệu cho bảng NhanVien:

INSERT INTO dbo.Nhanvien (manv, tennv, gioitinh, diachi, sodt, email, phong)
VALUES ('NV06', N'Nguyen B', N'Nam', N'Ho Chi Minh', '0987654452', 'nAv@example.com', N'Thủ kho')

--Thực hiện different backup:

BACKUP DATABASE QLBanHang TO DISK = 'C:\Hoang\QLBH_Diff.bak' WITH DIFFERENTIAL
--c. Thêm dữ liệu cho bảng Nhanvien:

INSERT INTO dbo.Nhanvien (manv, tennv, gioitinh, diachi, sodt, email, phong)
VALUES ('NV07', N'Nguyen Ha Thu', N'Nu', N'An GIANG', '0987654007', 'hathu@example.com', N'Thủ kho')

--Thực hiện log backup lần 1:

BACKUP LOG QLBanHang TO DISK = 'C:\Hoang\QLBH.trn' WITH INIT
--d. Thêm dữ liệu cho bảng Nhanvien:

INSERT INTO dbo.Nhanvien (manv, tennv, gioitinh, diachi, sodt, email, phong)
VALUES ('NV08', N'VAN C', N'Nam', N'Long An', '0987654213', 'kds@example.com', N'Kế Toán')

--Thực hiện log backup lần 2:

BACKUP LOG QLBanHang TO DISK = 'C:\Hoang\QLBH.trn' WITH INIT

--2a--
DROP DATABASE QLBanHang

--2b--
RESTORE DATABASE QLBanHang FROM DISK = 'C:\Hoang\QLBH.bak' WITH STANDBY = 'D:\HocTap\HQT CSDL\backup\QLBanhang_undo.bak'