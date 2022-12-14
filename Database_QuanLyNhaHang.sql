USE [master]
GO
/****** Object:  Database [QLNhaHang]    Script Date: 01/20/2022 15:12:46 ******/
CREATE DATABASE [QLNhaHang] ON  PRIMARY 
( NAME = N'QLNhaHang', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\QLNhaHang.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLNhaHang_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\QLNhaHang_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLNhaHang] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLNhaHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLNhaHang] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QLNhaHang] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QLNhaHang] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QLNhaHang] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QLNhaHang] SET ARITHABORT OFF
GO
ALTER DATABASE [QLNhaHang] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [QLNhaHang] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QLNhaHang] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QLNhaHang] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QLNhaHang] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QLNhaHang] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QLNhaHang] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QLNhaHang] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QLNhaHang] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QLNhaHang] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QLNhaHang] SET  DISABLE_BROKER
GO
ALTER DATABASE [QLNhaHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QLNhaHang] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QLNhaHang] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QLNhaHang] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QLNhaHang] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QLNhaHang] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QLNhaHang] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QLNhaHang] SET  READ_WRITE
GO
ALTER DATABASE [QLNhaHang] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QLNhaHang] SET  MULTI_USER
GO
ALTER DATABASE [QLNhaHang] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QLNhaHang] SET DB_CHAINING OFF
GO
USE [QLNhaHang]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [char](10) NOT NULL,
	[MaTiec] [char](10) NULL,
	[ThanhTien] [decimal](18, 0) NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[NgayLap] [date] NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UC_MaTiec] UNIQUE NONCLUSTERED 
(
	[MaTiec] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[HOADON] ([MaHD], [MaTiec], [ThanhTien], [TinhTrang], [NgayLap]) VALUES (N'HD1       ', N'MT1       ', CAST(54400000 AS Decimal(18, 0)), N'Chưa thanh toán', CAST(0x65430B00 AS Date))
INSERT [dbo].[HOADON] ([MaHD], [MaTiec], [ThanhTien], [TinhTrang], [NgayLap]) VALUES (N'HD2       ', N'MT2       ', CAST(51800000 AS Decimal(18, 0)), N'Chưa thanh toán', CAST(0x62430B00 AS Date))
INSERT [dbo].[HOADON] ([MaHD], [MaTiec], [ThanhTien], [TinhTrang], [NgayLap]) VALUES (N'HD3       ', N'MT3       ', CAST(51300000 AS Decimal(18, 0)), N'Chưa thanh toán', CAST(0x65430B00 AS Date))
INSERT [dbo].[HOADON] ([MaHD], [MaTiec], [ThanhTien], [TinhTrang], [NgayLap]) VALUES (N'HD4       ', N'MT4       ', CAST(51000000 AS Decimal(18, 0)), N'Chưa thanh toán', CAST(0x65430B00 AS Date))
INSERT [dbo].[HOADON] ([MaHD], [MaTiec], [ThanhTien], [TinhTrang], [NgayLap]) VALUES (N'HD5       ', N'MT5       ', CAST(70200000 AS Decimal(18, 0)), N'Chưa thanh toán', CAST(0x65430B00 AS Date))
INSERT [dbo].[HOADON] ([MaHD], [MaTiec], [ThanhTien], [TinhTrang], [NgayLap]) VALUES (N'HD6       ', N'MT6       ', CAST(70000000 AS Decimal(18, 0)), N'Chưa thanh toán', CAST(0x65430B00 AS Date))
INSERT [dbo].[HOADON] ([MaHD], [MaTiec], [ThanhTien], [TinhTrang], [NgayLap]) VALUES (N'HD7       ', N'MT7       ', CAST(78400000 AS Decimal(18, 0)), N'Đã thanh toán', CAST(0x7C430B00 AS Date))
INSERT [dbo].[HOADON] ([MaHD], [MaTiec], [ThanhTien], [TinhTrang], [NgayLap]) VALUES (N'HD8       ', N'MT10      ', CAST(52500000 AS Decimal(18, 0)), N'Đã thanh toán', CAST(0x7E430B00 AS Date))
/****** Object:  StoredProcedure [dbo].[pr_XoaHoaDon]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[pr_XoaHoaDon] @maTiec char(10)
AS
BEGIN
	DELETE FROM HOADON WHERE MaTiec = @maTiec
END
GO
/****** Object:  UserDefinedFunction [dbo].[Max_HD]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[Max_HD] ()
returns char(10)
as
begin
	declare @max int =  ISNULL((select max(cast(substring(MaHD,3,2) as int)) from HOADON),0)
	declare @ma char(10)
	SET @ma = 'HD' + cast((@max + 1) as char)
	RETURN @ma
end
GO
/****** Object:  StoredProcedure [dbo].[pr_addHoaDon]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[pr_addHoaDon] @MaTiec char(10)
AS
BEGIN
	INSERT INTO HOADON (MaHD, MaTiec,NgayLap, TinhTrang)
	VALUES (dbo.Max_HD(), @MaTiec,GETDATE(), N'Chưa thanh toán') 
END
GO
/****** Object:  Table [dbo].[DATTIEC]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DATTIEC](
	[MaTiec] [char](10) NOT NULL,
	[TenTiec] [nvarchar](50) NULL,
	[MaSanh] [char](10) NULL,
	[MaNV] [char](10) NULL,
	[MaKH] [char](10) NULL,
	[NgayDat] [date] NULL,
	[NgayToChuc] [date] NULL,
	[SoLuongBan] [int] NULL,
	[SoLuongKhach] [int] NULL,
	[Buoi] [nvarchar](20) NULL,
	[TinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_DATTIEC] PRIMARY KEY CLUSTERED 
(
	[MaTiec] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DATTIEC] ([MaTiec], [TenTiec], [MaSanh], [MaNV], [MaKH], [NgayDat], [NgayToChuc], [SoLuongBan], [SoLuongKhach], [Buoi], [TinhTrang]) VALUES (N'MT1       ', N'Tiệc cưới NSUT', N'S01       ', N'NV2       ', N'KH3       ', CAST(0x65430B00 AS Date), CAST(0x6C430B00 AS Date), 10, 100, N'Sáng', N'Đã xác nhận')
INSERT [dbo].[DATTIEC] ([MaTiec], [TenTiec], [MaSanh], [MaNV], [MaKH], [NgayDat], [NgayToChuc], [SoLuongBan], [SoLuongKhach], [Buoi], [TinhTrang]) VALUES (N'MT10      ', N'1', N'S01       ', NULL, N'KH3       ', CAST(0x7E430B00 AS Date), CAST(0x88430B00 AS Date), 1, 1, N'Sáng', N'Chưa xác nhận')
INSERT [dbo].[DATTIEC] ([MaTiec], [TenTiec], [MaSanh], [MaNV], [MaKH], [NgayDat], [NgayToChuc], [SoLuongBan], [SoLuongKhach], [Buoi], [TinhTrang]) VALUES (N'MT2       ', N'Kỉ niệm ngày cưới NSUT', N'S01       ', NULL, N'KH3       ', CAST(0x65430B00 AS Date), CAST(0x6E430B00 AS Date), 10, 100, N'Sáng', N'Chưa xác nhận')
INSERT [dbo].[DATTIEC] ([MaTiec], [TenTiec], [MaSanh], [MaNV], [MaKH], [NgayDat], [NgayToChuc], [SoLuongBan], [SoLuongKhach], [Buoi], [TinhTrang]) VALUES (N'MT3       ', N'Tiệc cưới', N'S01       ', N'NV2       ', N'KH3       ', CAST(0x65430B00 AS Date), CAST(0x6F430B00 AS Date), 20, 200, N'Sáng', N'Đã xác nhận')
INSERT [dbo].[DATTIEC] ([MaTiec], [TenTiec], [MaSanh], [MaNV], [MaKH], [NgayDat], [NgayToChuc], [SoLuongBan], [SoLuongKhach], [Buoi], [TinhTrang]) VALUES (N'MT4       ', N'Abc', N'S01       ', N'NV2       ', N'KH3       ', CAST(0x65430B00 AS Date), CAST(0x70430B00 AS Date), 10, 100, N'Sáng', N'Đã xác nhận')
INSERT [dbo].[DATTIEC] ([MaTiec], [TenTiec], [MaSanh], [MaNV], [MaKH], [NgayDat], [NgayToChuc], [SoLuongBan], [SoLuongKhach], [Buoi], [TinhTrang]) VALUES (N'MT5       ', N'abcx', N'S02       ', NULL, N'KH3       ', CAST(0x65430B00 AS Date), CAST(0x88430B00 AS Date), 10, 100, N'Tối', N'Chưa xác nhận')
INSERT [dbo].[DATTIEC] ([MaTiec], [TenTiec], [MaSanh], [MaNV], [MaKH], [NgayDat], [NgayToChuc], [SoLuongBan], [SoLuongKhach], [Buoi], [TinhTrang]) VALUES (N'MT6       ', N'xyz', N'S02       ', NULL, N'KH3       ', CAST(0x65430B00 AS Date), CAST(0x88430B00 AS Date), 10, 100, N'Sáng', N'Chưa xác nhận')
INSERT [dbo].[DATTIEC] ([MaTiec], [TenTiec], [MaSanh], [MaNV], [MaKH], [NgayDat], [NgayToChuc], [SoLuongBan], [SoLuongKhach], [Buoi], [TinhTrang]) VALUES (N'MT7       ', N'Tiệc cưới', N'S02       ', NULL, N'KH3       ', CAST(0x7C430B00 AS Date), CAST(0x87430B00 AS Date), 10, 100, N'Sáng', N'Chưa xác nhận')
INSERT [dbo].[DATTIEC] ([MaTiec], [TenTiec], [MaSanh], [MaNV], [MaKH], [NgayDat], [NgayToChuc], [SoLuongBan], [SoLuongKhach], [Buoi], [TinhTrang]) VALUES (N'MT8       ', N'1', NULL, NULL, N'KH3       ', CAST(0x7E430B00 AS Date), NULL, 1, 1, NULL, N'Chưa xác nhận')
INSERT [dbo].[DATTIEC] ([MaTiec], [TenTiec], [MaSanh], [MaNV], [MaKH], [NgayDat], [NgayToChuc], [SoLuongBan], [SoLuongKhach], [Buoi], [TinhTrang]) VALUES (N'MT9       ', N'Tiệc', NULL, NULL, N'KH3       ', CAST(0x7E430B00 AS Date), NULL, 1, 1, NULL, N'Chưa xác nhận')
/****** Object:  StoredProcedure [dbo].[pr_XoaDatTiec]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[pr_XoaDatTiec] @maTiec char(10)
AS
BEGIN
	EXEC pr_XoaHoaDon @maTiec
	DELETE FROM DATTIEC
	WHERE MaTiec = @maTiec
END
GO
/****** Object:  UserDefinedFunction [dbo].[Max_DatTiec]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[Max_DatTiec] ()
returns char(10)
as
begin
	declare @max int =  ISNULL((select max(cast(substring(MaTiec,3,2) as int)) from DATTIEC),0)
	declare @ma char(10)
	SET @ma = 'MT' + cast((@max + 1) as char)
	RETURN @ma
end
GO
/****** Object:  StoredProcedure [dbo].[pr_addDatTiec]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[pr_addDatTiec] @MaKH char(10), @TenTiec nvarchar(50), @SLBan int, @SLKhach int
AS
BEGIN
	DECLARE @new_Ma char(10) = dbo.Max_DatTiec()
	INSERT INTO DATTIEC (MaTiec, MaKH, TenTiec, SoLuongBan, SoLuongKhach, TinhTrang,NgayDat)
	VALUES (@new_Ma,@MaKH, @TenTiec, @SLBan, @SLKhach, N'Chưa xác nhận', GETDATE())
	EXEC pr_addHoaDon @new_Ma
END
GO
/****** Object:  StoredProcedure [dbo].[pr_AddDatSanh]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[pr_AddDatSanh] @MaTiec char(10), @MaSanh char(10), @NgayToChuc datetime, @Buoi nvarchar(20)
AS
BEGIN
	UPDATE DATTIEC
	SET MaSanh = @MaSanh, NgayToChuc = @NgayToChuc, Buoi = @Buoi
	WHERE MaTiec = @MaTiec
END
GO
/****** Object:  Table [dbo].[DATMONAN]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DATMONAN](
	[MaTiec] [char](10) NOT NULL,
	[MaMA] [char](10) NOT NULL,
	[SoLuong] [int] NULL,
	[ThanhTien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_THUCDON_MONAN] PRIMARY KEY CLUSTERED 
(
	[MaTiec] ASC,
	[MaMA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DATMONAN] ([MaTiec], [MaMA], [SoLuong], [ThanhTien]) VALUES (N'MT1       ', N'MA1       ', 10, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[DATMONAN] ([MaTiec], [MaMA], [SoLuong], [ThanhTien]) VALUES (N'MT1       ', N'MA2       ', 10, CAST(500000 AS Decimal(18, 0)))
INSERT [dbo].[DATMONAN] ([MaTiec], [MaMA], [SoLuong], [ThanhTien]) VALUES (N'MT1       ', N'MA3       ', 10, CAST(2000000 AS Decimal(18, 0)))
INSERT [dbo].[DATMONAN] ([MaTiec], [MaMA], [SoLuong], [ThanhTien]) VALUES (N'MT10      ', N'MA2       ', 10, CAST(2000000 AS Decimal(18, 0)))
INSERT [dbo].[DATMONAN] ([MaTiec], [MaMA], [SoLuong], [ThanhTien]) VALUES (N'MT2       ', N'MA1       ', 10, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[DATMONAN] ([MaTiec], [MaMA], [SoLuong], [ThanhTien]) VALUES (N'MT2       ', N'MA2       ', 10, CAST(500000 AS Decimal(18, 0)))
INSERT [dbo].[DATMONAN] ([MaTiec], [MaMA], [SoLuong], [ThanhTien]) VALUES (N'MT3       ', N'MA1       ', 10, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[DATMONAN] ([MaTiec], [MaMA], [SoLuong], [ThanhTien]) VALUES (N'MT3       ', N'MA2       ', 10, CAST(500000 AS Decimal(18, 0)))
INSERT [dbo].[DATMONAN] ([MaTiec], [MaMA], [SoLuong], [ThanhTien]) VALUES (N'MT4       ', N'MA2       ', 10, CAST(500000 AS Decimal(18, 0)))
INSERT [dbo].[DATMONAN] ([MaTiec], [MaMA], [SoLuong], [ThanhTien]) VALUES (N'MT5       ', N'MA1       ', 10, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[DATMONAN] ([MaTiec], [MaMA], [SoLuong], [ThanhTien]) VALUES (N'MT7       ', N'MA4       ', 10, CAST(4500000 AS Decimal(18, 0)))
INSERT [dbo].[DATMONAN] ([MaTiec], [MaMA], [SoLuong], [ThanhTien]) VALUES (N'MT7       ', N'MA5       ', 10, CAST(1000000 AS Decimal(18, 0)))
INSERT [dbo].[DATMONAN] ([MaTiec], [MaMA], [SoLuong], [ThanhTien]) VALUES (N'MT7       ', N'MA6       ', 10, CAST(1500000 AS Decimal(18, 0)))
/****** Object:  UserDefinedFunction [dbo].[TongThanhTien]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[TongThanhTien] (@maTiec char(10))
RETURNS char(20)
AS
BEGIN
	DECLARE @TongTien char(20)
	SET @TongTien = CAST((SELECT SUM(ThanhTien)
	FROM DATMONAN
	WHERE MaTiec = @maTiec) as CHAR(20))
	return @TongTien
END
GO
/****** Object:  StoredProcedure [dbo].[ShowDatMon]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ShowDatMon] @maTiec char(10)
AS
BEGIN
	SELECT *
	FROM DATMONAN
	WHERE MaTiec = @maTiec
END
GO
/****** Object:  StoredProcedure [dbo].[pr_XoaAllDatMonAn]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- xoa dat mon an bằng mã tiệc
create proc [dbo].[pr_XoaAllDatMonAn] @maTiec char(10)
as
begin
		delete from DATMONAN WHERE MaTiec = @maTiec

end
GO
/****** Object:  StoredProcedure [dbo].[pr_Xoa1DatMonAn]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- xoa dat mon an bằng mã món ăn
create proc [dbo].[pr_Xoa1DatMonAn] @maTiec char(10), @maMonAn char(10)
as
begin
	delete from DATMONAN where MaMA = @maMonAn AND MaTiec = @MaTiec
end
--xoa hoa đơn
GO
/****** Object:  StoredProcedure [dbo].[pr_SuaDatMon]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[pr_SuaDatMon] @MaTiec char(10), @MaMA char(10), @SoLuong int
AS
BEGIN
	UPDATE DATMONAN
	SET SoLuong = @SoLuong
	WHERE MaMA = @MaMA AND MaTiec = @MaTiec
END
GO
/****** Object:  StoredProcedure [dbo].[pr_AddDatMon]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[pr_AddDatMon] @MaTiec char(10), @MaMA char(10), @SoLuong int
AS 
BEGIN
	INSERT INTO DATMONAN (MaTiec, MaMA, SoLuong)
	VALUES (@MaTiec, @MaMA, @SoLuong)
END
GO
/****** Object:  Table [dbo].[DATDICHVU]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DATDICHVU](
	[MaTiec] [char](10) NOT NULL,
	[MaDV] [char](10) NOT NULL,
 CONSTRAINT [PK_DICHVU_DATTIEC] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC,
	[MaTiec] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DATDICHVU] ([MaTiec], [MaDV]) VALUES (N'MT1       ', N'DV1       ')
INSERT [dbo].[DATDICHVU] ([MaTiec], [MaDV]) VALUES (N'MT10      ', N'DV1       ')
INSERT [dbo].[DATDICHVU] ([MaTiec], [MaDV]) VALUES (N'MT2       ', N'DV1       ')
INSERT [dbo].[DATDICHVU] ([MaTiec], [MaDV]) VALUES (N'MT4       ', N'DV1       ')
INSERT [dbo].[DATDICHVU] ([MaTiec], [MaDV]) VALUES (N'MT1       ', N'DV2       ')
INSERT [dbo].[DATDICHVU] ([MaTiec], [MaDV]) VALUES (N'MT2       ', N'DV2       ')
INSERT [dbo].[DATDICHVU] ([MaTiec], [MaDV]) VALUES (N'MT3       ', N'DV2       ')
INSERT [dbo].[DATDICHVU] ([MaTiec], [MaDV]) VALUES (N'MT7       ', N'DV2       ')
INSERT [dbo].[DATDICHVU] ([MaTiec], [MaDV]) VALUES (N'MT1       ', N'DV3       ')
INSERT [dbo].[DATDICHVU] ([MaTiec], [MaDV]) VALUES (N'MT2       ', N'DV3       ')
INSERT [dbo].[DATDICHVU] ([MaTiec], [MaDV]) VALUES (N'MT3       ', N'DV3       ')
INSERT [dbo].[DATDICHVU] ([MaTiec], [MaDV]) VALUES (N'MT7       ', N'DV3       ')
INSERT [dbo].[DATDICHVU] ([MaTiec], [MaDV]) VALUES (N'MT1       ', N'DV4       ')
INSERT [dbo].[DATDICHVU] ([MaTiec], [MaDV]) VALUES (N'MT7       ', N'DV4       ')
INSERT [dbo].[DATDICHVU] ([MaTiec], [MaDV]) VALUES (N'MT7       ', N'DV5       ')
/****** Object:  StoredProcedure [dbo].[pr_XoaAllDatDichVu]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_XoaAllDatDichVu] @maTiec char(10)
as
begin
		delete from DATDICHVU WHERE MaTiec = @maTiec
end
GO
/****** Object:  StoredProcedure [dbo].[pr_Xoa1DatDichVu]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- xoa dat dich vu bằng mã dịch vụ
create proc [dbo].[pr_Xoa1DatDichVu] @maTiec char (10), @maDV char(10)
as
begin
		delete from DATDICHVU WHERE MaDV = @maDV AND maTiec = @maTiec

end
GO
/****** Object:  StoredProcedure [dbo].[pr_AddDatDV]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[pr_AddDatDV] @MaTiec char(10), @MaDV char(10)
AS 
BEGIN
	INSERT INTO DATDICHVU (MaTiec, MaDV)
	VALUES (@MaTiec, @MaDV)
END
GO
/****** Object:  Table [dbo].[BOPHAN]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BOPHAN](
	[MaBP] [char](10) NOT NULL,
	[TenBP] [nvarchar](20) NULL,
	[SoLuongNV] [int] NULL,
 CONSTRAINT [PK_BOPHAN] PRIMARY KEY CLUSTERED 
(
	[MaBP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UC_TenBP] UNIQUE NONCLUSTERED 
(
	[TenBP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[BOPHAN] ([MaBP], [TenBP], [SoLuongNV]) VALUES (N'BP1       ', N'Phục Vụ', 1)
INSERT [dbo].[BOPHAN] ([MaBP], [TenBP], [SoLuongNV]) VALUES (N'BP2       ', N'Nhà Bếp ', 0)
INSERT [dbo].[BOPHAN] ([MaBP], [TenBP], [SoLuongNV]) VALUES (N'BP3       ', N'Quản Lý', 1)
/****** Object:  Table [dbo].[ACCOUNT]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ACCOUNT](
	[UserName] [char](20) NOT NULL,
	[PassWord] [char](20) NOT NULL,
	[TypeUser] [char](10) NULL,
 CONSTRAINT [PK_ACCOUNT] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ACCOUNT] ([UserName], [PassWord], [TypeUser]) VALUES (N'hoangz1470          ', N'123456              ', N'KH        ')
INSERT [dbo].[ACCOUNT] ([UserName], [PassWord], [TypeUser]) VALUES (N'HuynhDz             ', N'haha123             ', N'KH        ')
INSERT [dbo].[ACCOUNT] ([UserName], [PassWord], [TypeUser]) VALUES (N'LenDz               ', N'hihi123             ', N'NV        ')
INSERT [dbo].[ACCOUNT] ([UserName], [PassWord], [TypeUser]) VALUES (N'MinhDz              ', N'hihi123             ', N'KH        ')
INSERT [dbo].[ACCOUNT] ([UserName], [PassWord], [TypeUser]) VALUES (N'SangDz              ', N'hoho123             ', N'KH        ')
INSERT [dbo].[ACCOUNT] ([UserName], [PassWord], [TypeUser]) VALUES (N'userH               ', N'hihi123             ', N'KH        ')
INSERT [dbo].[ACCOUNT] ([UserName], [PassWord], [TypeUser]) VALUES (N'ZAYN                ', N'ZAYN123             ', N'NV        ')
/****** Object:  Table [dbo].[MONAN]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MONAN](
	[MaMA] [char](10) NOT NULL,
	[TenMa] [nvarchar](50) NULL,
	[DonGia] [decimal](18, 0) NULL,
	[Loai] [nvarchar](10) NULL,
	[DonViTinh] [nvarchar](10) NULL,
	[IsDeleted] [date] NULL,
 CONSTRAINT [PK_MONAN] PRIMARY KEY CLUSTERED 
(
	[MaMA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UC_TenMA] UNIQUE NONCLUSTERED 
(
	[TenMa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MONAN] ([MaMA], [TenMa], [DonGia], [Loai], [DonViTinh], [IsDeleted]) VALUES (N'MA1       ', N'Súp Cua', CAST(150000 AS Decimal(18, 0)), N'Thức ăn', N'Tô', NULL)
INSERT [dbo].[MONAN] ([MaMA], [TenMa], [DonGia], [Loai], [DonViTinh], [IsDeleted]) VALUES (N'MA2       ', N'Cá chiên giòn', CAST(200000 AS Decimal(18, 0)), N'Thức ăn', N'Dĩa', NULL)
INSERT [dbo].[MONAN] ([MaMA], [TenMa], [DonGia], [Loai], [DonViTinh], [IsDeleted]) VALUES (N'MA3       ', N'coca cola', CAST(350000 AS Decimal(18, 0)), N'Thức uống', N'Thùng', NULL)
INSERT [dbo].[MONAN] ([MaMA], [TenMa], [DonGia], [Loai], [DonViTinh], [IsDeleted]) VALUES (N'MA4       ', N'Bia Heineken', CAST(450000 AS Decimal(18, 0)), N'Thức uống', N'Lon', NULL)
INSERT [dbo].[MONAN] ([MaMA], [TenMa], [DonGia], [Loai], [DonViTinh], [IsDeleted]) VALUES (N'MA5       ', N'Trái cây', CAST(100000 AS Decimal(18, 0)), N'Thức ăn', N'Dĩa', NULL)
INSERT [dbo].[MONAN] ([MaMA], [TenMa], [DonGia], [Loai], [DonViTinh], [IsDeleted]) VALUES (N'MA6       ', N'Cơm chiên', CAST(150000 AS Decimal(18, 0)), N'Thức ăn', N'Dĩa', NULL)
/****** Object:  StoredProcedure [dbo].[pr_ThongKeMonAn]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[pr_ThongKeMonAn]
AS
BEGIN
	SELECT m.MaMA, m.TenMa,  SUM(d.SoLuong) AS N'Tổng số đã bán', m.DonGia * SUM(d.SoLuong) AS N'Doanh thu'
	FROM DATMONAN d, MONAN m
	WHERE d.MaMA = m.MaMA
	GROUP BY m.MaMA, m.TenMa, m.DonGia
END
GO
/****** Object:  Table [dbo].[DICHVU]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DICHVU](
	[MaDV] [char](10) NOT NULL,
	[TenDV] [nvarchar](50) NULL,
	[DonGia] [decimal](18, 0) NULL,
	[IsDeleted] [date] NULL,
 CONSTRAINT [PK_DICHVU] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UC_TenDV] UNIQUE NONCLUSTERED 
(
	[TenDV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [DonGia], [IsDeleted]) VALUES (N'DV1       ', N'Thuê ca sĩ', CAST(500000 AS Decimal(18, 0)), NULL)
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [DonGia], [IsDeleted]) VALUES (N'DV2       ', N'Thuê Nhạc Cụ', CAST(400000 AS Decimal(18, 0)), NULL)
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [DonGia], [IsDeleted]) VALUES (N'DV3       ', N'Cổng Hoa', CAST(200000 AS Decimal(18, 0)), NULL)
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [DonGia], [IsDeleted]) VALUES (N'DV4       ', N'Trang Trí', CAST(600000 AS Decimal(18, 0)), NULL)
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [DonGia], [IsDeleted]) VALUES (N'DV5       ', N'Pháo Bông', CAST(200000 AS Decimal(18, 0)), NULL)
/****** Object:  StoredProcedure [dbo].[ListDichVuDat]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ListDichVuDat] @MaTiec char(10)
AS
BEGIN
	SELECT d.*
	FROM DICHVU d, DATDICHVU d1
	WHERE d.MaDV = d1.MaDV AND d1.MaTiec = @MaTiec
END
GO
/****** Object:  Table [dbo].[Sanh]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sanh](
	[MaSanh] [char](10) NOT NULL,
	[TenSanh] [nvarchar](20) NULL,
	[Tang] [char](10) NULL,
	[DonGia] [decimal](18, 0) NULL,
	[SucChua] [int] NULL,
	[IsDeleted] [date] NULL,
 CONSTRAINT [PK_Sanh] PRIMARY KEY CLUSTERED 
(
	[MaSanh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Sanh] ([MaSanh], [TenSanh], [Tang], [DonGia], [SucChua], [IsDeleted]) VALUES (N'S01       ', N'PANDORA', N'1         ', CAST(50000000 AS Decimal(18, 0)), 250, NULL)
INSERT [dbo].[Sanh] ([MaSanh], [TenSanh], [Tang], [DonGia], [SucChua], [IsDeleted]) VALUES (N'S02       ', N'Paris By Night', N'1         ', CAST(20000000 AS Decimal(18, 0)), 100, NULL)
/****** Object:  StoredProcedure [dbo].[pr_AddMonAnisDeleted]    Script Date: 01/20/2022 15:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pr_AddMonAnisDeleted]
						  @TenMA nvarchar(50),
						  @Gia decimal(18,0), 
						  @Loai nvarchar(10), 
						  @DonViTinh nvarchar(10)
as
begin
	UPDATE MONAN
	set DonGia = @Gia,
		Loai = @Loai,
		DonViTinh = @DonViTinh,
		isDeleted = null
	where TenMa = @TenMA
end
GO
/****** Object:  StoredProcedure [dbo].[pr_SuaMonAn]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_SuaMonAn]  @MaMA char(10),
						  @TenMA nvarchar(50),
						  @Gia decimal(18,0), 
						  @Loai nvarchar(10), 
						  @DonViTinh nvarchar(10)
as
begin
	UPDATE MONAN
	set TenMa = @TenMA,
		DonGia = @Gia,
		Loai = @Loai,
		DonViTinh = @DonViTinh
	where MaMA = @MaMA
end
GO
/****** Object:  StoredProcedure [dbo].[pr_SuaBoPhan]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_SuaBoPhan] @MaBP char(10),
						@TenBP nvarchar(20)
AS
BEGIN
	update BOPHAN
	set TenBP = @TenBP
	where MaBP = @MaBP
end
GO
/****** Object:  StoredProcedure [dbo].[pr_AddSanhisDeleted]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pr_AddSanhisDeleted]
						@TenSanh nvarchar(20),
						@Tang char(10), 
						@DonGia decimal(18,0), 
						@SucChua int
as
begin
	Update dbo.Sanh
	SET Tang = @Tang,
		DonGia = @DonGia,
		SucChua = @SucChua,
		isDeleted = null
	WHERE TenSanh = @TenSanh
end
GO
/****** Object:  StoredProcedure [dbo].[pr_XoaAccount]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[pr_XoaAccount] @UserName char(20)
AS
BEGIN
	DELETE FROM ACCOUNT
	WHERE UserName = @UserName	
END
GO
/****** Object:  StoredProcedure [dbo].[pr_SuaSanh]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_SuaSanh]  @MaSanh char(10),
							@TenSanh nvarchar(20),
							@Tang char(10), 
							@DonGia decimal(18,0), 
							@SucChua int
as
begin
	UPDATE Sanh
	set TenSanh = @TenSanh,
		Tang = @Tang,
		DonGia = @DonGia,
		SucChua = @SucChua
	where MaSanh = @MaSanh
end
GO
/****** Object:  StoredProcedure [dbo].[pr_AddAccount]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_AddAccount] @UserName char(20), @PassWord char(20), @TypeUser char(10)
as
begin
	insert into ACCOUNT(UserName,PassWord,TypeUser)
	values(@UserName, @Password, @TypeUser)
end
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [char](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[SDT] [char](11) NULL,
	[CMND] [char](10) NULL,
	[MaBP] [char](10) NULL,
	[ChucVu] [nvarchar](20) NULL,
	[Luong] [decimal](18, 0) NULL,
	[UserName] [char](20) NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [SDT], [CMND], [MaBP], [ChucVu], [Luong], [UserName]) VALUES (N'NV2       ', N'Minh Hoàng', N'0908234555 ', N'0891244213', N'BP1       ', N'Quản Lý', CAST(20000000 AS Decimal(18, 0)), N'LenDz               ')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [SDT], [CMND], [MaBP], [ChucVu], [Luong], [UserName]) VALUES (N'NV3       ', N'Anh Minh', N'0354646464 ', N'272838383 ', N'BP3       ', N'Quản Lý', CAST(50000000 AS Decimal(18, 0)), N'ZAYN                ')
/****** Object:  StoredProcedure [dbo].[pr_XoaNhanVien]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[pr_XoaNhanVien] @MaNV char(10)
AS
BEGIN
	DECLARE @UserName char(20) = (SELECT UserName FROM NHANVIEN WHERE MaNV = @MaNV)
	
	UPDATE DATTIEC
	SET MaNV = NULL
	WHERE MaNV = @MaNV
	
	DELETE FROM NHANVIEN
	WHERE MaNV = @MaNV
	
	EXEC pr_XoaAccount @Username
END
GO
/****** Object:  StoredProcedure [dbo].[pr_AddDichVuisDeleted]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pr_AddDichVuisDeleted] @TenDV nvarchar(50),
								@Gia decimal(18,0)
as
begin
	UPDATE DICHVU
	set DonGia = @Gia,
		isDeleted = null
	where TenDV = @TenDV
end
GO
/****** Object:  StoredProcedure [dbo].[pr_XoaThucAn]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pr_XoaThucAn] @maThucAn char(10)
as
begin
	UPDATE MONAN 
	SET isDeleted = GETDATE()
	WHERE MaMA = @maThucAn
end
GO
/****** Object:  StoredProcedure [dbo].[pr_XoaSanh]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pr_XoaSanh] @maSanh char(10)
as
begin
	UPDATE Sanh 
	SET isDeleted = GETDATE()
	where MaSanh = @maSanh
end
GO
/****** Object:  StoredProcedure [dbo].[pr_XoaDichVu]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pr_XoaDichVu] @maDichVu char(10)
as
begin
	UPDATE DICHVU 
	SET isDeleted = GETDATE()
	WHERE MaDV = @maDichVu
end
GO
/****** Object:  StoredProcedure [dbo].[pr_SuaDichVu]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[pr_SuaDichVu] @MaDV CHAR(10) ,@TenDV NVARCHAR(50) ,@DonGia DECIMAL(18,0)
AS
BEGIN
	UPDATE dbo.DICHVU
	SET TenDV=@TenDV,
		DonGia=@DonGia
	WHERE MaDV=@MaDV
END
GO
/****** Object:  UserDefinedFunction [dbo].[Max_BP]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[Max_BP] ()
returns char(10)
as
begin
	declare @max int =  ISNULL((select max(cast(substring(MaBP,3,2) as int)) from BOPHAN),0)
	declare @ma char(10)
	SET @ma = 'BP' + cast((@max + 1) as char)
	RETURN @ma
end
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [char](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[GioiTinh] [nchar](10) NULL,
	[CMND] [char](15) NULL,
	[SDT] [char](11) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[UserName] [char](20) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [GioiTinh], [CMND], [SDT], [DiaChi], [UserName]) VALUES (N'KH1       ', N'Hoàng', N'Nam       ', N'12345673       ', N'0123456789 ', N'HCM', N'hoangz1470          ')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [GioiTinh], [CMND], [SDT], [DiaChi], [UserName]) VALUES (N'KH2       ', N'Huỳnh', N'Nữ        ', N'079213123      ', N'0909334567 ', N'DakLak', N'HuynhDz             ')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [GioiTinh], [CMND], [SDT], [DiaChi], [UserName]) VALUES (N'KH3       ', N'Sang', N'Nữ        ', N'079232134      ', N'0912434134 ', N'Biên Hòa', N'SangDz              ')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [GioiTinh], [CMND], [SDT], [DiaChi], [UserName]) VALUES (N'KH4       ', N'Anh Minh', N'Nam       ', N'23423523       ', N'098234324  ', N'Biên Hòa', N'MinhDz              ')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [GioiTinh], [CMND], [SDT], [DiaChi], [UserName]) VALUES (N'KH5       ', N'hai', N'Nam       ', N'325325235      ', N'3215235    ', N'228', N'ZAYN                ')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [GioiTinh], [CMND], [SDT], [DiaChi], [UserName]) VALUES (N'KH6       ', N'hai22', N'Nam       ', N'325325235      ', N'3215235    ', N'228', N'ZAYn                ')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [GioiTinh], [CMND], [SDT], [DiaChi], [UserName]) VALUES (N'KH7       ', N'hoanaa', N'Nam       ', N'12341241       ', N'241241     ', N'214214', N'userH               ')
/****** Object:  StoredProcedure [dbo].[pr_XoaKhachHang]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[pr_XoaKhachHang] @MaKH char(10)
AS
BEGIN
	DECLARE @UserName char(20) = (SELECT UserName FROM KHACHHANG WHERE MaKH = @MaKH)
	
	UPDATE DATTIEC
	SET MaKH = NULL
	WHERE MaKH = @MaKH
	
	DELETE FROM KHACHHANG
	WHERE MaKH = @MaKH
	
	EXEC pr_XoaAccount @Username
END
GO
/****** Object:  UserDefinedFunction [dbo].[Max_DV]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[Max_DV] ()
returns char(10)
as
begin
	declare @max int =  ISNULL((select max(cast(substring(MaDV,3,2) as int)) from DICHVU),0)
	declare @ma char(10)
	SET @ma = 'DV' + cast((@max + 1) as char)
	RETURN @ma
end
GO
/****** Object:  UserDefinedFunction [dbo].[Max_MA]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[Max_MA] ()
returns char(10)
as
begin
	declare @max int =  ISNULL((select max(cast(substring(MaMA,3,2) as int)) from MONAN),0)
	declare @ma char(10)
	SET @ma = 'MA' + cast((@max + 1) as char)
	RETURN @ma
end
GO
/****** Object:  UserDefinedFunction [dbo].[Max_Sanh]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[Max_Sanh]()
returns char(10)
as
begin
	declare @max int =  ISNULL((select max(cast(substring(MaSanh,2,2) as int)) from Sanh),0)
	declare @ma char(10)
	if (@max < 9)
	begin
		SET @ma = 'S0' + cast((@max + 1) as char) 
	end
	else
	begin
		SET @ma = 'S' + cast((@max + 1) as char)
	end
	RETURN @ma
end
GO
/****** Object:  UserDefinedFunction [dbo].[Max_NV]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[Max_NV]()
returns char(10)
as
begin
	declare @max int =  ISNULL((select max(cast(substring(MaNV,3,2) as int)) from NHANVIEN),0)
	declare @ma char(10)
	SET @ma = 'NV' + cast((@max + 1) as char)
	RETURN @ma
end
GO
/****** Object:  UserDefinedFunction [dbo].[Max_KH]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[Max_KH] ()
returns char(10)
as
begin
	declare @max int =  ISNULL((select max(cast(substring(MaKH,3,2) as int)) from KHACHHANG),0)
	declare @ma char(10)
	SET @ma = 'KH' + cast((@max + 1) as char)
	RETURN @ma
end
GO
/****** Object:  StoredProcedure [dbo].[pr_XoaBP]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[pr_XoaBP] @MaBP char(10)
AS
BEGIN
	UPDATE NHANVIEN
	SET MaBP = NULL
	WHERE MaBP = @MaBP
	DELETE FROM BOPHAN
	WHERE MaBP = @MaBP
END
GO
/****** Object:  StoredProcedure [dbo].[pr_AddDichVu]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[pr_AddDichVu] @TenDV NVARCHAR(50) ,@DonGia DECIMAL(18,0)
AS 
BEGIN
	INSERT INTO dbo.DICHVU (MaDV,   TenDV,    DonGia) 
	VALUES (dbo.Max_DV(), @TenDV, @DonGia)
END
GO
/****** Object:  StoredProcedure [dbo].[pr_AddBoPhan]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_AddBoPhan] @TenBP nvarchar(20)
as
begin
	insert into BOPHAN(MaBP, TenBP)
	values (dbo.Max_BP(), @TenBP)
end
GO
/****** Object:  StoredProcedure [dbo].[pr_SuaNhanVien]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[pr_SuaNhanVien] @MaNV CHAR(10), @TenNV NVARCHAR(50), @SDT CHAR(11), @CMND CHAR(10), @MaBP CHAR(10) ,
												@ChucVu NVARCHAR(20),@Luong DECIMAL(18,0) 
AS
BEGIN
	UPDATE dbo.NHANVIEN
	SET TenNV=@TenNV,
		SDT=@SDT,
		CMND=@CMND,
		MaBP=@MaBP,
		ChucVu=@ChucVu,
		Luong=@Luong			
	WHERE MaNV=@MaNV     			   
END
GO
/****** Object:  StoredProcedure [dbo].[pr_AddSanh]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_AddSanh]  @TenSanh nvarchar(20),
						@Tang char(10), 
						@DonGia decimal(18,0), 
						@SucChua int
as
begin
	insert into Sanh(MaSanh, TenSanh, Tang, DonGia, SucChua)
	values (dbo.Max_Sanh(),@TenSanh, @Tang, @DonGia, @SucChua)
end
GO
/****** Object:  StoredProcedure [dbo].[pr_SuaKhachhang]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[pr_SuaKhachhang] @MaKH CHAR(10), @TenKH NVARCHAR(50), @GioiTinh NCHAR(10),@CMND CHAR(15), @SoDT CHAR(11) ,@DiaChi NVARCHAR(50)
AS
BEGIN
	UPDATE dbo.KHACHHANG
	SET TenKH=@TenKH,
		GioiTinh=@GioiTinh,
		CMND=@CMND,
		SDT=@SoDT,
		DiaChi=@DiaChi
	WHERE MaKH=@MaKH
END
GO
/****** Object:  StoredProcedure [dbo].[pr_AddMonAn]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_AddMonAn] @TenMA nvarchar(50),
					  @DonGia decimal(18,0), 
					  @Loai nvarchar(10), 
					  @DonViTinh nvarchar(10)
as
begin
	insert into MONAN (MaMA, TenMA, DonGia, Loai, DonViTinh)
	values (dbo.Max_MA(), @TenMA, @DonGia, @Loai, @DonViTinh)	
end
GO
/****** Object:  StoredProcedure [dbo].[pr_AddKhachHang]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pr_AddKhachHang] @TenKH nvarchar(50),
						  @GioiTinh char(10),
						  @CMND char(10),
						  @SDT char(11),
						  @DiaChi nvarchar(50), 
						  @Username char(20),
						  @PassWord char(10)	
						  		 
as
begin
	exec pr_AddAccount @UserName, @PassWord, 'KH'
	insert into KHACHHANG(MaKH, TenKH, GioiTinh, CMND, SDT, DiaChi, UserName)
	values(dbo.Max_KH(),@TenKH,@GioiTinh,@CMND,@SDT,@DiaChi,@Username)
end
GO
/****** Object:  StoredProcedure [dbo].[pr_AddNhanVien]    Script Date: 01/20/2022 15:12:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pr_AddNhanVien] @TenNV nvarchar(50),
						 @SDT char(11),
						 @CMND char(10),
						 @MaBP char(10), 
						 @ChucVu nvarchar(20), 
						 @Luong decimal(18,0), 
						 @Username char(20),	
						 @PassWord char(20)			 
as
begin
	exec pr_AddAccount @UserName, @PassWord, 'NV'
	 insert into NHANVIEN (MaNV, TenNV, SDT, CMND, MaBP, ChucVu, Luong, UserName)
	 values(dbo.Max_NV(),@TenNV,@SDT,@CMND,@MaBP,@ChucVu,@Luong,@Username)
end
GO
/****** Object:  ForeignKey [FK_HOADON_DATTIEC]    Script Date: 01/20/2022 15:12:47 ******/
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_DATTIEC] FOREIGN KEY([MaTiec])
REFERENCES [dbo].[DATTIEC] ([MaTiec])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_DATTIEC]
GO
/****** Object:  ForeignKey [FK_DATTIEC_KHACHHANG]    Script Date: 01/20/2022 15:12:47 ******/
ALTER TABLE [dbo].[DATTIEC]  WITH CHECK ADD  CONSTRAINT [FK_DATTIEC_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DATTIEC] CHECK CONSTRAINT [FK_DATTIEC_KHACHHANG]
GO
/****** Object:  ForeignKey [FK_DATTIEC_NHANVIEN]    Script Date: 01/20/2022 15:12:47 ******/
ALTER TABLE [dbo].[DATTIEC]  WITH CHECK ADD  CONSTRAINT [FK_DATTIEC_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[DATTIEC] CHECK CONSTRAINT [FK_DATTIEC_NHANVIEN]
GO
/****** Object:  ForeignKey [FK_DATTIEC_Sanh]    Script Date: 01/20/2022 15:12:47 ******/
ALTER TABLE [dbo].[DATTIEC]  WITH CHECK ADD  CONSTRAINT [FK_DATTIEC_Sanh] FOREIGN KEY([MaSanh])
REFERENCES [dbo].[Sanh] ([MaSanh])
GO
ALTER TABLE [dbo].[DATTIEC] CHECK CONSTRAINT [FK_DATTIEC_Sanh]
GO
/****** Object:  ForeignKey [fk_MaTiec1]    Script Date: 01/20/2022 15:12:47 ******/
ALTER TABLE [dbo].[DATMONAN]  WITH CHECK ADD  CONSTRAINT [fk_MaTiec1] FOREIGN KEY([MaTiec])
REFERENCES [dbo].[DATTIEC] ([MaTiec])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DATMONAN] CHECK CONSTRAINT [fk_MaTiec1]
GO
/****** Object:  ForeignKey [FK_MONAN_DATTIEC_DATTIEC]    Script Date: 01/20/2022 15:12:47 ******/
ALTER TABLE [dbo].[DATMONAN]  WITH CHECK ADD  CONSTRAINT [FK_MONAN_DATTIEC_DATTIEC] FOREIGN KEY([MaTiec])
REFERENCES [dbo].[DATTIEC] ([MaTiec])
GO
ALTER TABLE [dbo].[DATMONAN] CHECK CONSTRAINT [FK_MONAN_DATTIEC_DATTIEC]
GO
/****** Object:  ForeignKey [FK_MONAN_DATTIEC_MONAN]    Script Date: 01/20/2022 15:12:47 ******/
ALTER TABLE [dbo].[DATMONAN]  WITH CHECK ADD  CONSTRAINT [FK_MONAN_DATTIEC_MONAN] FOREIGN KEY([MaMA])
REFERENCES [dbo].[MONAN] ([MaMA])
GO
ALTER TABLE [dbo].[DATMONAN] CHECK CONSTRAINT [FK_MONAN_DATTIEC_MONAN]
GO
/****** Object:  ForeignKey [FK_DICHVU_DATTIEC_DATTIEC]    Script Date: 01/20/2022 15:12:47 ******/
ALTER TABLE [dbo].[DATDICHVU]  WITH CHECK ADD  CONSTRAINT [FK_DICHVU_DATTIEC_DATTIEC] FOREIGN KEY([MaTiec])
REFERENCES [dbo].[DATTIEC] ([MaTiec])
GO
ALTER TABLE [dbo].[DATDICHVU] CHECK CONSTRAINT [FK_DICHVU_DATTIEC_DATTIEC]
GO
/****** Object:  ForeignKey [FK_DICHVU_DATTIEC_DICHVU]    Script Date: 01/20/2022 15:12:47 ******/
ALTER TABLE [dbo].[DATDICHVU]  WITH CHECK ADD  CONSTRAINT [FK_DICHVU_DATTIEC_DICHVU] FOREIGN KEY([MaDV])
REFERENCES [dbo].[DICHVU] ([MaDV])
GO
ALTER TABLE [dbo].[DATDICHVU] CHECK CONSTRAINT [FK_DICHVU_DATTIEC_DICHVU]
GO
/****** Object:  ForeignKey [fk_MaTiec]    Script Date: 01/20/2022 15:12:47 ******/
ALTER TABLE [dbo].[DATDICHVU]  WITH CHECK ADD  CONSTRAINT [fk_MaTiec] FOREIGN KEY([MaTiec])
REFERENCES [dbo].[DATTIEC] ([MaTiec])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DATDICHVU] CHECK CONSTRAINT [fk_MaTiec]
GO
/****** Object:  ForeignKey [FK_NHANVIEN_ACCOUNT]    Script Date: 01/20/2022 15:12:48 ******/
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_ACCOUNT] FOREIGN KEY([UserName])
REFERENCES [dbo].[ACCOUNT] ([UserName])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_ACCOUNT]
GO
/****** Object:  ForeignKey [FK_NHANVIEN_BOPHAN]    Script Date: 01/20/2022 15:12:48 ******/
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_BOPHAN] FOREIGN KEY([MaBP])
REFERENCES [dbo].[BOPHAN] ([MaBP])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_BOPHAN]
GO
/****** Object:  ForeignKey [FK_KHACHHANG_ACCOUNT]    Script Date: 01/20/2022 15:12:48 ******/
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD  CONSTRAINT [FK_KHACHHANG_ACCOUNT] FOREIGN KEY([UserName])
REFERENCES [dbo].[ACCOUNT] ([UserName])
GO
ALTER TABLE [dbo].[KHACHHANG] CHECK CONSTRAINT [FK_KHACHHANG_ACCOUNT]
GO
