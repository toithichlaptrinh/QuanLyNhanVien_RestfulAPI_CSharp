USE [QuanLyNV]
GO
/****** Object:  Table [dbo].[CHUCVU]    Script Date: 4/19/2019 3:56:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUCVU](
	[MaChucVu] [int] IDENTITY(1,1) NOT NULL,
	[TenChucVu] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 4/19/2019 3:56:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](max) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[CMND] [varchar](12) NULL,
	[QuocGia] [nvarchar](100) NULL,
	[TonGiao] [nvarchar](50) NULL,
	[DiaChiHienTai] [nvarchar](max) NULL,
	[SoDienThoai] [varchar](12) NULL,
	[Email] [varchar](max) NULL,
	[TinhTrangLamViec] [bit] NULL,
 CONSTRAINT [PK__NHANVIEN__77B2CA471DADC824] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN_PHONGBAN]    Script Date: 4/19/2019 3:56:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN_PHONGBAN](
	[MaNV_PB] [int] IDENTITY(1,1) NOT NULL,
	[TenTaiKhoan] [varchar](100) NULL,
	[MatKhau] [varchar](200) NULL,
	[MaNhanVien] [int] NULL,
	[MaPhongBan] [int] NULL,
	[MaChucVu] [int] NULL,
 CONSTRAINT [PK_NHANVIEN_PHONGBAN] PRIMARY KEY CLUSTERED 
(
	[MaNV_PB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHONGBAN]    Script Date: 4/19/2019 3:56:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONGBAN](
	[MaPhongBan] [int] IDENTITY(1,1) NOT NULL,
	[TenPhongBan] [nvarchar](max) NULL,
	[SoDienThoai] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhongBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CHUCVU] ON 

INSERT [dbo].[CHUCVU] ([MaChucVu], [TenChucVu]) VALUES (1, N'Adminstator')
INSERT [dbo].[CHUCVU] ([MaChucVu], [TenChucVu]) VALUES (2, N'Quản lý')
INSERT [dbo].[CHUCVU] ([MaChucVu], [TenChucVu]) VALUES (3, N'Nhân viên')
SET IDENTITY_INSERT [dbo].[CHUCVU] OFF
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([MaNhanVien], [HoTen], [GioiTinh], [NgaySinh], [CMND], [QuocGia], [TonGiao], [DiaChiHienTai], [SoDienThoai], [Email], [TinhTrangLamViec]) VALUES (3, N'Bát Giới', N'Nam', CAST(N'2019-04-10' AS Date), N'0253712310', N'Việt nam', N'Hồi Giáo', N'Tây Thiên', N'0987654321', N'batgioi@gmail.com', 1)
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [HoTen], [GioiTinh], [NgaySinh], [CMND], [QuocGia], [TonGiao], [DiaChiHienTai], [SoDienThoai], [Email], [TinhTrangLamViec]) VALUES (4, N'Sa Tăng', N'Nam', CAST(N'2019-04-11' AS Date), N'0253712309', N'Trung Quốc', N'Phật', N'Hoàng Hà', N'0987874522', N'satang@gmail.com', 1)
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [HoTen], [GioiTinh], [NgaySinh], [CMND], [QuocGia], [TonGiao], [DiaChiHienTai], [SoDienThoai], [Email], [TinhTrangLamViec]) VALUES (5, N'Duy Nguyễn', N'Nam', CAST(N'2019-04-11' AS Date), N'0253712309', N'Việt Nam', N'Không có', N'69 Thủ Đức', N'0987874522', N'duynguyen@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
SET IDENTITY_INSERT [dbo].[NHANVIEN_PHONGBAN] ON 

INSERT [dbo].[NHANVIEN_PHONGBAN] ([MaNV_PB], [TenTaiKhoan], [MatKhau], [MaNhanVien], [MaPhongBan], [MaChucVu]) VALUES (7, N'admin', N'qxoKkL2pWlzkHFmQNunjZA==', 5, 6, 1)
INSERT [dbo].[NHANVIEN_PHONGBAN] ([MaNV_PB], [TenTaiKhoan], [MatKhau], [MaNhanVien], [MaPhongBan], [MaChucVu]) VALUES (12, N'satang1', N'qxoKkL2pWlzkHFmQNunjZA==', 4, 6, 2)
INSERT [dbo].[NHANVIEN_PHONGBAN] ([MaNV_PB], [TenTaiKhoan], [MatKhau], [MaNhanVien], [MaPhongBan], [MaChucVu]) VALUES (13, N'batgioi1', N'Td+4olY8M3hsRLtQoMao2Q==', 3, 5, 2)
INSERT [dbo].[NHANVIEN_PHONGBAN] ([MaNV_PB], [TenTaiKhoan], [MatKhau], [MaNhanVien], [MaPhongBan], [MaChucVu]) VALUES (18, N'satang', N'Td+4olY8M3hsRLtQoMao2Q==', 4, 8, 3)
SET IDENTITY_INSERT [dbo].[NHANVIEN_PHONGBAN] OFF
SET IDENTITY_INSERT [dbo].[PHONGBAN] ON 

INSERT [dbo].[PHONGBAN] ([MaPhongBan], [TenPhongBan], [SoDienThoai]) VALUES (1, N'Kế toán', N'0269966996')
INSERT [dbo].[PHONGBAN] ([MaPhongBan], [TenPhongBan], [SoDienThoai]) VALUES (2, N'Hành chính', N'0254782372')
INSERT [dbo].[PHONGBAN] ([MaPhongBan], [TenPhongBan], [SoDienThoai]) VALUES (3, N'Kiểm toán', N'0254782373')
INSERT [dbo].[PHONGBAN] ([MaPhongBan], [TenPhongBan], [SoDienThoai]) VALUES (4, N'Chăm sóc Khách hàng', N'0254782374')
INSERT [dbo].[PHONGBAN] ([MaPhongBan], [TenPhongBan], [SoDienThoai]) VALUES (5, N'Nhân sự', N'0254782375')
INSERT [dbo].[PHONGBAN] ([MaPhongBan], [TenPhongBan], [SoDienThoai]) VALUES (6, N'Công nghệ thông tin', N'0254782376')
INSERT [dbo].[PHONGBAN] ([MaPhongBan], [TenPhongBan], [SoDienThoai]) VALUES (7, N'Quan hệ Quốc tế', N'0254782377')
INSERT [dbo].[PHONGBAN] ([MaPhongBan], [TenPhongBan], [SoDienThoai]) VALUES (8, N'Quan hệ công chúng', N'0254782378')
INSERT [dbo].[PHONGBAN] ([MaPhongBan], [TenPhongBan], [SoDienThoai]) VALUES (9, N'Kinh doanh', N'0254782379')
INSERT [dbo].[PHONGBAN] ([MaPhongBan], [TenPhongBan], [SoDienThoai]) VALUES (10, N'Nghiên cứu và phát triển sản phẩm', N'0254782392122')
SET IDENTITY_INSERT [dbo].[PHONGBAN] OFF
ALTER TABLE [dbo].[NHANVIEN_PHONGBAN]  WITH CHECK ADD  CONSTRAINT [FK_CHUCVU_PHONGBAN_NHANVIEN] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[CHUCVU] ([MaChucVu])
GO
ALTER TABLE [dbo].[NHANVIEN_PHONGBAN] CHECK CONSTRAINT [FK_CHUCVU_PHONGBAN_NHANVIEN]
GO
ALTER TABLE [dbo].[NHANVIEN_PHONGBAN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_PHONGBAN_NHANVIEN] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NHANVIEN] ([MaNhanVien])
GO
ALTER TABLE [dbo].[NHANVIEN_PHONGBAN] CHECK CONSTRAINT [FK_NHANVIEN_PHONGBAN_NHANVIEN]
GO
ALTER TABLE [dbo].[NHANVIEN_PHONGBAN]  WITH CHECK ADD  CONSTRAINT [FK_PHONGBAN_PHONGBAN_NHANVIEN] FOREIGN KEY([MaPhongBan])
REFERENCES [dbo].[PHONGBAN] ([MaPhongBan])
GO
ALTER TABLE [dbo].[NHANVIEN_PHONGBAN] CHECK CONSTRAINT [FK_PHONGBAN_PHONGBAN_NHANVIEN]
GO
/****** Object:  StoredProcedure [dbo].[LoginByUsernamePassword]    Script Date: 4/19/2019 3:56:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================  
-- Author:      <Author,,Asma Khalid>  
-- Create date: <Create Date,,15-Mar-2016>  
-- Description: <Description,,You are Allow to Distribute this Code>  
-- =============================================  
CREATE PROCEDURE [dbo].[LoginByUsernamePassword]   
    @username varchar(50),  
    @password varchar(50)  
AS  
BEGIN  
    SELECT id, username, password  
    FROM Login  
    WHERE username = @username  
    AND password = @password  
END  
  
GO
