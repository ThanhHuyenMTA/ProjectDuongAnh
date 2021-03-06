USE [dbXulyTThs]
GO
/****** Object:  Table [dbo].[BANGTOTNGHIEP]    Script Date: 5/20/2018 10:42:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BANGTOTNGHIEP](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[NoiSinh] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](3) NOT NULL,
	[DanToc] [nvarchar](50) NOT NULL,
	[KhoaThi] [datetime] NULL,
	[HoiDongThi] [nvarchar](150) NULL,
	[NgayLap] [datetime] NOT NULL,
	[SoHieu] [nvarchar](20) NOT NULL,
	[SovaoSoCapBang] [nvarchar](20) NOT NULL,
	[fileBTN] [ntext] NULL,
 CONSTRAINT [PK_BANGTOTNGHIEP_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BAOCAOTHONGKE]    Script Date: 5/20/2018 10:42:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAOCAOTHONGKE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [datetime] NULL,
	[NoiDung] [ntext] NULL,
	[ChuThich] [ntext] NULL,
 CONSTRAINT [PK_BAOCAOTHONGKE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CMT]    Script Date: 5/20/2018 10:42:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CMT](
	[SoCMT] [varchar](20) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[TenGoiKhac] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NOT NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[QuocTich] [nvarchar](50) NULL,
	[QueQuan] [nvarchar](200) NOT NULL,
	[NoiThuongTru] [nvarchar](200) NOT NULL,
	[GiaTriDen] [datetime] NULL,
	[DanToc] [nvarchar](50) NULL,
	[TonGiao] [nvarchar](50) NULL,
	[DauVetRieng] [ntext] NULL,
	[NgayCap] [datetime] NOT NULL,
	[NoiCap] [nvarchar](200) NOT NULL,
	[LoaiCMT] [int] NOT NULL,
	[fileCMT] [ntext] NULL,
 CONSTRAINT [PK_CMT] PRIMARY KEY CLUSTERED 
(
	[SoCMT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_BCTK]    Script Date: 5/20/2018 10:42:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_BCTK](
	[id_HD] [int] NOT NULL,
	[id_BCTK] [int] NOT NULL,
	[HinhThuc] [nvarchar](50) NULL,
	[ChuThich] [ntext] NULL,
	[NgayLap] [datetime] NULL,
 CONSTRAINT [PK_CT_BCTK] PRIMARY KEY CLUSTERED 
(
	[id_HD] ASC,
	[id_BCTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CT_LOTRINH]    Script Date: 5/20/2018 10:42:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_LOTRINH](
	[id_HSHS] [int] NOT NULL,
	[id_LOTRINH] [int] NOT NULL,
	[TGBatDau] [datetime] NULL,
	[TGKetThuc] [datetime] NULL,
	[TinhTrang] [nvarchar](100) NULL,
	[ChuThich] [ntext] NULL,
 CONSTRAINT [PK_CT_LOTRINH] PRIMARY KEY CLUSTERED 
(
	[id_HSHS] ASC,
	[id_LOTRINH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GIAYCHUNGTHUC]    Script Date: 5/20/2018 10:42:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIAYCHUNGTHUC](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenGiay] [nvarchar](300) NULL,
	[Anh] [ntext] NULL,
	[MoTa] [ntext] NULL,
	[id_HSHS] [int] NULL,
 CONSTRAINT [PK_GIAYCHUNGTHUC] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GIAYKHAISINH]    Script Date: 5/20/2018 10:42:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIAYKHAISINH](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[NoiSinh] [nvarchar](200) NOT NULL,
	[QueQuan] [nvarchar](200) NOT NULL,
	[GioiTinh] [nvarchar](3) NOT NULL,
	[DanToc] [nvarchar](50) NOT NULL,
	[QuocTich] [nvarchar](50) NULL,
	[HoTenMe] [nvarchar](50) NULL,
	[NsMe] [nvarchar](4) NULL,
	[DanTocMe] [nvarchar](50) NULL,
	[QuocTichMe] [nvarchar](50) NULL,
	[NoiCuTruMe] [nvarchar](200) NULL,
	[HoTenBo] [nvarchar](50) NULL,
	[NsBo] [nvarchar](4) NULL,
	[DanTocBo] [nvarchar](50) NULL,
	[QuocTichBo] [nvarchar](50) NULL,
	[NoiCuTruBo] [nvarchar](200) NULL,
	[NoiDangKy] [nvarchar](50) NULL,
	[NgayLap] [datetime] NOT NULL,
	[fileGKS] [ntext] NULL,
 CONSTRAINT [PK_GIAYKHAISINH] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiayNhapHoc]    Script Date: 5/20/2018 10:42:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiayNhapHoc](
	[id_gnh] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](200) NULL,
	[TinhTrangHn] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[HoChieu] [int] NULL,
	[NamHc] [int] NULL,
	[ThangHc] [int] NULL,
	[NgayHc] [int] NULL,
	[NoiOHienTai] [nvarchar](200) NULL,
	[TruongC1] [nvarchar](200) NULL,
	[DiaChiC1] [nvarchar](200) NOT NULL,
	[Ngaybd1] [nvarchar](50) NULL,
	[Ngaykt1] [nvarchar](50) NULL,
	[Tong1] [int] NULL,
	[TruongC2] [nvarchar](200) NULL,
	[DiaChiC2] [nvarchar](200) NULL,
	[Ngaybd2] [nvarchar](50) NULL,
	[Ngaykt2] [nvarchar](50) NULL,
	[Tong2] [int] NULL,
	[TruongC3] [nvarchar](200) NULL,
	[DiaChiC3] [nvarchar](200) NULL,
	[Ngaybd3] [nvarchar](50) NULL,
	[Ngaykt3] [nvarchar](50) NULL,
	[Tong3] [int] NULL,
	[TenTrungTam1] [nvarchar](200) NULL,
	[DiaChitt1] [nvarchar](200) NULL,
	[NgayNhapHoc1] [nvarchar](50) NULL,
	[NgayThoiHoc1] [nvarchar](50) NULL,
	[TenTrungTam2] [nvarchar](200) NULL,
	[DiaChitt2] [nvarchar](200) NULL,
	[NgayNhapHoc2] [nvarchar](50) NULL,
	[NgayThoiHoc2] [nvarchar](50) NULL,
	[TenTrungTam3] [nvarchar](200) NULL,
	[Diachitt3] [nvarchar](200) NULL,
	[NgayNhapHoc3] [nvarchar](50) NULL,
	[NgayThoiHoc3] [nvarchar](50) NULL,
	[TenCty] [nvarchar](200) NULL,
	[DiaChiCty] [nvarchar](200) NULL,
	[NgayVaoCty] [nvarchar](50) NULL,
	[NgayRaCty] [nvarchar](50) NULL,
	[NgayNhapCanh] [nvarchar](50) NULL,
	[NgayKhoiHanh] [nvarchar](50) NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[MucDichNhapCanh] [nvarchar](200) NULL,
	[MucDichDuHoc] [nvarchar](200) NULL,
	[KeHoachSauHoc] [nvarchar](100) NULL,
	[ThoiLuongHoc] [nvarchar](50) NULL,
	[TinhTrangBiTuChoi] [nvarchar](50) NULL,
	[TinhTrangXinVisa] [nvarchar](50) NULL,
	[ViPham] [nvarchar](50) NULL,
	[NgayLap] [int] NULL,
	[ThangLap] [int] NULL,
	[NamLap] [int] NULL,
	[NguoiLap] [nvarchar](100) NULL,
	[id_hs] [int] NULL,
 CONSTRAINT [PK_GiayNhapHoc] PRIMARY KEY CLUSTERED 
(
	[id_gnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOCBA]    Script Date: 5/20/2018 10:42:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCBA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[NoiSinh] [nvarchar](200) NOT NULL,
	[GioiTinh] [nvarchar](3) NOT NULL,
	[DanToc] [nvarchar](50) NOT NULL,
	[NoiSongHienTai] [nvarchar](200) NOT NULL,
	[HoTenBo] [nvarchar](50) NULL,
	[NgheNghiepBo] [nvarchar](50) NULL,
	[HoTenMe] [nvarchar](50) NULL,
	[NgheNghiepMe] [nvarchar](50) NULL,
	[NguoiGiamHo] [nvarchar](50) NULL,
	[NgheNghiepNGH] [nvarchar](50) NULL,
	[NgayLap] [datetime] NOT NULL,
	[fileHB] [ntext] NULL,
 CONSTRAINT [PK_HOCBA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOCSINH]    Script Date: 5/20/2018 10:42:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HOCSINH](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenHS] [nvarchar](50) NOT NULL,
	[SoCMT] [varchar](20) NULL,
	[sdt] [varchar](20) NOT NULL,
	[email] [text] NULL,
	[anh] [text] NULL,
	[id_GKS] [int] NULL,
	[id_BTN] [int] NULL,
	[id_HB] [int] NULL,
	[id_NgGiamHo] [varchar](20) NULL,
	[timeStart] [varchar](4) NOT NULL,
	[NguoiTao] [int] NULL,
 CONSTRAINT [PK_HOCSINH] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoKhau]    Script Date: 5/20/2018 10:42:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoKhau](
	[id_hokhau] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](200) NULL,
	[QuocTich] [nvarchar](200) NULL,
	[Tuoi] [int] NULL,
	[DiaChi] [nvarchar](200) NULL,
	[NgheNghiep] [nvarchar](200) NULL,
	[QuanHe] [nvarchar](200) NULL,
	[id_hs] [int] NULL,
	[fileSHK] [ntext] NULL,
 CONSTRAINT [PK_HoKhau] PRIMARY KEY CLUSTERED 
(
	[id_hokhau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOPDONG]    Script Date: 5/20/2018 10:42:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOPDONG](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TrangThai] [nvarchar](50) NULL,
	[NgayKy] [datetime] NULL,
	[HanHopDong] [datetime] NULL,
	[ThanhToan] [nvarchar](100) NULL,
	[NoiDung] [ntext] NULL,
	[NguoiLap] [nvarchar](50) NULL,
	[id_HSHS] [int] NULL,
 CONSTRAINT [PK_HOPDONG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOSOHS]    Script Date: 5/20/2018 10:42:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HOSOHS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SoCMT_NGH] [varchar](20) NULL,
	[id_HS] [int] NULL,
 CONSTRAINT [PK_HOSOHS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KIHOC]    Script Date: 5/20/2018 10:42:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KIHOC](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenKiHoc] [nvarchar](50) NULL,
	[id_NAMHOC] [int] NULL,
	[Toan] [float] NULL,
	[Ly] [float] NULL,
	[Hoa] [float] NULL,
	[Sinh] [float] NULL,
	[Tin] [float] NULL,
	[Van] [float] NULL,
	[Su] [float] NULL,
	[Dia] [float] NULL,
	[NgoaiNgu] [float] NULL,
	[CongNghe] [float] NULL,
	[QuocPhongAnNinh] [float] NULL,
	[TheDuc] [nvarchar](5) NULL,
	[TuChon] [float] NULL,
	[GiaoDucCongDan] [float] NULL,
	[DiemTrungBinh] [float] NULL,
 CONSTRAINT [PK_KIHOC] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LOTRINH]    Script Date: 5/20/2018 10:42:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOTRINH](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenLoTrinh] [nvarchar](200) NULL,
	[TGBatDau] [datetime] NULL,
	[TGKetThuc] [datetime] NULL,
	[Mota] [ntext] NOT NULL,
 CONSTRAINT [PK_LOTRINH] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NAMHOC]    Script Date: 5/20/2018 10:42:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NAMHOC](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ThoiGian] [nvarchar](20) NULL,
	[TenLop] [nvarchar](50) NULL,
	[TenTruong] [nvarchar](200) NULL,
	[id_HB] [int] NULL,
	[StatusNH] [bit] NULL,
 CONSTRAINT [PK_NAMHOC] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NGUOIGIAMHO]    Script Date: 5/20/2018 10:42:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NGUOIGIAMHO](
	[SoCMT] [varchar](20) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[TenGoiKhac] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NOT NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[QuocTich] [nvarchar](50) NULL,
	[QueQuan] [nvarchar](200) NOT NULL,
	[NoiThuongTru] [nvarchar](200) NOT NULL,
	[GiaTriDen] [datetime] NULL,
	[DanToc] [nvarchar](50) NULL,
	[TonGiao] [nvarchar](50) NULL,
	[DauVetRieng] [ntext] NULL,
	[NgayCap] [datetime] NOT NULL,
	[NoiCap] [nvarchar](200) NOT NULL,
	[LoaiCMT] [int] NOT NULL,
	[file_CMTNGH] [ntext] NULL,
 CONSTRAINT [PK_NGUOIGIAMHO] PRIMARY KEY CLUSTERED 
(
	[SoCMT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 5/20/2018 10:42:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [text] NULL,
	[DiaChi] [nvarchar](200) NULL,
	[SoDT] [nvarchar](50) NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [text] NULL,
	[id_Quyen] [int] NULL,
	[NguoiTao] [int] NULL,
	[NgayTao] [date] NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHANQUYEN]    Script Date: 5/20/2018 10:42:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANQUYEN](
	[id_quyen] [int] NOT NULL,
	[id_truycap] [int] NOT NULL,
	[MoTa] [ntext] NULL,
 CONSTRAINT [PK_QUANTRI] PRIMARY KEY CLUSTERED 
(
	[id_quyen] ASC,
	[id_truycap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QUYEN]    Script Date: 5/20/2018 10:42:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUYEN](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](150) NULL,
	[MoTa] [nvarchar](200) NULL,
 CONSTRAINT [PK_QUYEN_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QUYENTRUYCAP]    Script Date: 5/20/2018 10:42:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUYENTRUYCAP](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](150) NULL,
	[LinkTruy Cap] [ntext] NULL,
 CONSTRAINT [PK_QUYEN] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TABLE_LOI]    Script Date: 5/20/2018 10:42:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TABLE_LOI](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_HS] [int] NULL,
	[So_CMT] [varchar](20) NULL,
	[id_BTN] [int] NULL,
	[id_GKS] [int] NULL,
	[id_HB] [int] NULL,
	[TypeLOI] [nvarchar](150) NULL,
	[TimeStart] [datetime] NULL,
	[TimeEnd] [datetime] NULL,
	[TrangThai] [varchar](20) NULL,
	[NguoiSua] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_TABLE_LOI] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BANGTOTNGHIEP] ON 

INSERT [dbo].[BANGTOTNGHIEP] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [KhoaThi], [HoiDongThi], [NgayLap], [SoHieu], [SovaoSoCapBang], [fileBTN]) VALUES (1, N'LÊ THỊ THANH HUYỀN', CAST(N'1995-08-15 00:00:00.000' AS DateTime), N'Nghệ An', N'Nữ', N'Kinh', CAST(N'2018-08-10 00:00:00.000' AS DateTime), N'Hội đồng PT', CAST(N'2018-08-05 00:00:00.000' AS DateTime), N'SH001', N'SCB001', N'7. bang tot nghiep THPT.pdf')
INSERT [dbo].[BANGTOTNGHIEP] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [KhoaThi], [HoiDongThi], [NgayLap], [SoHieu], [SovaoSoCapBang], [fileBTN]) VALUES (2, N'TRẦN THỊ NGỌC', CAST(N'2018-10-04 00:00:00.000' AS DateTime), N'Hải Dương', N'Nữ', N'Kinh', CAST(N'2018-09-04 00:00:00.000' AS DateTime), N'Hội đồng PT', CAST(N'2018-09-04 00:00:00.000' AS DateTime), N'SH002', N'SCB002', N'BTN.pdf')
INSERT [dbo].[BANGTOTNGHIEP] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [KhoaThi], [HoiDongThi], [NgayLap], [SoHieu], [SovaoSoCapBang], [fileBTN]) VALUES (3, N'LÊ ANH MINH', CAST(N'2018-09-04 00:00:00.000' AS DateTime), N'Hải Dương', N'Nữ', N'Kinh', CAST(N'2018-09-04 00:00:00.000' AS DateTime), N'Hội đồng PT', CAST(N'2018-09-04 00:00:00.000' AS DateTime), N'SH003', N'SCB003', NULL)
INSERT [dbo].[BANGTOTNGHIEP] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [KhoaThi], [HoiDongThi], [NgayLap], [SoHieu], [SovaoSoCapBang], [fileBTN]) VALUES (4, N'VŨ THỊ HẰNG', CAST(N'1994-02-02 00:00:00.000' AS DateTime), N'Nam Định', N'Nữ', N'Kinh', CAST(N'2010-09-04 00:00:00.000' AS DateTime), N'Hội đồng PT', CAST(N'2010-09-04 00:00:00.000' AS DateTime), N'SH004', N'SCB004', N'BTN.pdf')
INSERT [dbo].[BANGTOTNGHIEP] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [KhoaThi], [HoiDongThi], [NgayLap], [SoHieu], [SovaoSoCapBang], [fileBTN]) VALUES (5, N'LÊ LƯƠNG SƠN', CAST(N'2018-09-04 00:00:00.000' AS DateTime), N'Nghệ An', N'Nam', N'Kinh', CAST(N'2018-09-04 00:00:00.000' AS DateTime), N'Hội đồng PT', CAST(N'2018-09-04 00:00:00.000' AS DateTime), N'SH005', N'SCB005', NULL)
INSERT [dbo].[BANGTOTNGHIEP] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [KhoaThi], [HoiDongThi], [NgayLap], [SoHieu], [SovaoSoCapBang], [fileBTN]) VALUES (6, N'LÊ THỊ THANH HƯƠNG', CAST(N'2018-04-12 00:00:00.000' AS DateTime), N'Nghệ An', N'Nam', N'Kinh', CAST(N'2018-04-13 00:00:00.000' AS DateTime), N'Hội đồng PT', CAST(N'2018-04-05 00:00:00.000' AS DateTime), N'SH006', N'SCB006', N'BTN.pdf')
INSERT [dbo].[BANGTOTNGHIEP] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [KhoaThi], [HoiDongThi], [NgayLap], [SoHieu], [SovaoSoCapBang], [fileBTN]) VALUES (7, N'PHẠM TIẾN HƯNG', CAST(N'1997-04-06 00:00:00.000' AS DateTime), N'Hà Tây', N'Nam', N'Kinh', CAST(N'2018-04-04 00:00:00.000' AS DateTime), N'Hội đồng PT Hà Tây', CAST(N'2018-04-05 00:00:00.000' AS DateTime), N'SH110', N'SCB110', N'7. bang tot nghiep THPT.pdf')
INSERT [dbo].[BANGTOTNGHIEP] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [KhoaThi], [HoiDongThi], [NgayLap], [SoHieu], [SovaoSoCapBang], [fileBTN]) VALUES (8, N'PHẠM HỮU THẮNG', CAST(N'2013-08-04 00:00:00.000' AS DateTime), N'Nam Định', N'Nam', N'Kinh', CAST(N'2018-04-11 00:00:00.000' AS DateTime), N'Hội đồng THPT Nam Định', CAST(N'1996-09-09 00:00:00.000' AS DateTime), N'SH0111', N'SCB0111', NULL)
INSERT [dbo].[BANGTOTNGHIEP] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [KhoaThi], [HoiDongThi], [NgayLap], [SoHieu], [SovaoSoCapBang], [fileBTN]) VALUES (9, N'NGUYỄN MẠNH NAM', CAST(N'2010-09-09 00:00:00.000' AS DateTime), N'Nam Định', N'Nữ', N'Kinh', CAST(N'2018-12-12 00:00:00.000' AS DateTime), N'Hội đồng THPT Nam Định', CAST(N'2019-08-07 00:00:00.000' AS DateTime), N'SH112', N'SCB112', NULL)
INSERT [dbo].[BANGTOTNGHIEP] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [KhoaThi], [HoiDongThi], [NgayLap], [SoHieu], [SovaoSoCapBang], [fileBTN]) VALUES (10, N'NGUYỄN MẠNH NAM', CAST(N'1995-05-03 00:00:00.000' AS DateTime), N'Nghệ An', N'Nam', N'Kinh', CAST(N'2018-05-03 00:00:00.000' AS DateTime), N'Hội đồng PT', CAST(N'2018-05-09 00:00:00.000' AS DateTime), N'SH0092', N'SCB0092', N'7. bang tot nghiep THPT.pdf')
INSERT [dbo].[BANGTOTNGHIEP] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [KhoaThi], [HoiDongThi], [NgayLap], [SoHieu], [SovaoSoCapBang], [fileBTN]) VALUES (11, N'Hồ Mai Anh', CAST(N'2018-05-10 00:00:00.000' AS DateTime), N'Hà Nam', N'Nữ', N'Kinh', CAST(N'2018-05-09 00:00:00.000' AS DateTime), N'Hội đồng PT Hà Nam', CAST(N'2015-09-09 00:00:00.000' AS DateTime), N'SH0128', N'SCB0128', N'7. bang tot nghiep THPT.pdf')
INSERT [dbo].[BANGTOTNGHIEP] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [KhoaThi], [HoiDongThi], [NgayLap], [SoHieu], [SovaoSoCapBang], [fileBTN]) VALUES (12, N'testbtn1_update1', CAST(N'2018-05-01 00:00:00.000' AS DateTime), N'Nghệ An', N'Nữ', N'Kinh', CAST(N'2018-05-13 00:00:00.000' AS DateTime), N'Hội đồng PT', CAST(N'2018-05-13 00:00:00.000' AS DateTime), N'SH00138', N'SCB00138', N'7. bang tot nghiep THPT.pdf')
INSERT [dbo].[BANGTOTNGHIEP] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [KhoaThi], [HoiDongThi], [NgayLap], [SoHieu], [SovaoSoCapBang], [fileBTN]) VALUES (14, N'Nguyễn Thị Cẩm Tú_ update', CAST(N'1990-05-20 00:00:00.000' AS DateTime), N'Ngõ 195 Trần Cung, Bắc Từ Liêm, Hà Nội', N'Nữ', N'Kinh', CAST(N'2010-05-20 00:00:00.000' AS DateTime), N'Hội đồng PT Hà Nội', CAST(N'2010-05-20 00:00:00.000' AS DateTime), N'SH00158', N'SCB00158', N'7. bang tot nghiep THPT.pdf')
INSERT [dbo].[BANGTOTNGHIEP] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [KhoaThi], [HoiDongThi], [NgayLap], [SoHieu], [SovaoSoCapBang], [fileBTN]) VALUES (15, N'Mỹ Tâm', CAST(N'2018-05-20 00:00:00.000' AS DateTime), N'Ngõ 195 Trần Cung, Bắc Từ Liêm, Hà Nội', N'Nữ', N'Kinh', CAST(N'2013-05-20 00:00:00.000' AS DateTime), N'Hội đồng PT Hà Nội', CAST(N'2013-05-20 00:00:00.000' AS DateTime), N'SH00159', N'SCB00159', N'7. bang tot nghiep THPT.pdf')
INSERT [dbo].[BANGTOTNGHIEP] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [KhoaThi], [HoiDongThi], [NgayLap], [SoHieu], [SovaoSoCapBang], [fileBTN]) VALUES (16, N'Thu Hiền', CAST(N'1995-05-20 00:00:00.000' AS DateTime), N'Ngõ 195 Trần Cung, Bắc Từ Liêm, Hà Nội', N'Nữ', N'Kinh', CAST(N'2011-05-20 00:00:00.000' AS DateTime), N'Hội đồng PT Hà Nội', CAST(N'2018-05-20 00:00:00.000' AS DateTime), N'SH00160', N'SCB00160', N'7. bang tot nghiep THPT.pdf')
SET IDENTITY_INSERT [dbo].[BANGTOTNGHIEP] OFF
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'0098989', N'testcmt8787', NULL, CAST(N'1995-05-12 00:00:00.000' AS DateTime), NULL, NULL, N'Nghệ An', N'Nghệ An', NULL, N'Kinh', N'Không', N'fffffffff', CAST(N'2011-05-12 00:00:00.000' AS DateTime), N'CA tỉnh Nghệ An', 1, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'0098989999', N'testcmt8787', NULL, CAST(N'2018-05-12 00:00:00.000' AS DateTime), NULL, NULL, N'Nghệ An', N'Nghệ An', NULL, N'Kinh', N'Không', N'fffffffff', CAST(N'2018-05-12 00:00:00.000' AS DateTime), N'CA tỉnh Nghệ An', 1, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'09090909', N'NGUYỄN TUẤN MINH', N'NGUYỄN TUẤN MINH', CAST(N'1998-09-09 00:00:00.000' AS DateTime), N'Nam', NULL, N'Bắc Ninh', N'Bắc Ninh', CAST(N'2050-09-09 00:00:00.000' AS DateTime), N'Kinh', NULL, N'testRiengCMt2', CAST(N'1998-09-09 00:00:00.000' AS DateTime), N'CA tỉnh Bắc Ninh', 2, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'09568758', N'NGUYỄN TUẤN NGHĨA', NULL, CAST(N'1990-09-09 00:00:00.000' AS DateTime), NULL, NULL, N'Hà Tây, Hà Nội', N'Hà Tây, Hà Nội', NULL, N'Kinh', N'Không', N'testThemMoiR_update', CAST(N'2010-09-15 00:00:00.000' AS DateTime), N'Hà Tây, Hà Nội', 1, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'09849575', N'Hallie Swindley', N'tescmt2A', CAST(N'1997-09-09 00:00:00.000' AS DateTime), N'Nữ', NULL, N'Nam Định', N'Nam Định', CAST(N'1997-09-09 00:00:00.000' AS DateTime), N'Kinh', NULL, N'testcmt2A', CAST(N'1998-09-09 00:00:00.000' AS DateTime), N'CA tỉnh Nam Định', 2, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'187412542', N'LÊ THỊ THANH HUYỀN', NULL, CAST(N'1995-08-15 00:00:00.000' AS DateTime), NULL, NULL, N'Nghệ An', N'Nghệ An', NULL, N'Kinh', N'Không', N'Vết ruồi ở bên 2 má', CAST(N'2018-08-04 00:00:00.000' AS DateTime), N'CA tỉnh Nghệ An', 1, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'290852555', N'NGUYỄN MẠNH', NULL, CAST(N'1995-05-03 00:00:00.000' AS DateTime), NULL, NULL, N'Hải Dương', N'Nghệ An', NULL, N'Kinh', N'Không', N'gggg', CAST(N'2018-05-01 00:00:00.000' AS DateTime), N'CA tỉnh Nghệ An', 1, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'290852666', N'NGUYỄN MẠNH NAM', NULL, CAST(N'2018-05-10 00:00:00.000' AS DateTime), NULL, NULL, N'Nghệ An', N'Nghệ An', NULL, N'Kinh', N'Không', N'hhhhhhgfw', CAST(N'2018-05-10 00:00:00.000' AS DateTime), N'CA tỉnh Nghệ An', 1, N'19148985_1058709690926511_1091863861559916225_n.jpg')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'29085280307', N'LÊ LƯƠNG SƠN', N'SẤM SÉT', CAST(N'2018-09-04 00:00:00.000' AS DateTime), N'Nam', NULL, N'Nghệ An', N'Nghệ An', CAST(N'2050-09-04 00:00:00.000' AS DateTime), N'Kinh', NULL, NULL, CAST(N'2011-09-04 00:00:00.000' AS DateTime), N'CA tỉnh Nghệ An', 2, NULL)
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'29085283', N'PHẠM TIẾN HƯNG', NULL, CAST(N'1997-04-06 00:00:00.000' AS DateTime), NULL, NULL, N'Hà Tây', N'Hà Tây', NULL, N'Kinh', N'Không', N'Đẹp trai', CAST(N'2011-03-28 00:00:00.000' AS DateTime), N'CA Hà Tây', 1, N'CMTHS.pdf')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'290852836', N'yhtfgfdfd', NULL, CAST(N'2018-05-09 00:00:00.000' AS DateTime), NULL, NULL, N'sfdcgf', N'fggfd', NULL, N'dgghfg', N'fdsdxf', N'ddddđ', CAST(N'2018-05-01 00:00:00.000' AS DateTime), N'efdsdcjhbgf', 1, NULL)
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'2908528373', N'TRẦN THỊ NGỌC', NULL, CAST(N'2018-10-04 00:00:00.000' AS DateTime), NULL, NULL, N'HẢI DƯƠNG', N'HẢI DƯƠNG', NULL, N'Kinh', N'Không', N'Xinh đẹp', CAST(N'2018-09-10 00:00:00.000' AS DateTime), N'CA tỉnh Hải Dương', 1, N'CMTHS.pdf')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'290852837998', N'Thu Hiền', NULL, CAST(N'1995-05-20 00:00:00.000' AS DateTime), NULL, NULL, N'Ngõ 195,Trần Cung,Bắc Từ Liêm,Hà Nội', N'Ngõ 195,Trần Cung,Bắc Từ Liêm,Hà Nội', NULL, N'Kinh', N'Không', N'Xinh đẹp', CAST(N'2011-05-20 00:00:00.000' AS DateTime), N'CA Bắc Từ Liêm', 1, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'290852839999', N'Thanh Huyền', NULL, CAST(N'2018-05-25 00:00:00.000' AS DateTime), NULL, NULL, N'Nam Định', N'Hà Tây', NULL, N'Kinh', N'gf', N'jhgfdsa', CAST(N'2018-05-03 00:00:00.000' AS DateTime), N'CA tỉnh Nam Định', 1, NULL)
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'290852844', N'LÊ VĂN TIẾN', NULL, CAST(N'1990-07-27 00:00:00.000' AS DateTime), NULL, NULL, N'Nghệ An', N'Nghệ An', NULL, N'Kinh', N'Không', NULL, CAST(N'2010-04-18 00:00:00.000' AS DateTime), N'CA tỉnh Nghệ An', 1, N'CMTHS.pdf')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'290852888', N'Mỹ Tâm', NULL, CAST(N'2018-05-20 00:00:00.000' AS DateTime), NULL, NULL, N'Ngõ 195,Trần Cung,Bắc Từ Liêm,Hà Nội', N'Ngõ 195,Trần Cung,Bắc Từ Liêm,Hà Nội', NULL, N'Kinh', N'Không', N'Xinh đẹp', CAST(N'2011-05-20 00:00:00.000' AS DateTime), N'CA Bắc Từ Liêm', 1, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'290859999', N'Thanh Huyền ', NULL, CAST(N'2018-05-01 00:00:00.000' AS DateTime), NULL, NULL, N'Nghệ An', N'Nghệ An', NULL, N'Kinh', N'Không', N'jjjjjjjjjjkkkkkkkkkkkkkkkkkkk', CAST(N'2018-05-08 00:00:00.000' AS DateTime), N'CA tỉnh Nghệ An', 1, N'19113898_1058925814238232_3756279773325374874_n.jpg')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'2908666666', N'tesstcmt3', N'tesstcmt3', CAST(N'1990-09-09 00:00:00.000' AS DateTime), N'Nam', N'Việt Nam', N'Hà Nội', N'Hà Nội', CAST(N'2060-09-09 00:00:00.000' AS DateTime), NULL, NULL, N'ffff', CAST(N'1990-09-09 00:00:00.000' AS DateTime), N'CA tỉnh Hà Nội', 3, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'4837876444', N'tesstThem2', N'tesstThem2', CAST(N'1995-09-09 00:00:00.000' AS DateTime), N'Nam', NULL, N'Hải Dương', N'Hải Dương', CAST(N'2060-09-09 00:00:00.000' AS DateTime), N'Kinh', NULL, N'tessThem2', CAST(N'1995-09-09 00:00:00.000' AS DateTime), N'CA tỉnh Hải Dương', 2, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'6666666666', N'testcmt2update', N'testcmt2', CAST(N'1995-09-09 00:00:00.000' AS DateTime), N'Nam', NULL, N'Nha Trang, Khánh Hòa', N'Nha Trang, Khánh Hòa', CAST(N'2050-09-09 00:00:00.000' AS DateTime), N'Kinh', NULL, N'testcmt2_them', CAST(N'1995-09-09 00:00:00.000' AS DateTime), N'CA tỉnh  Khánh Hòa', 2, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'88888888888888', N'test cmt_update888', NULL, CAST(N'2005-10-09 00:00:00.000' AS DateTime), NULL, NULL, N'Thanh Chương, Nghệ An', N'Thanh Chương, Nghệ An', NULL, N'Kinh', N'Không', N'OK!!!!OKEY', CAST(N'2005-09-09 00:00:00.000' AS DateTime), N'CA tỉnh Nghệ An', 1, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'898989999', N'Testcmt3', N'testcmt3', CAST(N'1992-09-09 00:00:00.000' AS DateTime), N'Nam', N'Việt Nam', N'Hà Tĩnh', N'Hà Tĩnh', CAST(N'2080-09-09 00:00:00.000' AS DateTime), NULL, NULL, N'testcmt3_them', CAST(N'1992-09-09 00:00:00.000' AS DateTime), N'CA tỉnh Hà Tĩnh', 3, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'9457685', N'Nguyễn Thị Cẩm Tú', NULL, CAST(N'1990-05-20 00:00:00.000' AS DateTime), NULL, NULL, N'Ngõ 195,Trần Cung,Bắc Từ Liêm,Hà Nội', N'Ngõ 195,Trần Cung,Bắc Từ Liêm,Hà Nội', NULL, N'Kinh', N'Không', N'Vết ruồi bên tai trái', CAST(N'1990-05-20 00:00:00.000' AS DateTime), N'CA Bắc Từ Liêm', 1, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'947868578', N'Hồ Mai Anh', N'Hồ Mai Anh', CAST(N'2018-05-09 00:00:00.000' AS DateTime), N'Nữ', N'Việt Nam', N'Hà Nam', N'Hà Nam', CAST(N'2018-05-09 00:00:00.000' AS DateTime), NULL, NULL, N'Vết bớt', CAST(N'2018-05-10 00:00:00.000' AS DateTime), N'CA tỉnh Hà Nam', 3, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'96985768788', N'testthemRcmt1', NULL, CAST(N'1997-09-09 00:00:00.000' AS DateTime), NULL, NULL, N'Quảng Ninh', N'Quảng Ninh', NULL, N'Kinh', N'Không', N'testcmt1Rieng', CAST(N'1997-09-09 00:00:00.000' AS DateTime), N'CA tỉnh Quảng Ninh', 1, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'98576474', N'PHẠM HỮU THẮNG', N'HỮU THẮNG HIHI', CAST(N'2018-04-09 00:00:00.000' AS DateTime), N'Nam', NULL, N'Nam Định', N'Nam Định', CAST(N'2050-04-27 00:00:00.000' AS DateTime), N'Kinh', NULL, N'Đẹp trai', CAST(N'2010-04-02 00:00:00.000' AS DateTime), N'CA tỉnh Nam Định', 2, N'CMTHS.pdf')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'9858747875743', N'testcmt2tc', N'testcmt2tc', CAST(N'1998-09-09 00:00:00.000' AS DateTime), N'Nữ', NULL, N'Hà Nam', N'Hà Nam', CAST(N'2090-09-09 00:00:00.000' AS DateTime), N'Kinh', NULL, N'testcmt2TC', CAST(N'1998-09-09 00:00:00.000' AS DateTime), N'CA tỉnh Hà Nam', 2, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'98645764', N'Asibalada', N'Asibalada', CAST(N'2018-05-11 00:00:00.000' AS DateTime), N'Nam', N'Mỹ', N'Asibalada', N'Asibalada', CAST(N'2018-05-16 00:00:00.000' AS DateTime), NULL, NULL, N'hhhhhhh', CAST(N'2018-05-01 00:00:00.000' AS DateTime), N'Mỹ', 3, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'9868859986', N'Testtrung', N'Testtrung', CAST(N'2018-05-16 00:00:00.000' AS DateTime), N'Nam', NULL, N'Hà Nam', N'Hà Nam', CAST(N'2018-05-16 00:00:00.000' AS DateTime), N'Kinh', NULL, N'Ahihi', CAST(N'2018-05-16 00:00:00.000' AS DateTime), N'CA tỉnh Hà Nam', 2, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'987654', N'jhgfds', NULL, CAST(N'2018-05-02 00:00:00.000' AS DateTime), NULL, NULL, N'9876tr', N'hgf', NULL, N'gvv', N'gf', N'fgh', CAST(N'2018-05-19 00:00:00.000' AS DateTime), N'gfds', 1, NULL)
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'9876543232', N'NGUYỄN MẠNH NAM', NULL, CAST(N'2018-04-15 00:00:00.000' AS DateTime), NULL, NULL, N'Hải Dương', N'HẢI DƯƠNG', NULL, N'Kinh', N'Không', N'Đẹp trai', CAST(N'2018-04-15 00:00:00.000' AS DateTime), N'CA tỉnh Hải Dương', 1, NULL)
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'98765432323', N'NGUYỄN MINH NGỌC', NULL, CAST(N'2018-04-01 00:00:00.000' AS DateTime), NULL, NULL, N'Phú Thọ', N'Phú Thọ', NULL, N'Kinh', N'Không', N'Đẹp trai', CAST(N'2010-02-01 00:00:00.000' AS DateTime), N'CA tỉnh Phú Thọ', 1, N'CMTHS.pdf')
INSERT [dbo].[CMT] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [fileCMT]) VALUES (N'98989898', N'testcmt3333', N'testcmt3333', CAST(N'2018-05-02 00:00:00.000' AS DateTime), N'Nam', N'Việt Nam', N'HẢI DƯƠNG', N'HẢI DƯƠNG', CAST(N'2018-05-19 00:00:00.000' AS DateTime), NULL, NULL, N'testcmt3333', CAST(N'2018-05-03 00:00:00.000' AS DateTime), N'CA tỉnh Hải Dương', 3, N'5.身分証明書 _CMt.pdf')
SET IDENTITY_INSERT [dbo].[GIAYCHUNGTHUC] ON 

INSERT [dbo].[GIAYCHUNGTHUC] ([id], [TenGiay], [Anh], [MoTa], [id_HSHS]) VALUES (4, N'18.Dongiaitrinhquatrinhhinhthanhtaisan.pdf', N'18.Dongiaitrinhquatrinhhinhthanhtaisan.pdf', NULL, 112)
INSERT [dbo].[GIAYCHUNGTHUC] ([id], [TenGiay], [Anh], [MoTa], [id_HSHS]) VALUES (5, N'16. don giai trinh dia chi hien nay.pdf', N'16. don giai trinh dia chi hien nay.pdf', NULL, 112)
INSERT [dbo].[GIAYCHUNGTHUC] ([id], [TenGiay], [Anh], [MoTa], [id_HSHS]) VALUES (6, N'12.Sotietkiem.pdf', N'12.Sotietkiem.pdf', NULL, 112)
INSERT [dbo].[GIAYCHUNGTHUC] ([id], [TenGiay], [Anh], [MoTa], [id_HSHS]) VALUES (7, N'15. giay xac nhan thu nhap.pdf', N'15. giay xac nhan thu nhap.pdf', NULL, 112)
INSERT [dbo].[GIAYCHUNGTHUC] ([id], [TenGiay], [Anh], [MoTa], [id_HSHS]) VALUES (8, N'19.Dongiaitrinhthongtinchinhxac.pdf', N'19.Dongiaitrinhthongtinchinhxac.pdf', NULL, 110)
INSERT [dbo].[GIAYCHUNGTHUC] ([id], [TenGiay], [Anh], [MoTa], [id_HSHS]) VALUES (9, N'17.Dongiaitrinhhoctap.pdf', N'17.Dongiaitrinhhoctap.pdf', NULL, 110)
INSERT [dbo].[GIAYCHUNGTHUC] ([id], [TenGiay], [Anh], [MoTa], [id_HSHS]) VALUES (10, N'18.Dongiaitrinhquatrinhhinhthanhtaisan.pdf', N'18.Dongiaitrinhquatrinhhinhthanhtaisan.pdf', NULL, 11)
INSERT [dbo].[GIAYCHUNGTHUC] ([id], [TenGiay], [Anh], [MoTa], [id_HSHS]) VALUES (11, N'Donxacnhan.pdf', N'Donxacnhan.pdf', NULL, 11)
INSERT [dbo].[GIAYCHUNGTHUC] ([id], [TenGiay], [Anh], [MoTa], [id_HSHS]) VALUES (12, N'12.Sotietkiem.pdf', N'12.Sotietkiem.pdf', NULL, 11)
INSERT [dbo].[GIAYCHUNGTHUC] ([id], [TenGiay], [Anh], [MoTa], [id_HSHS]) VALUES (13, N'10. 日本語学習証明書.pdf', N'10. 日本語学習証明書.pdf', NULL, 11)
INSERT [dbo].[GIAYCHUNGTHUC] ([id], [TenGiay], [Anh], [MoTa], [id_HSHS]) VALUES (14, N'Donxacnhan.pdf', N'Donxacnhan.pdf', NULL, 110)
INSERT [dbo].[GIAYCHUNGTHUC] ([id], [TenGiay], [Anh], [MoTa], [id_HSHS]) VALUES (16, N'12.Sotietkiem.pdf', N'12.Sotietkiem.pdf', NULL, 143)
INSERT [dbo].[GIAYCHUNGTHUC] ([id], [TenGiay], [Anh], [MoTa], [id_HSHS]) VALUES (17, N'12.Sotietkiem.pdf', N'12.Sotietkiem.pdf', NULL, 145)
INSERT [dbo].[GIAYCHUNGTHUC] ([id], [TenGiay], [Anh], [MoTa], [id_HSHS]) VALUES (18, N'13. Giay cac nhan so du tiet kiem.pdf', N'13. Giay cac nhan so du tiet kiem.pdf', NULL, 145)
INSERT [dbo].[GIAYCHUNGTHUC] ([id], [TenGiay], [Anh], [MoTa], [id_HSHS]) VALUES (19, N'18.Dongiaitrinhquatrinhhinhthanhtaisan.pdf', N'18.Dongiaitrinhquatrinhhinhthanhtaisan.pdf', NULL, 145)
INSERT [dbo].[GIAYCHUNGTHUC] ([id], [TenGiay], [Anh], [MoTa], [id_HSHS]) VALUES (20, N'19.Dongiaitrinhthongtinchinhxac.pdf', N'19.Dongiaitrinhthongtinchinhxac.pdf', NULL, 145)
INSERT [dbo].[GIAYCHUNGTHUC] ([id], [TenGiay], [Anh], [MoTa], [id_HSHS]) VALUES (21, N'17.Dongiaitrinhhoctap.pdf', N'17.Dongiaitrinhhoctap.pdf', NULL, 158)
INSERT [dbo].[GIAYCHUNGTHUC] ([id], [TenGiay], [Anh], [MoTa], [id_HSHS]) VALUES (22, N'19.Dongiaitrinhthongtinchinhxac.pdf', N'19.Dongiaitrinhthongtinchinhxac.pdf', NULL, 158)
INSERT [dbo].[GIAYCHUNGTHUC] ([id], [TenGiay], [Anh], [MoTa], [id_HSHS]) VALUES (23, N'Donxacnhan.pdf', N'Donxacnhan.pdf', NULL, 158)
INSERT [dbo].[GIAYCHUNGTHUC] ([id], [TenGiay], [Anh], [MoTa], [id_HSHS]) VALUES (24, N'16. don giai trinh dia chi hien nay.pdf', N'16. don giai trinh dia chi hien nay.pdf', NULL, 159)
INSERT [dbo].[GIAYCHUNGTHUC] ([id], [TenGiay], [Anh], [MoTa], [id_HSHS]) VALUES (25, N'13. Giay cac nhan so du tiet kiem.pdf', N'13. Giay cac nhan so du tiet kiem.pdf', NULL, 159)
INSERT [dbo].[GIAYCHUNGTHUC] ([id], [TenGiay], [Anh], [MoTa], [id_HSHS]) VALUES (26, N'19.Dongiaitrinhthongtinchinhxac.pdf', N'19.Dongiaitrinhthongtinchinhxac.pdf', NULL, 159)
INSERT [dbo].[GIAYCHUNGTHUC] ([id], [TenGiay], [Anh], [MoTa], [id_HSHS]) VALUES (27, N'Donxacnhan.pdf', N'Donxacnhan.pdf', NULL, 160)
INSERT [dbo].[GIAYCHUNGTHUC] ([id], [TenGiay], [Anh], [MoTa], [id_HSHS]) VALUES (28, N'19.Dongiaitrinhthongtinchinhxac.pdf', N'19.Dongiaitrinhthongtinchinhxac.pdf', NULL, 160)
INSERT [dbo].[GIAYCHUNGTHUC] ([id], [TenGiay], [Anh], [MoTa], [id_HSHS]) VALUES (30, N'13. Giay cac nhan so du tiet kiem.pdf', N'13. Giay cac nhan so du tiet kiem.pdf', NULL, 160)
SET IDENTITY_INSERT [dbo].[GIAYCHUNGTHUC] OFF
SET IDENTITY_INSERT [dbo].[GIAYKHAISINH] ON 

INSERT [dbo].[GIAYKHAISINH] ([id], [HoTen], [NgaySinh], [NoiSinh], [QueQuan], [GioiTinh], [DanToc], [QuocTich], [HoTenMe], [NsMe], [DanTocMe], [QuocTichMe], [NoiCuTruMe], [HoTenBo], [NsBo], [DanTocBo], [QuocTichBo], [NoiCuTruBo], [NoiDangKy], [NgayLap], [fileGKS]) VALUES (1, N'LÊ THỊ THANH HUYỀN', CAST(N'1995-08-15 00:00:00.000' AS DateTime), N'Nghệ An', N'Nghệ An', N'Nữ', N'Kinh', N'Việt Nam', N'NGUYỄN THỊ LIÊN', N'1968', N'Kinh', N'Việt Nam', N'Nghệ An', N'LÊ VĂN SỸ', N'1966', N'Kinh', N'Việt Nam', N'Nghệ An', N'UBND xã Nghi Kiều', CAST(N'2018-08-04 00:00:00.000' AS DateTime), N'6. Giay khai sinh.pdf')
INSERT [dbo].[GIAYKHAISINH] ([id], [HoTen], [NgaySinh], [NoiSinh], [QueQuan], [GioiTinh], [DanToc], [QuocTich], [HoTenMe], [NsMe], [DanTocMe], [QuocTichMe], [NoiCuTruMe], [HoTenBo], [NsBo], [DanTocBo], [QuocTichBo], [NoiCuTruBo], [NoiDangKy], [NgayLap], [fileGKS]) VALUES (2, N'TRẦN THỊ NGỌC', CAST(N'2018-10-04 00:00:00.000' AS DateTime), N'Hải Dương', N'Hải Dương', N'Nữ', N'Kinh', N'Việt Nam', N'NGUYỄN NGỌC ANH', N'1968', N'Kinh', N'Việt Nam', N'Hải Dương', N'NGUYỄN HẢI QUÂN', N'1966', N'Kinh', N'Việt Nam', N'Hải Dương', N'UBND Hải Dương', CAST(N'2018-09-04 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[GIAYKHAISINH] ([id], [HoTen], [NgaySinh], [NoiSinh], [QueQuan], [GioiTinh], [DanToc], [QuocTich], [HoTenMe], [NsMe], [DanTocMe], [QuocTichMe], [NoiCuTruMe], [HoTenBo], [NsBo], [DanTocBo], [QuocTichBo], [NoiCuTruBo], [NoiDangKy], [NgayLap], [fileGKS]) VALUES (3, N'VŨ THỊ HẰNG', CAST(N'1994-02-02 00:00:00.000' AS DateTime), N'Nam Định', N'Nam Định', N'Nữ', N'Kinh', N'Việt Nam', N'NGUYỄN THỊ NGÂN', N'1968', N'Kinh', N'Việt Nam', N'Nam Định', N'VŨ HẢI HẬU', N'1966', N'Kinh', N'Việt Nam', N'Nam Định', N'UBND Trực Ninh', CAST(N'2018-09-04 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[GIAYKHAISINH] ([id], [HoTen], [NgaySinh], [NoiSinh], [QueQuan], [GioiTinh], [DanToc], [QuocTich], [HoTenMe], [NsMe], [DanTocMe], [QuocTichMe], [NoiCuTruMe], [HoTenBo], [NsBo], [DanTocBo], [QuocTichBo], [NoiCuTruBo], [NoiDangKy], [NgayLap], [fileGKS]) VALUES (4, N'LÊ LƯƠNG SƠN', CAST(N'2018-09-04 00:00:00.000' AS DateTime), N'Nghệ An', N'Nghệ An', N'Nam', N'Kinh', N'Việt Nam', N'NGUYỄN MAI ANH', N'1968', N'Kinh', N'Việt Nam', N'Nghi Liên', N'NGUYỄN HẢI HẬU', N'1966', N'Kinh', N'Việt Nam', N'Nghi Liên', N'UBND xa Nghi Liên', CAST(N'2018-09-04 00:00:00.000' AS DateTime), N'GKS.pdf')
INSERT [dbo].[GIAYKHAISINH] ([id], [HoTen], [NgaySinh], [NoiSinh], [QueQuan], [GioiTinh], [DanToc], [QuocTich], [HoTenMe], [NsMe], [DanTocMe], [QuocTichMe], [NoiCuTruMe], [HoTenBo], [NsBo], [DanTocBo], [QuocTichBo], [NoiCuTruBo], [NoiDangKy], [NgayLap], [fileGKS]) VALUES (5, N'LÊ THỊ THANH HƯƠNG', CAST(N'2018-04-12 00:00:00.000' AS DateTime), N'Nghệ An', N'Nghệ An', N'Nam', N'Kinh', N'Việt Nam', N'NGUYỄN MAI ANH', N'1968', N'Kinh', N'Việt Nam', N'Nghi Kiều', N'NGUYỄN HẢI HẬU', N'1966', N'Kinh', N'Việt Nam', N'Nghi Kiều', N'UBND xa Nghi Kiều', CAST(N'2018-04-17 00:00:00.000' AS DateTime), N'GKS.pdf')
INSERT [dbo].[GIAYKHAISINH] ([id], [HoTen], [NgaySinh], [NoiSinh], [QueQuan], [GioiTinh], [DanToc], [QuocTich], [HoTenMe], [NsMe], [DanTocMe], [QuocTichMe], [NoiCuTruMe], [HoTenBo], [NsBo], [DanTocBo], [QuocTichBo], [NoiCuTruBo], [NoiDangKy], [NgayLap], [fileGKS]) VALUES (6, N'LÊ VĂN TIẾN', CAST(N'1990-07-27 00:00:00.000' AS DateTime), N'Nghệ An', N'Nghệ An', N'Nữ', N'Kinh', N'Việt Nam', N'NGUYỄN MAI ANH A', N'1968', N'Kinh', N'Việt Nam', N'Nghi Kiều', N'NGUYỄN HẢI HẬU', N'1966', N'Kinh', N'Việt Nam', N'Nghi Kiều', N'UBND xa Nghi Kiều', CAST(N'2018-04-07 00:00:00.000' AS DateTime), N'GKS.pdf')
INSERT [dbo].[GIAYKHAISINH] ([id], [HoTen], [NgaySinh], [NoiSinh], [QueQuan], [GioiTinh], [DanToc], [QuocTich], [HoTenMe], [NsMe], [DanTocMe], [QuocTichMe], [NoiCuTruMe], [HoTenBo], [NsBo], [DanTocBo], [QuocTichBo], [NoiCuTruBo], [NoiDangKy], [NgayLap], [fileGKS]) VALUES (7, N'NGUYỄN MINH NGỌC', CAST(N'2018-04-14 00:00:00.000' AS DateTime), N'Phú Thọ', N'Phú Thọ', N'Nam', N'Kinh', N'Việt Nam', N'NGUYỄN THỊ NGÂN', N'1968', N'Kinh', N'Việt Nam', N'Phú Thọ', N'NGUYỄN HẢI CHÂU', N'1966', N'Kinh', N'Việt Nam', N'Nghi Kiều', N'UBND xã Phú Thọ', CAST(N'2018-03-29 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[GIAYKHAISINH] ([id], [HoTen], [NgaySinh], [NoiSinh], [QueQuan], [GioiTinh], [DanToc], [QuocTich], [HoTenMe], [NsMe], [DanTocMe], [QuocTichMe], [NoiCuTruMe], [HoTenBo], [NsBo], [DanTocBo], [QuocTichBo], [NoiCuTruBo], [NoiDangKy], [NgayLap], [fileGKS]) VALUES (8, N'NGUYỄN MINH NGUYỆT', CAST(N'2018-04-01 00:00:00.000' AS DateTime), N'Nghệ An', N'Nghệ An', N'Nữ', N'Kinh', N'Việt Nam', N'NGUYỄN THỊ MÂY', N'1968', N'Kinh', N'Việt Nam', N'Nghi Kiều', N'NGUYỄN HẢI CHÂU', N'1966', N'Kinh', N'Việt Nam', N'Nghi Kiều', N'UBND xã Nghi Kiều', CAST(N'2018-04-10 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[GIAYKHAISINH] ([id], [HoTen], [NgaySinh], [NoiSinh], [QueQuan], [GioiTinh], [DanToc], [QuocTich], [HoTenMe], [NsMe], [DanTocMe], [QuocTichMe], [NoiCuTruMe], [HoTenBo], [NsBo], [DanTocBo], [QuocTichBo], [NoiCuTruBo], [NoiDangKy], [NgayLap], [fileGKS]) VALUES (9, N'Maitilde Brownsmith', CAST(N'2018-04-04 00:00:00.000' AS DateTime), N'Hà Nội', N'Bắc Từ Liêm', N'Nữ', N'Kinh', N'Việt Nam', N'NGUYỄN THỊ NGÂN', N'1968', N'Kinh', N'Việt Nam', N'Nghi Kiều', N'NGUYỄN HẢI HẬU', N'1966', N'Kinh', N'Việt Nam', N'Nghi Kiều', N'UBND Bắc Từ Liêm', CAST(N'2018-04-14 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[GIAYKHAISINH] ([id], [HoTen], [NgaySinh], [NoiSinh], [QueQuan], [GioiTinh], [DanToc], [QuocTich], [HoTenMe], [NsMe], [DanTocMe], [QuocTichMe], [NoiCuTruMe], [HoTenBo], [NsBo], [DanTocBo], [QuocTichBo], [NoiCuTruBo], [NoiDangKy], [NgayLap], [fileGKS]) VALUES (10, N'NGUYỄN MINH NGỌC', CAST(N'2018-04-01 00:00:00.000' AS DateTime), N'Phú Thọ', N'Phú Thọ', N'Nam', N'Kinh', N'Việt Nam', N'NGUYỄN THỊ NGÂN', N'1968', N'Kinh', N'Việt Nam', N'Phú Thọ', N'NGUYỄN HẢI CHÂU', N'1966', N'Kinh', N'Việt Nam', N'Phú Thọ', N'UBND tỉnh Phú Thọ', CAST(N'2018-04-03 00:00:00.000' AS DateTime), N'6. Giay khai sinh.pdf')
INSERT [dbo].[GIAYKHAISINH] ([id], [HoTen], [NgaySinh], [NoiSinh], [QueQuan], [GioiTinh], [DanToc], [QuocTich], [HoTenMe], [NsMe], [DanTocMe], [QuocTichMe], [NoiCuTruMe], [HoTenBo], [NsBo], [DanTocBo], [QuocTichBo], [NoiCuTruBo], [NoiDangKy], [NgayLap], [fileGKS]) VALUES (13, N'VŨ THỊ HẰNG', CAST(N'2018-04-20 00:00:00.000' AS DateTime), N'Nam Định', N'Hải Dương', N'Nam', N'Kinh', N'Việt Nam', N'NGUYỄN THỊ MÂY', N'1968', N'Kinh', N'Việt Nam', N'Nghi Kiều', N'NGUYỄN HẢI HẬU', N'1966', N'Kinh', N'Việt Nam', N'Hải Dương', N'UBND Hải Dương', CAST(N'2018-04-01 00:00:00.000' AS DateTime), N'GKS.pdf')
INSERT [dbo].[GIAYKHAISINH] ([id], [HoTen], [NgaySinh], [NoiSinh], [QueQuan], [GioiTinh], [DanToc], [QuocTich], [HoTenMe], [NsMe], [DanTocMe], [QuocTichMe], [NoiCuTruMe], [HoTenBo], [NsBo], [DanTocBo], [QuocTichBo], [NoiCuTruBo], [NoiDangKy], [NgayLap], [fileGKS]) VALUES (14, N'PHẠM TIẾN HƯNG', CAST(N'1997-04-06 00:00:00.000' AS DateTime), N'Hà Tây', N'Hà Tây', N'Nam', N'Kinh', N'Việt Nam', N'NGUYỄN THỊ NGÂN', N'1968', N'Kinh', N'Việt Nam', N'Hà Tây', N'NGUYỄN HẢI CHÂU', N'1966', N'Kinh', N'Việt Nam', N'Hà Tây', N'UBND Hà Tây', CAST(N'1997-08-01 00:00:00.000' AS DateTime), N'6. Giay khai sinh.pdf')
INSERT [dbo].[GIAYKHAISINH] ([id], [HoTen], [NgaySinh], [NoiSinh], [QueQuan], [GioiTinh], [DanToc], [QuocTich], [HoTenMe], [NsMe], [DanTocMe], [QuocTichMe], [NoiCuTruMe], [HoTenBo], [NsBo], [DanTocBo], [QuocTichBo], [NoiCuTruBo], [NoiDangKy], [NgayLap], [fileGKS]) VALUES (15, N'NGUYỄN MẠNH NAM', CAST(N'2018-03-24 00:00:00.000' AS DateTime), N'Nghệ An', N'Nghệ An', N'Nam', N'Kinh', N'Việt Nam', N'NGUYỄN MAI ANH', N'1968', N'Kinh', N'Việt Nam', N'Nghi Kiều', N'NGUYỄN HẢI HẬU', N'1966', N'Kinh', N'Việt Nam', N'Nghi Kiều', N'UBND xa Nghi Kiều', CAST(N'2018-04-14 00:00:00.000' AS DateTime), N'GKS.pdf')
INSERT [dbo].[GIAYKHAISINH] ([id], [HoTen], [NgaySinh], [NoiSinh], [QueQuan], [GioiTinh], [DanToc], [QuocTich], [HoTenMe], [NsMe], [DanTocMe], [QuocTichMe], [NoiCuTruMe], [HoTenBo], [NsBo], [DanTocBo], [QuocTichBo], [NoiCuTruBo], [NoiDangKy], [NgayLap], [fileGKS]) VALUES (17, N'NGUYỄN TUẤN NGHĨA', CAST(N'2018-04-03 00:00:00.000' AS DateTime), N'Hà Nội', N'Hà Nội', N'Nam', N'Kinh', N'Việt Nam', N'NGUYỄN MAI ANH', N'1968', N'Kinh', N'Việt Nam', N'Hà Nội', N'NGUYỄN HẢI HẬU', N'1966', N'Kinh', N'Việt Nam', N'Hà Nội', N'Hà Nội', CAST(N'2018-04-21 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[GIAYKHAISINH] ([id], [HoTen], [NgaySinh], [NoiSinh], [QueQuan], [GioiTinh], [DanToc], [QuocTich], [HoTenMe], [NsMe], [DanTocMe], [QuocTichMe], [NoiCuTruMe], [HoTenBo], [NsBo], [DanTocBo], [QuocTichBo], [NoiCuTruBo], [NoiDangKy], [NgayLap], [fileGKS]) VALUES (18, N'NGUYỄN MẠNH', CAST(N'1995-05-03 00:00:00.000' AS DateTime), N'Nghệ An', N'Nghệ An', N'Nam', N'Kinh', N'Việt Nam', N'NGUYỄN MAI ANH', N'1968', N'Kinh', N'Việt Nam', N'Nghi Kiều', N'NGUYỄN HẢI HẬU', N'1966', N'Kinh', N'Việt Nam', N'Nghi Kiều', N'UBND xa Nghi Kiều', CAST(N'2018-05-05 00:00:00.000' AS DateTime), N'6. Giay khai sinh.pdf')
INSERT [dbo].[GIAYKHAISINH] ([id], [HoTen], [NgaySinh], [NoiSinh], [QueQuan], [GioiTinh], [DanToc], [QuocTich], [HoTenMe], [NsMe], [DanTocMe], [QuocTichMe], [NoiCuTruMe], [HoTenBo], [NsBo], [DanTocBo], [QuocTichBo], [NoiCuTruBo], [NoiDangKy], [NgayLap], [fileGKS]) VALUES (19, N'Hồ Mai Anh', CAST(N'2018-05-10 00:00:00.000' AS DateTime), N'Hà Nam', N'Hà Nam', N'Nữ', N'Kinh', N'Việt Nam', N'NGUYỄN MAI ANH', N'1968', N'Kinh', N'Việt Nam', N'Hà Nam', N'NGUYỄN HẢI HẬU', N'1966', N'Kinh', N'Việt Nam', N'Hà Nam', N'UBND tỉnh Hà Nam', CAST(N'2018-05-10 00:00:00.000' AS DateTime), N'6. Giay khai sinh.pdf')
INSERT [dbo].[GIAYKHAISINH] ([id], [HoTen], [NgaySinh], [NoiSinh], [QueQuan], [GioiTinh], [DanToc], [QuocTich], [HoTenMe], [NsMe], [DanTocMe], [QuocTichMe], [NoiCuTruMe], [HoTenBo], [NsBo], [DanTocBo], [QuocTichBo], [NoiCuTruBo], [NoiDangKy], [NgayLap], [fileGKS]) VALUES (20, N'testgksupdate000', CAST(N'1995-09-09 00:00:00.000' AS DateTime), N'Hà Nội', N'Hà Nội', N'Nam', N'Kinh', N'Việt Nam', N'NGUYỄN MAI ANH', N'1968', N'Kinh', N'Việt Nam', N'Hà Nội', N'NGUYỄN HẢI HẬU', N'1966', N'Kinh', N'Việt Nam', N'Hà Nội', N'UBND Hà Nội', CAST(N'1996-09-09 00:00:00.000' AS DateTime), N'6. Giay khai sinh.pdf')
INSERT [dbo].[GIAYKHAISINH] ([id], [HoTen], [NgaySinh], [NoiSinh], [QueQuan], [GioiTinh], [DanToc], [QuocTich], [HoTenMe], [NsMe], [DanTocMe], [QuocTichMe], [NoiCuTruMe], [HoTenBo], [NsBo], [DanTocBo], [QuocTichBo], [NoiCuTruBo], [NoiDangKy], [NgayLap], [fileGKS]) VALUES (21, N'NGUYỄN TUẤN NGHĨA', CAST(N'1990-09-09 00:00:00.000' AS DateTime), N'Hà Tây, Hà Nội', N'Hà Tây, Hà Nội', N'Nam', N'Kinh', N'Việt Nam', N'NGUYỄN MAI ANH', N'1968', N'Kinh', N'Việt Nam', N'Hà Nội', N'NGUYỄN HẢI HẬU', N'1966', N'Kinh', N'Việt Nam', N'Nghi Kiều', N'UBND Ha Noi', CAST(N'1990-09-09 00:00:00.000' AS DateTime), N'6. Giay khai sinh.pdf')
INSERT [dbo].[GIAYKHAISINH] ([id], [HoTen], [NgaySinh], [NoiSinh], [QueQuan], [GioiTinh], [DanToc], [QuocTich], [HoTenMe], [NsMe], [DanTocMe], [QuocTichMe], [NoiCuTruMe], [HoTenBo], [NsBo], [DanTocBo], [QuocTichBo], [NoiCuTruBo], [NoiDangKy], [NgayLap], [fileGKS]) VALUES (22, N'LÊ THỊ', CAST(N'1996-09-09 00:00:00.000' AS DateTime), N'Nghệ An', N'Nghệ An', N'Nữ', N'Kinh', N'Việt Nam', N'NGUYỄN MAI ANH', N'1968', N'Kinh', N'Việt Nam', N'Nghi Kiều', N'NGUYỄN HẢI HẬU', N'1966', N'Kinh', N'Việt Nam', N'Nghi Kiều', N'UBND xa Nghi Kiều', CAST(N'1996-09-09 00:00:00.000' AS DateTime), N'6. Giay khai sinh.pdf')
INSERT [dbo].[GIAYKHAISINH] ([id], [HoTen], [NgaySinh], [NoiSinh], [QueQuan], [GioiTinh], [DanToc], [QuocTich], [HoTenMe], [NsMe], [DanTocMe], [QuocTichMe], [NoiCuTruMe], [HoTenBo], [NsBo], [DanTocBo], [QuocTichBo], [NoiCuTruBo], [NoiDangKy], [NgayLap], [fileGKS]) VALUES (23, N'Tesstpicker', CAST(N'2018-05-01 00:00:00.000' AS DateTime), N'Hà Nội', N'Hà Nội', N'Nữ', N'Kinh', N'Việt Nam', N'NGUYỄN THỊ NGÂN', N'1968', N'Kinh', N'Việt Nam', N'Nghi Kiều', N'NGUYỄN HẢI HẬU', N'1966', N'Kinh', N'Việt Nam', N'Nghi Kiều', N'UBND Ha Noi', CAST(N'2018-05-12 00:00:00.000' AS DateTime), N'6. Giay khai sinh.pdf')
INSERT [dbo].[GIAYKHAISINH] ([id], [HoTen], [NgaySinh], [NoiSinh], [QueQuan], [GioiTinh], [DanToc], [QuocTich], [HoTenMe], [NsMe], [DanTocMe], [QuocTichMe], [NoiCuTruMe], [HoTenBo], [NsBo], [DanTocBo], [QuocTichBo], [NoiCuTruBo], [NoiDangKy], [NgayLap], [fileGKS]) VALUES (25, N'Nguyễn Thị Tú', CAST(N'2018-05-20 00:00:00.000' AS DateTime), N'Ngõ 195 Trần Cung, Bắc Từ Liêm, Hà Nội', N'Hải Dương', N'Nữ', N'Kinh', N'Việt Nam', N'NGUYỄN MAI ANH', N'1968', N'Kinh', N'Việt Nam', N'Hà Nội', N'NGUYỄN HẢI HẬU', N'1966', N'Kinh', N'Việt Nam', N'Hà Nội', N'UBND Ha Noi', CAST(N'1990-05-20 00:00:00.000' AS DateTime), N'6. Giay khai sinh.pdf')
INSERT [dbo].[GIAYKHAISINH] ([id], [HoTen], [NgaySinh], [NoiSinh], [QueQuan], [GioiTinh], [DanToc], [QuocTich], [HoTenMe], [NsMe], [DanTocMe], [QuocTichMe], [NoiCuTruMe], [HoTenBo], [NsBo], [DanTocBo], [QuocTichBo], [NoiCuTruBo], [NoiDangKy], [NgayLap], [fileGKS]) VALUES (26, N'Mỹ Tâm', CAST(N'2018-05-20 00:00:00.000' AS DateTime), N'Ngõ 195 Trần Cung, Bắc Từ Liêm, Hà Nội', N'Ngõ 195,Trần Cung,Bắc Từ Liêm,Hà Nội', N'Nữ', N'Kinh', N'Việt Nam', N'NGUYỄN MAI ANH', N'1968', N'Kinh', N'Việt Nam', N'Hà Nội', N'NGUYỄN HẢI HẬU', N'1966', N'Kinh', N'Việt Nam', N'Hà Nội', N'UBND Cổ Nhuế 1', CAST(N'1995-05-20 00:00:00.000' AS DateTime), N'6. Giay khai sinh.pdf')
INSERT [dbo].[GIAYKHAISINH] ([id], [HoTen], [NgaySinh], [NoiSinh], [QueQuan], [GioiTinh], [DanToc], [QuocTich], [HoTenMe], [NsMe], [DanTocMe], [QuocTichMe], [NoiCuTruMe], [HoTenBo], [NsBo], [DanTocBo], [QuocTichBo], [NoiCuTruBo], [NoiDangKy], [NgayLap], [fileGKS]) VALUES (27, N'Thu Hiền', CAST(N'1995-05-20 00:00:00.000' AS DateTime), N'Ngõ 195 Trần Cung, Bắc Từ Liêm, Hà Nội', N'Ngõ 195,Trần Cung,Bắc Từ Liêm,Hà Nội', N'Nữ', N'Kinh', N'Việt Nam', N'NGUYỄN MAI ANH', N'1968', N'Kinh', N'Việt Nam', N'Hà Nội', N'NGUYỄN HẢI HẬU', N'1966', N'Kinh', N'Việt Nam', N'Hà Nội', N'UBND Ha Noi', CAST(N'1995-05-20 00:00:00.000' AS DateTime), N'6. Giay khai sinh.pdf')
SET IDENTITY_INSERT [dbo].[GIAYKHAISINH] OFF
SET IDENTITY_INSERT [dbo].[GiayNhapHoc] ON 

INSERT [dbo].[GiayNhapHoc] ([id_gnh], [Ten], [TinhTrangHn], [GioiTinh], [HoChieu], [NamHc], [ThangHc], [NgayHc], [NoiOHienTai], [TruongC1], [DiaChiC1], [Ngaybd1], [Ngaykt1], [Tong1], [TruongC2], [DiaChiC2], [Ngaybd2], [Ngaykt2], [Tong2], [TruongC3], [DiaChiC3], [Ngaybd3], [Ngaykt3], [Tong3], [TenTrungTam1], [DiaChitt1], [NgayNhapHoc1], [NgayThoiHoc1], [TenTrungTam2], [DiaChitt2], [NgayNhapHoc2], [NgayThoiHoc2], [TenTrungTam3], [Diachitt3], [NgayNhapHoc3], [NgayThoiHoc3], [TenCty], [DiaChiCty], [NgayVaoCty], [NgayRaCty], [NgayNhapCanh], [NgayKhoiHanh], [TinhTrang], [MucDichNhapCanh], [MucDichDuHoc], [KeHoachSauHoc], [ThoiLuongHoc], [TinhTrangBiTuChoi], [TinhTrangXinVisa], [ViPham], [NgayLap], [ThangLap], [NamLap], [NguoiLap], [id_hs]) VALUES (2, N'LÊ NGỌC VƯƠNG_update', NULL, NULL, 1234567, 2019, 9, 12, N'Nghi Loc Nghe An', N'tieu hoc nghi loc', N'Nghi Loc Nghe An', N'9/2001', N'5/2006', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'goto japan', N'ha noi', N'5/2017', N'10/2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'g', N'g', N'g', N'g', N'g', N'g', N'g', N'g', NULL, NULL, NULL, N'Khong', N'khong', N'khong', 8, 4, 2018, N'5', 143)
INSERT [dbo].[GiayNhapHoc] ([id_gnh], [Ten], [TinhTrangHn], [GioiTinh], [HoChieu], [NamHc], [ThangHc], [NgayHc], [NoiOHienTai], [TruongC1], [DiaChiC1], [Ngaybd1], [Ngaykt1], [Tong1], [TruongC2], [DiaChiC2], [Ngaybd2], [Ngaykt2], [Tong2], [TruongC3], [DiaChiC3], [Ngaybd3], [Ngaykt3], [Tong3], [TenTrungTam1], [DiaChitt1], [NgayNhapHoc1], [NgayThoiHoc1], [TenTrungTam2], [DiaChitt2], [NgayNhapHoc2], [NgayThoiHoc2], [TenTrungTam3], [Diachitt3], [NgayNhapHoc3], [NgayThoiHoc3], [TenCty], [DiaChiCty], [NgayVaoCty], [NgayRaCty], [NgayNhapCanh], [NgayKhoiHanh], [TinhTrang], [MucDichNhapCanh], [MucDichDuHoc], [KeHoachSauHoc], [ThoiLuongHoc], [TinhTrangBiTuChoi], [TinhTrangXinVisa], [ViPham], [NgayLap], [ThangLap], [NamLap], [NguoiLap], [id_hs]) VALUES (4, N'DƯƠNG THỊ ANH', NULL, NULL, 1234567, 2019, 9, 12, N'Nghi Loc Nghe An', N'tieu hoc nghi loc', N'Nghi Loc Nghe An', N'9/2001', N'5/2006', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'goto japan', N'ha noi', N'5/2017', N'10/2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'g', N'g', N'g', N'g', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Khong', N'khong', N'khong', 9, 4, 2018, N'5', 3)
SET IDENTITY_INSERT [dbo].[GiayNhapHoc] OFF
SET IDENTITY_INSERT [dbo].[HOCBA] ON 

INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (1, N'LÊ THỊ THANH HUYỀN', CAST(N'1995-08-15 00:00:00.000' AS DateTime), N'Nghệ An', N'Nữ', N'Kinh', N'Hà Nội', N'LÊ VĂN SỸ', N'Nông nghiệp', N'NGUYỄN THỊ LIÊN', N'Nông nghiệp', N'NGUYỄN THỊ LIÊN', N'Nông nghiệp', CAST(N'2018-08-05 00:00:00.000' AS DateTime), N'HB.pdf')
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (2, N'TRẦN THỊ NGỌC', CAST(N'2018-10-04 00:00:00.000' AS DateTime), N'Hải Dương', N'Nữ', N'Kinh', N'Hà Nội', N'NGUYỄN HẢI HẬU', N'Nông nghiệp', N'NGUYỄN MAI ANH', N'Nông nghiệp', N'NGUYỄN HẢI HẬU ', N'Nông nghiệp', CAST(N'2018-09-04 00:00:00.000' AS DateTime), N'HB.pdf')
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (3, N'VŨ THỊ HẰNG', CAST(N'1994-02-02 00:00:00.000' AS DateTime), N'Nam Định', N'Nữ', N'Kinh', N'Hà Nội', N'VŨ HẢI HẬU', N'Xây dựng', N'NGUYỄN THỊ NGÂN', N'Xây dựng', N'VŨ HẢI HẬU', N'Xây dựng', CAST(N'2010-09-04 00:00:00.000' AS DateTime), N'HB.pdf')
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (4, N'LÊ LƯƠNG SƠN', CAST(N'2018-09-04 00:00:00.000' AS DateTime), N'Nghệ An', N'Nam', N'Kinh', N'Nghệ An', N'NGUYỄN HẢI HẬU', N'Nông nghiệp', N'NGUYỄN MAI ANH', N'Nông nghiệp', N'NGUYỄN HẢI HẬU ', N'Nông nghiệp', CAST(N'2018-09-04 00:00:00.000' AS DateTime), N'HB.pdf')
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (5, N'LÊ THỊ THANH HƯƠNG', CAST(N'2018-04-12 00:00:00.000' AS DateTime), N'Nghệ An', N'Nam', N'Kinh', N'Hà Nội', N'NGUYỄN HẢI HẬU', N'Xây dựng', N'NGUYỄN MAI ANH', N'Nông nghiệp', N'NGUYỄN HẢI HẬU ', N'Xây dựng', CAST(N'2018-04-17 00:00:00.000' AS DateTime), N'HB.pdf')
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (6, N'PHẠM TIẾN HƯNG', CAST(N'1997-04-06 00:00:00.000' AS DateTime), N'Hà Tây', N'Nam', N'Kinh', N'Hà Nội', N'NGUYỄN HẢI HẬU', N'Xây dựng', N'NGUYỄN MAI ANH', N'Nông nghiệp', N'NGUYỄN HẢI HẬU ', N'Xây dựng', CAST(N'2018-04-06 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (7, N'NGUYỄN MẠNH NAM', CAST(N'2018-04-06 00:00:00.000' AS DateTime), N'Nam Định', N'Nam', N'Kinh', N'Hà Nội', N'NGUYỄN HẢI HẬU', N'Xây dựng', N'NGUYỄN MAI ANH', N'Nông nghiệp', N'NGUYỄN HẢI HẬU ', N'Xây dựng', CAST(N'2018-04-05 00:00:00.000' AS DateTime), N'HB.pdf')
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (8, N'NGUYỄN MINH NGỌC', CAST(N'2018-04-01 00:00:00.000' AS DateTime), N'Phú Thọ', N'Nam', N'Kinh', N'Hà Nội', N'NGUYỄN MINH ĐỨC', N'Xây dựng', N'NGUYỄN MAI ANH', N'Cô Giáo', N'NGUYỄN MINH ĐỨC', N'Xây dựng', CAST(N'2013-09-01 00:00:00.000' AS DateTime), N'HB.pdf')
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (12, N'NGUYỄN MẠNH NAM', CAST(N'2010-09-09 00:00:00.000' AS DateTime), N'Nam Định', N'Nữ', N'Kinh', N'Hà Nội', N'NGUYỄN HẢI HẬU', N'Xây dựng', N'NGUYỄN MAI ANH', N'Nông nghiệp', NULL, NULL, CAST(N'2019-08-08 00:00:00.000' AS DateTime), N'8. Hoc ba.pdf')
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (13, N'NGUYỄN MẠNH', CAST(N'1995-05-03 00:00:00.000' AS DateTime), N'Nghệ An', N'Nam', N'Kinh', N'Hà Nội', N'NGUYỄN HẢI HẬU', N'Xây dựng', N'NGUYỄN MAI ANH A', N'Nông nghiệp', N'NGUYỄN HẢI HẬU ', N'Xây dựng', CAST(N'2018-05-08 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (14, N'Mai Linh', CAST(N'2018-05-02 00:00:00.000' AS DateTime), N'Nghệ An', N'Nữ', N'Kinh', N'Hà Nội', N'NGUYỄN HẢI HẬU', N'Xây dựng', N'NGUYỄN MAI ANH', N'Nông nghiệp', N'NGUYỄN HẢI HẬU ', N'Xây dựng', CAST(N'2018-05-12 00:00:00.000' AS DateTime), N'8. Hoc ba.pdf')
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (16, N'Hồ Mai Anh', CAST(N'2018-05-10 00:00:00.000' AS DateTime), N'Hà Nam', N'Nữ', N'Kinh', N'Hà Nội', N'NGUYỄN HẢI HẬU H', N'Xây dựng', N'NGUYỄN MAI ANH', N'Nông nghiệp', N'NGUYỄN HẢI HẬU ', N'Xây dựng', CAST(N'2017-09-09 00:00:00.000' AS DateTime), N'8. Hoc ba.pdf')
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (17, N'testHocBa', CAST(N'1995-06-01 00:00:00.000' AS DateTime), N'Thành phố Vinh, Nghệ An', N'Nữ', N'Kinh', N'Bắc Từ Liêm, Hà Nội', N'testHocBaBo', N'Xây dựng', N'testHocBaMe', N'Cô Giáo', N'testHocBaBo', N'Xây dựng', CAST(N'1995-06-02 00:00:00.000' AS DateTime), N'8. Hoc ba.pdf')
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (18, N'testHB1', CAST(N'2018-05-18 00:00:00.000' AS DateTime), N'Hà Nội', N'Nam', N'Kinh', N'Hà Nội', N'NGUYỄN HẢI HẬU', N'Xây dựng', N'NGUYỄN MAI ANH', N'Nông nghiệp', NULL, NULL, CAST(N'2018-05-19 00:00:00.000' AS DateTime), N'8. Hoc ba.pdf')
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (19, N'NGỌC AN', CAST(N'2018-05-20 00:00:00.000' AS DateTime), N'Hải Dương', N'Nữ', N'Kinh', N'Hà Nội', N'NGUYỄN HẢI HẬU', N'Xây dựng', N'NGUYỄN MAI ANH', N'Nông nghiệp', NULL, NULL, CAST(N'2018-05-20 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (20, N'TestHB2', CAST(N'2018-05-20 00:00:00.000' AS DateTime), N'Nam Định', N'Nam', N'Kinh', N'Hà Nội', N'NGUYỄN HẢI HẬU', N'Xây dựng', N'NGUYỄN MAI ANH', N'Cô Giáo', N'NGUYỄN HẢI HẬU ', N'Xây dựng', CAST(N'2018-05-20 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (21, N'testHB3', CAST(N'2018-05-11 00:00:00.000' AS DateTime), N'Nghệ An', N'Nữ', N'Kinh', N'Hà Nội', N'NGUYỄN HẢI HẬU', N'Xây dựng', N'NGUYỄN MAI ANH', N'Nông nghiệp', NULL, NULL, CAST(N'2018-05-11 00:00:00.000' AS DateTime), N'8. Hoc ba.pdf')
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (22, N'Huy Huy', CAST(N'2018-05-05 00:00:00.000' AS DateTime), N'Nghệ An', N'Nam', N'Kinh', N'Hà Nội', N'NGUYỄN HẢI HẬU', N'Xây dựng', N'NGUYỄN MAI ANH', N'Nông nghiệp', N'NGUYỄN HẢI HẬU ', N'Xây dựng', CAST(N'2019-09-09 00:00:00.000' AS DateTime), N'8. Hoc ba.pdf')
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (23, N'Na Na', CAST(N'2018-05-12 00:00:00.000' AS DateTime), N'Hà Nam', N'Nữ', N'Kinh', N'Bắc Từ Liêm, Hà Nội', N'NGUYỄN HẢI HẬU H', N'Nông nghiệp', N'NGUYỄN MAI ANH', N'Nông nghiệp', NULL, NULL, CAST(N'2018-05-12 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (24, N'TRẦN NGỌC CHÂU', CAST(N'1995-05-20 00:00:00.000' AS DateTime), N'Nam Định', N'Nam', N'Kinh', N'Bắc Từ Liêm, Hà Nội', N'NGUYỄN HẢI HẬU', N'Xây dựng', N'NGUYỄN MAI ANH', N'Nhà Nước', NULL, NULL, CAST(N'1995-05-20 00:00:00.000' AS DateTime), N'8. Hoc ba.pdf')
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (25, N'NGUYỄN MẠNH NAM', CAST(N'1996-05-20 00:00:00.000' AS DateTime), N'Nam Định', N'Nam', N'Kinh', N'Bắc Từ Liêm, Hà Nội', N'NGUYỄN HẢI CHÂU', N'Xây dựng', N'NGUYỄN MAI NGỌC', N'Nhà Nước', NULL, NULL, CAST(N'1996-05-20 00:00:00.000' AS DateTime), N'8. Hoc ba.pdf')
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (26, N'Donal McArley', CAST(N'2018-05-20 00:00:00.000' AS DateTime), N'Dolaka', N'Nam', N'Kinh', N'Dolaka', N'NGUYỄN HẢI HẬU', N'Xây dựng', N'NGUYỄN MAI ANH', N'Nông nghiệp', NULL, NULL, CAST(N'2018-05-07 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (27, N'teHB', CAST(N'2018-05-08 00:00:00.000' AS DateTime), N'Nam Định', N'Nam', N'Kinh', N'Hà Nội', N'NGUYỄN HẢI CHÂU', N'Nông nghiệp', N'NGUYỄN MAI ANH', N'Cô Giáo', NULL, NULL, CAST(N'2018-05-09 00:00:00.000' AS DateTime), N'8. Hoc ba.pdf')
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (28, N'TEST TRÙNG', CAST(N'1997-05-20 00:00:00.000' AS DateTime), N'Nghệ An', N'Nam', N'Kinh', N'Bắc Từ Liêm, Hà Nội', N'NGUYỄN HẢI CHÂU', N'Xây dựng', N'NGUYỄN MAI ANH', N'Nông nghiệp', NULL, NULL, CAST(N'2018-05-20 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (29, N'Thanh Thanh', CAST(N'2018-05-20 00:00:00.000' AS DateTime), N'Nam Định', N'Nữ', N'Kinh', N'Bắc Từ Liêm, Hà Nội', N'NGUYỄN HẢI HẬU H', N'Nông nghiệp', N'NGUYỄN MAI ANH A', N'Nông nghiệp', NULL, NULL, CAST(N'2018-05-20 00:00:00.000' AS DateTime), N'8. Hoc ba.pdf')
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (30, N'y', CAST(N'2018-05-20 00:00:00.000' AS DateTime), N'r', N'Nữ', N'r', N'r', N'r', N'r', N'r', N'r', N'r', N'r', CAST(N'2018-05-20 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HOCBA] ([id], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [NoiSongHienTai], [HoTenBo], [NgheNghiepBo], [HoTenMe], [NgheNghiepMe], [NguoiGiamHo], [NgheNghiepNGH], [NgayLap], [fileHB]) VALUES (32, N'Nguyễn Thị Cẩm Tú', CAST(N'1990-05-20 00:00:00.000' AS DateTime), N'Ngõ 195 Trần Cung, Bắc Từ Liêm, Hà Nội', N'Nữ', N'Kinh', N'Ngõ 195 Trần Cung, Bắc Từ Liêm, Hà Nội', N'NGUYỄN HẢI HẬU', N'Xây dựng', N'NGUYỄN MAI ANH', N'Cô Giáo', N'NGUYỄN HẢI HẬU ', N'Xây dựng', CAST(N'2010-05-20 00:00:00.000' AS DateTime), N'8. Hoc ba.pdf')
SET IDENTITY_INSERT [dbo].[HOCBA] OFF
SET IDENTITY_INSERT [dbo].[HOCSINH] ON 

INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (1, N'LÊ THỊ THANH HUYỀN', N'187412542', N'0983730144', N'thanhhuyen01061995@gmail.com', NULL, 1, 1, 1, NULL, N'2017', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (2, N'TRẦN THỊ NGỌC', N'2908528373', N'0984636723', N'tranthingoc1995@gmail.com', NULL, 2, 2, 2, NULL, N'2017', 10)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (3, N'DƯƠNG THỊ ANH', NULL, N'098376544', N'duonganh95hd@gmail.com', NULL, NULL, 3, NULL, NULL, N'2017', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (5, N'LÊ LƯƠNG SƠN', N'29085280307', N'01667062567', N'luongsonmta95@gmail.com', NULL, 4, 5, 4, NULL, N'2017', 11)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (6, N'LÊ VĂN TIẾN', N'290852844', N'097844466', N'levantien1235@gmail.com', NULL, 6, NULL, NULL, NULL, N'2017', 11)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (7, N'NGUYỄN MINH NGỌC', N'0098989', N'0975456755', N'nnguyenminhnngoc89@gmail.com', N'12994398_2015649645327828_851552512384137229_n.jpg', 10, NULL, 8, NULL, N'2017', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (8, N'NGUYỄN MINH NGUYỆT', NULL, N'09876456', N'nguyenminhnguyet123@gmail.com', NULL, 13, NULL, 7, NULL, N'2017', 10)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (9, N'Maitilde Brownsmith', N'9858747875743', N'209-372-7756', N'mbrownsmith0@fotki.com', NULL, 9, NULL, NULL, NULL, N'2018', 10)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (10, N'Beauregard Ferrick', NULL, N'367-568-1172', N'bferrick1@geocities.com', NULL, NULL, NULL, NULL, NULL, N'2018', 10)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (11, N'Stacey Gately', N'96985768788', N'124-275-0852', N'sgately2@chicagotribune.com', NULL, NULL, NULL, NULL, NULL, N'2018', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (12, N'Alvira Cawsby', NULL, N'903-161-3083', N'acawsby3@harvard.edu', NULL, NULL, NULL, NULL, NULL, N'2017', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (13, N'Isabelle McGaugie', NULL, N'208-350-4940', N'imcgaugie4@shop-pro.jp', NULL, NULL, NULL, NULL, NULL, N'2017', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (14, N'Hallie Swindley', N'09849575', N'627-494-6698', N'hswindley5@nature.com', NULL, NULL, NULL, NULL, NULL, N'2017', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (15, N'Doralynne Maps', N'4837876444', N'243-845-9938', N'dmaps6@ibm.com', NULL, NULL, NULL, NULL, NULL, N'2017', 10)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (16, N'Maddie Gumly', NULL, N'819-514-0962', N'mgumly7@cdc.gov', NULL, NULL, NULL, NULL, NULL, N'2017', 10)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (17, N'Jena Wessing', NULL, N'763-138-1460', N'jwessing8@cloudflare.com', NULL, NULL, NULL, NULL, NULL, N'2017', 10)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (18, N'Donal McArley', NULL, N'173-887-1940', N'dmcarley9@home.pl', NULL, NULL, NULL, 26, NULL, N'2017', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (19, N'Magda Sliney', NULL, N'923-576-6620', N'mslineya@kickstarter.com', NULL, NULL, NULL, NULL, NULL, N'2017', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (20, N'Natala Demead', NULL, N'832-940-1543', N'ndemeadb@elpais.com', NULL, NULL, NULL, NULL, NULL, N'2014', 10)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (21, N'Dud Lipprose', NULL, N'587-709-2380', N'dlipprosec@phpbb.com', NULL, NULL, NULL, NULL, NULL, N'2014', 10)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (22, N'Maible Palomba', NULL, N'297-959-9142', N'mpalombad@slideshare.net', NULL, NULL, NULL, NULL, NULL, N'2014', 10)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (23, N'Blinni McMurty', NULL, N'792-813-8547', N'bmcmurtye@bloglines.com', NULL, NULL, NULL, 25, NULL, N'2014', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (25, N'Allie Reddlesden', N'2908666666', N'212-148-5850', N'areddlesdeng@cdc.gov', NULL, NULL, NULL, NULL, NULL, N'2016', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (27, N'Sancho Powers', NULL, N'420-465-5258', N'spowersi@usnews.com', NULL, NULL, NULL, NULL, NULL, N'2014', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (28, N'Curtice Nancekivell', NULL, N'704-298-6601', N'cnancekivellj@gmpg.org', NULL, NULL, NULL, NULL, NULL, N'2014', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (29, N'Rianon Downie', N'98645764', N'158-491-1064', N'rdowniek@merriam-webster.com', N'12994398_2015649645327828_851552512384137229_n.jpg', NULL, NULL, NULL, NULL, N'2014', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (30, N'Catherine Halburton', NULL, N'576-981-7009', N'chalburtonl@squarespace.com', NULL, NULL, NULL, NULL, NULL, N'2014', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (31, N'Shelley Barnaclough', NULL, N'883-473-6176', N'sbarnacloughm@wufoo.com', NULL, NULL, NULL, NULL, NULL, N'2014', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (33, N'Kally Lilian', NULL, N'920-412-8608', N'kliliano@google.com.br', NULL, NULL, NULL, NULL, NULL, N'2016', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (34, N'Elfrieda Fairlaw', NULL, N'449-919-0650', N'efairlawp@psu.edu', NULL, NULL, NULL, NULL, NULL, N'2016', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (35, N'Brett Bilam', NULL, N'215-907-8156', N'bbilamq@fema.gov', NULL, NULL, NULL, NULL, NULL, N'2016', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (37, N'Minetta McAtamney', NULL, N'215-352-7396', N'mmcatamneys@ted.com', NULL, NULL, NULL, NULL, NULL, N'2016', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (38, N'Darbie Foulkes', NULL, N'485-398-6371', N'dfoulkest@fc2.com', NULL, NULL, NULL, NULL, NULL, N'2016', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (39, N'Brinn Colkett', NULL, N'552-732-6557', N'bcolkettu@yahoo.com', NULL, NULL, NULL, NULL, NULL, N'2016', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (40, N'Patric Bukac', NULL, N'279-653-7804', N'pbukacv@economist.com', NULL, NULL, NULL, NULL, NULL, N'2016', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (41, N'Rhianna Titlow', NULL, N'931-940-3724', N'rtitloww@dedecms.com', NULL, NULL, NULL, NULL, NULL, N'2016', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (42, N'Brandise Jobern', NULL, N'500-765-5621', N'bjobernx@nba.com', NULL, NULL, NULL, NULL, NULL, N'2016', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (43, N'Bellanca Starmer', NULL, N'531-457-0340', N'bstarmery@altervista.org', NULL, NULL, NULL, NULL, NULL, N'2016', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (44, N'Avictor Thomerson', NULL, N'806-463-4839', N'athomersonz@dyndns.org', NULL, NULL, NULL, NULL, NULL, N'2016', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (45, N'Beret Daal', NULL, N'228-421-1218', N'bdaal10@mayoclinic.com', NULL, NULL, NULL, NULL, NULL, N'2016', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (46, N'Sephira Dovington', NULL, N'360-578-3214', N'sdovington11@hostgator.com', NULL, NULL, NULL, NULL, NULL, N'2017', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (47, N'Charmine Scutchin', NULL, N'953-274-1622', N'cscutchin12@zdnet.com', NULL, NULL, NULL, NULL, NULL, N'2017', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (48, N'Emilio Deeming', NULL, N'793-896-3667', N'edeeming13@yellowbook.com', NULL, NULL, NULL, NULL, NULL, N'2017', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (51, N'Brooke McCurtain', NULL, N'859-914-5903', N'bmccurtain16@scientificamerican.com', NULL, NULL, NULL, NULL, NULL, N'2015', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (52, N'Taffy Jaeggi', N'0098989999', N'876-884-1858', N'tjaeggi17@cam.ac.uk', NULL, NULL, NULL, NULL, NULL, N'2015', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (53, N'Meggie Bernardet', NULL, N'802-109-8784', N'mbernardet18@xrea.com', NULL, NULL, NULL, NULL, NULL, N'2015', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (54, N'Dena Furmage', NULL, N'841-849-5939', N'dfurmage19@google.com.hk', NULL, NULL, NULL, NULL, NULL, N'2015', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (55, N'Georgina Satchell', NULL, N'594-902-2216', N'gsatchell1a@jimdo.com', NULL, NULL, NULL, NULL, NULL, N'2015', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (56, N'Dione Crosfeld', NULL, N'286-550-3013', N'dcrosfeld1b@infoseek.co.jp', NULL, NULL, NULL, NULL, NULL, N'2015', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (57, N'Garreth Saffle', NULL, N'326-740-8019', N'gsaffle1c@washingtonpost.com', NULL, NULL, NULL, NULL, NULL, N'2015', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (58, N'Elliot Wheelwright', NULL, N'874-662-1673', N'ewheelwright1d@google.de', NULL, NULL, NULL, NULL, NULL, N'2015', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (59, N'Jade Stryde', NULL, N'203-124-6950', N'jstryde1e@un.org', NULL, NULL, NULL, NULL, NULL, N'2015', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (60, N'Andris Emery', NULL, N'777-278-3270', N'aemery1f@ted.com', NULL, NULL, NULL, NULL, NULL, N'2015', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (61, N'Pincus Halsho', NULL, N'747-267-1971', N'phalsho1g@blogger.com', NULL, NULL, NULL, NULL, NULL, N'2014', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (62, N'Brig Mongenot', NULL, N'950-623-5863', N'bmongenot1h@china.com.cn', NULL, NULL, NULL, NULL, NULL, N'2014', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (63, N'Othilie Bailes', NULL, N'627-658-6038', N'obailes1i@goo.ne.jp', NULL, NULL, NULL, NULL, NULL, N'2014', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (64, N'Derick Di Domenico', NULL, N'727-153-2812', N'ddi1j@china.com.cn', NULL, NULL, NULL, NULL, NULL, N'2014', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (65, N'Zarah Meffen', NULL, N'785-821-0366', N'zmeffen1k@scribd.com', NULL, NULL, NULL, NULL, NULL, N'2014', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (66, N'Eve McKew', NULL, N'750-557-0045', N'emckew1l@nbcnews.com', NULL, NULL, NULL, NULL, NULL, N'2014', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (67, N'Quintus Belverstone', NULL, N'892-226-0401', N'qbelverstone1m@acquirethisname.com', NULL, NULL, NULL, NULL, NULL, N'2014', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (68, N'Fredia Kincade', NULL, N'348-778-6700', N'fkincade1n@weibo.com', NULL, NULL, NULL, NULL, NULL, N'2014', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (69, N'Ben Klaassens', NULL, N'717-764-4042', N'bklaassens1o@e-recht24.de', NULL, NULL, NULL, NULL, NULL, N'2014', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (70, N'Noby Nunes Nabarro', NULL, N'659-540-4960', N'nnunes1p@jalbum.net', NULL, NULL, NULL, NULL, NULL, N'2014', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (71, N'Denyse Jordi', NULL, N'443-825-8709', N'djordi1q@spotify.com', NULL, NULL, NULL, NULL, NULL, N'2014', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (72, N'Sile Iacopini', NULL, N'551-961-1187', N'siacopini1r@arstechnica.com', NULL, NULL, NULL, NULL, NULL, N'2016', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (73, N'Andie Everton', NULL, N'909-279-5191', N'aeverton1s@google.co.jp', NULL, NULL, NULL, NULL, NULL, N'2016', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (74, N'Jsandye Whyler', NULL, N'996-263-6788', N'jwhyler1t@cpanel.net', NULL, NULL, NULL, NULL, NULL, N'2016', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (75, N'Birk Marrill', NULL, N'688-712-2483', N'bmarrill1u@twitpic.com', NULL, NULL, NULL, NULL, NULL, N'2016', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (76, N'Devinne Hellens', NULL, N'728-794-4798', N'dhellens1v@blinklist.com', NULL, NULL, NULL, NULL, NULL, N'2016', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (77, N'Beverley Albury', NULL, N'483-178-7119', N'balbury1w@exblog.jp', NULL, NULL, NULL, NULL, NULL, N'2016', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (78, N'Darby Howden', NULL, N'459-706-5910', N'dhowden1x@timesonline.co.uk', NULL, NULL, NULL, NULL, NULL, N'2016', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (79, N'Earvin Miskin', NULL, N'949-872-8597', N'emiskin1y@ca.gov', NULL, NULL, NULL, NULL, NULL, N'2014', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (80, N'Rip Mixter', NULL, N'385-188-6271', N'rmixter1z@digg.com', NULL, NULL, NULL, NULL, NULL, N'2014', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (81, N'Penny Allington', NULL, N'652-747-7611', N'pallington20@biblegateway.com', NULL, NULL, NULL, NULL, NULL, N'2013', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (82, N'Hazlett Fulks', NULL, N'270-328-2202', N'hfulks21@barnesandnoble.com', NULL, NULL, NULL, NULL, NULL, N'2016', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (83, N'Clay Wakelin', NULL, N'564-478-7908', N'cwakelin22@ibm.com', NULL, NULL, NULL, NULL, NULL, N'2016', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (84, N'Ced Antcliff', NULL, N'540-787-9463', N'cantcliff23@samsung.com', NULL, NULL, NULL, NULL, NULL, N'2016', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (86, N'Jerri Kilminster', NULL, N'718-584-8122', N'jkilminster25@miitbeian.gov.cn', NULL, NULL, NULL, NULL, NULL, N'2016', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (87, N'Kerby Lindfors', NULL, N'911-873-4266', N'klindfors26@scribd.com', NULL, NULL, NULL, NULL, NULL, N'2014', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (88, N'Darnall Dicke', NULL, N'771-707-7415', N'ddicke27@hc360.com', NULL, NULL, NULL, NULL, NULL, N'2014', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (89, N'Scottie Kemetz', NULL, N'486-141-0987', N'skemetz28@mozilla.org', NULL, NULL, NULL, NULL, NULL, N'2014', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (90, N'Ronald Ghio', NULL, N'670-429-8886', N'rghio29@edublogs.org', NULL, NULL, NULL, NULL, NULL, N'2014', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (91, N'Yvor Leband', NULL, N'858-113-5890', N'yleband2a@parallels.com', NULL, NULL, NULL, NULL, NULL, N'2014', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (92, N'Yolanthe Bl', N'290852555', N'625-928-1439', N'yblamires2b@nps.gov', N'12994398_2015649645327828_851552512384137229_n.jpg', 18, 10, 13, N'290852836', N'2017', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (93, N'Roth Lipmann', NULL, N'286-641-0273', N'rlipmann2c@slate.com', NULL, NULL, NULL, NULL, N'290852666', N'2017', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (94, N'Cheri Vynoll', NULL, N'597-240-1575', N'cvynoll2d@is.gd', NULL, NULL, NULL, NULL, NULL, N'2017', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (95, N'Joela McBeath', N'290852839999', N'376-383-6070', N'jmcbeath2e@theguardian.com', NULL, NULL, NULL, NULL, NULL, N'2017', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (96, N'Tamqrah Collcutt', NULL, N'681-983-0357', N'tcollcutt2f@pinterest.com', NULL, NULL, NULL, NULL, NULL, N'2017', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (97, N'Caitlin Cavanaugh', NULL, N'236-353-2000', N'ccavanaugh2g@state.gov', NULL, NULL, NULL, NULL, NULL, N'2017', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (98, N'Bancroft Duffet', NULL, N'710-530-6995', N'bduffet2h@jugem.jp', NULL, NULL, NULL, NULL, NULL, N'2017', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (99, N'Jourdan Jozaitis', NULL, N'394-934-4755', N'jjozaitis2i@pinterest.com', NULL, NULL, NULL, NULL, NULL, N'2017', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (100, N'Karil Onslow', NULL, N'381-752-4918', N'konslow2j@va.gov', NULL, NULL, NULL, NULL, NULL, N'2017', 11)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (101, N'Petra Brian', NULL, N'693-106-4611', N'pbrian2k@123-reg.co.uk', NULL, NULL, NULL, NULL, NULL, N'2017', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (102, N'Moll Edgeson', NULL, N'457-849-5691', N'medgeson2l@yolasite.com', NULL, NULL, NULL, NULL, NULL, N'2017', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (103, N'Gerik Pryor', NULL, N'674-136-7181', N'gpryor2m@forbes.com', NULL, NULL, NULL, NULL, NULL, N'2017', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (104, N'Penn Krauze', NULL, N'419-406-0343', N'pkrauze2n@meetup.com', NULL, NULL, NULL, NULL, NULL, N'2017', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (105, N'Atlanta McPaik', NULL, N'506-213-2367', N'amcpaik2o@home.pl', NULL, NULL, NULL, NULL, NULL, N'2017', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (106, N'Gerta Mullis', NULL, N'940-136-5260', N'gmullis2p@topsy.com', NULL, NULL, NULL, NULL, NULL, N'2017', NULL)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (107, N'Gib Boggis', NULL, N'777-317-6835', N'gboggis2q@netlog.com', NULL, NULL, NULL, NULL, NULL, N'2017', NULL)
GO
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (108, N'Raffarty Ryrie', NULL, N'787-241-0491', N'rryrie2r@walmart.com', NULL, NULL, NULL, NULL, NULL, N'2017', 10)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (109, N'LÊ ANH MINH', NULL, N'094785434', N'leanhminh12345@gmail.com', NULL, 11, NULL, NULL, NULL, N'2018', 10)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (110, N'PHẠM TIẾN HƯNG', N'29085283', N'0976543784', N'phamtienhung123@gmail.com', N'hinh-nen-may-tinh-de-thuong-nhat-4.jpg', 14, 7, 6, N'986857685', N'2018', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (111, N'PHẠM HỮU THẮNG', N'98576474', N'097346563', N'phamquocthang1245@gmail.com', NULL, 15, 8, NULL, NULL, N'2018', 10)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (112, N'NGUYỄN MẠNH NAM', NULL, N'0934537734', N'leminhnam34589@gmail.com', NULL, NULL, 9, 12, NULL, N'2018', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (113, N'NGUYỄN TUẤN NGHĨA', NULL, N'098776534', N'nguyentuannghia123@gmail.com', NULL, 17, NULL, NULL, NULL, N'2018', 10)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (114, N'NGUYỄN THỊ HIỀN', NULL, N'09827473344', N'nguyenthihien123@gmail.com', NULL, NULL, NULL, NULL, NULL, N'2018', 10)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (115, N'NGUYỄN TUẤN NGHĨA', N'09568758', N'09697875', N'nguyentuannghia@gmail.com', NULL, 21, NULL, NULL, NULL, N'2018', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (116, N'NGUYỄN TUẤN NINH', N'09090909', N'09697875777', N'nguyentuannghia@gmail.com', NULL, NULL, NULL, NULL, NULL, N'2018', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (118, N'NGỌC NAM', NULL, N'098694758', N'duonganh95hd@gmail.com', NULL, NULL, NULL, NULL, N'867564534232', N'2018', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (119, N'HÀ THU', NULL, N'0903975884', N'duonganh95hd@gmail.com', NULL, NULL, NULL, NULL, N'9876543', N'2018', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (120, N'LÊ THỊ ', NULL, N'98765e', N'duonganh95hd@gmail.com', NULL, 22, NULL, NULL, N'29085284', N'2018', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (121, N'LÊ VĂN TIẾN', NULL, N'09456789', N'maianh123@gmail.com', NULL, NULL, NULL, NULL, NULL, N'2018', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (122, N'LÊ LƯƠNG', NULL, N'09876', N'duonganh95hd@gmail.com', NULL, NULL, NULL, NULL, NULL, N'2018', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (123, N'NGUYỄN LIÊN', NULL, N'098765', N'duonganh95hd@gmail.com', NULL, NULL, NULL, NULL, NULL, N'2018', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (124, N'LÊ THỊ THANH HUYỀN A', NULL, N'0983730143', N'maianhSSS123@gmail.com', NULL, NULL, NULL, NULL, NULL, N'2018', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (125, N'NGUYỄN HÀ ANH', NULL, N'09387573', N'nguyenhaanh@gmail.com', NULL, NULL, NULL, NULL, NULL, N'2018', 2)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (126, N'Mai Linh', NULL, N'095795964', N'mailinh1235@gmail.com', NULL, NULL, NULL, 14, NULL, N'2018', 2)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (128, N'Hồ Mai Anh', N'947868578', N'09498456775', N'homaianh595950909@gmail.com', N'3570.jpg', 19, 11, 16, N'958784654', N'2018', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (129, N'test cmt_update888', N'88888888888888', N'097443765', N'testcmt1@gmail.com', NULL, NULL, NULL, NULL, NULL, N'2018', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (130, N'testcmt2', N'6666666666', N'095864753', N'testcmt2@gmail.com', NULL, NULL, NULL, NULL, NULL, N'2018', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (131, N'testcmt3', N'898989999', N'098348548', N'testcmt3@gmail.com', NULL, NULL, NULL, NULL, NULL, N'2018', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (132, N'testtrungsoCMt', NULL, N'09384757', N'testtrungsoCMt@gmail.com', NULL, NULL, NULL, NULL, NULL, N'2018', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (133, N'TestcmtTrung', NULL, N'098743874', N'TestcmtTrung@gmail.com', NULL, NULL, NULL, NULL, NULL, N'2018', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (134, N'testcmt3333', N'98989898', N'0987654', N'tesssst@gmail.com', NULL, NULL, NULL, NULL, NULL, N'2018', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (135, N'testgks', NULL, N'048577647', N'testgks@gmail.com', NULL, 20, NULL, NULL, NULL, N'2018', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (136, N'tesstdatepicker', NULL, N'0943867548', N'thanhhuyen010695@gmail.com', NULL, 23, NULL, NULL, NULL, N'2018', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (137, N'testdatetime', NULL, N'93875847', N'testdatetime@gmail.com', NULL, NULL, NULL, NULL, NULL, N'2018', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (138, N'testbtn1_update1', NULL, N'98438758', N'testbtn1@gmail.com', NULL, NULL, 12, NULL, NULL, N'2018', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (139, N'test trung', NULL, N'098373014466', N'duonganh95hssd@gmail.com', NULL, NULL, NULL, NULL, NULL, N'2018', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (140, N'test trung', NULL, N'098373014466', N'duonganh95hssd@gmail.com', NULL, NULL, NULL, NULL, NULL, N'2018', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (141, N'Test trùng', N'9868859986', N'098373014455', N'maianh1235555@gmail.com', N'12994398_2015649645327828_851552512384137229_n.jpg', NULL, NULL, 28, NULL, N'2018', 1)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (142, N'TRẦN NGỌC CHÂU', NULL, N'097433674', N'ngoctran12395@gmail.com', NULL, NULL, NULL, 24, NULL, N'2018', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (143, N'LÊ NGỌC VƯƠNG', NULL, N'08758784', N'lengocvuong123@gmail.com', NULL, NULL, NULL, NULL, N'97586748954', N'2018', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (145, N'NGỌC AN', NULL, N'098373444', N'Ngocan95hd@gmail.com', N'anhdep.jpg', NULL, NULL, 19, N'2908528373', N'2018', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (146, N'testHocBa', NULL, N'98698854594', N'testhocba@gmail.com', NULL, NULL, NULL, 17, NULL, N'2018', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (147, N'testHB1', NULL, N'98765443', N'testHB1@gmail.com', NULL, NULL, NULL, 18, NULL, N'2018', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (148, N'TestHB2', NULL, N'9685786', N'TestHB2@gmail.com', NULL, NULL, NULL, 20, NULL, N'2018', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (149, N'testHB3', NULL, N'987654', N'testHB3@gmail.com', NULL, NULL, NULL, 21, NULL, N'2018', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (150, N'Huy Huy', NULL, N'098765', N'tffgdf@gmail.com', NULL, NULL, NULL, 22, NULL, N'2018', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (151, N'Na Na', NULL, N'09837301446666666', N'maianhgggg123@gmail.com', NULL, NULL, NULL, 23, NULL, N'2018', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (152, N'teHB', NULL, N'9876547654', N'teHB@gmail.com', NULL, NULL, NULL, 27, NULL, N'2018', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (153, N'Thanh Thanh', NULL, N'98765432787654', N'duonganh95hffffffffd@gmail.com', NULL, NULL, NULL, 29, NULL, N'2018', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (154, N'y', NULL, N'09876543345678', N'yyyyyyyy@gmail.com', NULL, NULL, NULL, 30, NULL, N'2018', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (155, N'y', NULL, N'9865456789', N'yyyydddyyyy@gmail.com', NULL, NULL, NULL, NULL, NULL, N'2018', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (158, N'Nguyễn Thị Cẩm Tú', N'9457685', N'0976346423', N'nguyenthicamtuhd@gmail.com', N'anhdep.jpg', 25, 14, 32, N'98456784', N'2018', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (159, N'Mỹ Tâm', N'290852888', N'099999999', N'mytam@gmail.com', N'anhdep.jpg', 26, 15, NULL, N'986988786', N'2018', 5)
INSERT [dbo].[HOCSINH] ([id], [TenHS], [SoCMT], [sdt], [email], [anh], [id_GKS], [id_BTN], [id_HB], [id_NgGiamHo], [timeStart], [NguoiTao]) VALUES (160, N'Thu Hiền', N'290852837998', N'09763464299', N'thuhien95hd@gmail.com', N'anhdep.jpg', 27, 16, NULL, N'2908528666', N'2018', 5)
SET IDENTITY_INSERT [dbo].[HOCSINH] OFF
SET IDENTITY_INSERT [dbo].[HoKhau] ON 

INSERT [dbo].[HoKhau] ([id_hokhau], [HoTen], [QuocTich], [Tuoi], [DiaChi], [NgheNghiep], [QuanHe], [id_hs], [fileSHK]) VALUES (1, N'NGUYỄN MẠNH AN', N'Việt Nam', 40, N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'Xây dựng', N'Bố', 115, NULL)
INSERT [dbo].[HoKhau] ([id_hokhau], [HoTen], [QuocTich], [Tuoi], [DiaChi], [NgheNghiep], [QuanHe], [id_hs], [fileSHK]) VALUES (2, N'NGUYỄN VĂN MINH', N'Việt Nam', 40, N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'Xây dựng', N'Bố', 110, N'11. So ho khau.pdf')
INSERT [dbo].[HoKhau] ([id_hokhau], [HoTen], [QuocTich], [Tuoi], [DiaChi], [NgheNghiep], [QuanHe], [id_hs], [fileSHK]) VALUES (3, N'NGUYỄN THỊ HÀ', N'Việt Nam', 35, N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'Cô giáo', N'Mẹ', 110, N'11. So ho khau.pdf')
INSERT [dbo].[HoKhau] ([id_hokhau], [HoTen], [QuocTich], [Tuoi], [DiaChi], [NgheNghiep], [QuanHe], [id_hs], [fileSHK]) VALUES (4, N'NGUYỄN MẠNH HUY', N'Việt Nam', 45, N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'Xây dựng', N'Bố', 11, NULL)
INSERT [dbo].[HoKhau] ([id_hokhau], [HoTen], [QuocTich], [Tuoi], [DiaChi], [NgheNghiep], [QuanHe], [id_hs], [fileSHK]) VALUES (5, N'Dương Ngọc Châu', N'Việt Nam', 36, N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'Nhân viên Ngân Hàng', N'Mẹ', 11, NULL)
INSERT [dbo].[HoKhau] ([id_hokhau], [HoTen], [QuocTich], [Tuoi], [DiaChi], [NgheNghiep], [QuanHe], [id_hs], [fileSHK]) VALUES (6, N'Dương Anh', N'Việt Nam', 24, N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'Cô giáo', N'Chị gái', 110, NULL)
INSERT [dbo].[HoKhau] ([id_hokhau], [HoTen], [QuocTich], [Tuoi], [DiaChi], [NgheNghiep], [QuanHe], [id_hs], [fileSHK]) VALUES (7, N'Hà Thu', N'Việt Nam', 34, N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'Cô giáo', N'Mẹ', 142, N'4. lí do du học.pdf')
INSERT [dbo].[HoKhau] ([id_hokhau], [HoTen], [QuocTich], [Tuoi], [DiaChi], [NgheNghiep], [QuanHe], [id_hs], [fileSHK]) VALUES (8, N'Thanh Huyền_update', N'Việt Nam', 24, N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'Lập trình viên', N'Chị gái', NULL, NULL)
INSERT [dbo].[HoKhau] ([id_hokhau], [HoTen], [QuocTich], [Tuoi], [DiaChi], [NgheNghiep], [QuanHe], [id_hs], [fileSHK]) VALUES (9, N'Dương An', N'Việt Nam', 24, N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'Lập trình viên', N'Chị gái', 143, N'11. So ho khau.pdf')
INSERT [dbo].[HoKhau] ([id_hokhau], [HoTen], [QuocTich], [Tuoi], [DiaChi], [NgheNghiep], [QuanHe], [id_hs], [fileSHK]) VALUES (10, N'Nam Ngọc Minh', N'Việt Nam', 30, N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'Lập trình viên', N'Anh trai', 143, NULL)
INSERT [dbo].[HoKhau] ([id_hokhau], [HoTen], [QuocTich], [Tuoi], [DiaChi], [NgheNghiep], [QuanHe], [id_hs], [fileSHK]) VALUES (11, N'NGUYỄN HẢI HẬU ', N'Việt Nam', 52, N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'Xây dựng', N'Bố', 158, N'11. So ho khau.pdf')
INSERT [dbo].[HoKhau] ([id_hokhau], [HoTen], [QuocTich], [Tuoi], [DiaChi], [NgheNghiep], [QuanHe], [id_hs], [fileSHK]) VALUES (12, N'NGUYỄN MAI ANH', N'Việt Nam', 30, N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'Lập trình viên', N'Chị gái', 158, NULL)
INSERT [dbo].[HoKhau] ([id_hokhau], [HoTen], [QuocTich], [Tuoi], [DiaChi], [NgheNghiep], [QuanHe], [id_hs], [fileSHK]) VALUES (13, N'NGUYỄN HẢI HẬU_update', N'Việt Nam', 54, N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'Xây dựng', N'Bố', 159, NULL)
INSERT [dbo].[HoKhau] ([id_hokhau], [HoTen], [QuocTich], [Tuoi], [DiaChi], [NgheNghiep], [QuanHe], [id_hs], [fileSHK]) VALUES (14, N'NGUYỄN HẢI HẬU', N'Việt Nam', 54, N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'Xây dựng', N'Bố', 160, N'11. So ho khau.pdf')
SET IDENTITY_INSERT [dbo].[HoKhau] OFF
SET IDENTITY_INSERT [dbo].[KIHOC] ON 

INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (16, N'Hkỳ I', 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (17, N'Hkỳ II', 10, 9, 9, 9, 9, 9, 9, 6, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (18, N'CN', 10, 9, 9, 9, 9, 9, 9, 5, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (19, N'Hkỳ I', 17, 10, 10, 10, 10, 10, 10, 10, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (20, N'Hkỳ II', 17, 8, 8, 8, 8, 6, 6, 8, 6, 6, 6, 6, N'6', 6, 8, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (21, N'CN', 17, 9, 9, 9, 9, 9, 9, 8, 8, 5, 7, 8, N'9', 10, 8, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (22, N'Hkỳ I', 19, 7, 7, 7, 7, 9, 9, 9, 9, 9, 8, 8, N'8', 8, 9, 8)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (23, N'Hkỳ II', 19, 7, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (24, N'CN', 19, 7, 6, 7, 10, 10, 9, 9, 9, 9, 9, 9, N'9', 10, 10, 10)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (25, N'Hkỳ I', 20, 4, 4, 9, 9, 9, 9, 9, 9, 8, 8, 8, N'8', 8, 8, 8)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (26, N'Hkỳ II', 20, 9, 9, 9, 7, 7, 7, 7, 7, 7, 7, 7, N'7', 7, 7, 7)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (27, N'CN', 20, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 8, 8)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (28, N'Hkỳ I', 22, 10, 10, 7, 9, 7, 7, 7, 6, 5, 5, 6, N'7', 8, 8, 8)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (29, N'Hkỳ II', 22, 8, 8, 7, 9, 9, 7, 7, 8, 9, 10, 10, N'10', 10, 10, 10)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (30, N'CN', 22, 9, 8, 6, 4, 6, 8, 7, 3, 3, 3, 6, N'7', 10, 10, 10)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (31, N'Hkỳ I', 23, 10, 10, 10, 10, 10, 10, 10, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (32, N'Hkỳ II', 23, 9, 9, 9, 9, 9, 10, 10, 8, 8, 8, 8, N'8', 8, 4, 5)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (33, N'CN', 23, 9, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, N'8', 8, 8, 8)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (34, N'Hkỳ I', 25, 8, 9, 9, 9, 8, 8, 8, 7, 6, 3, 3, N'3', 4, 5, 6)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (35, N'Hkỳ II', 25, 6, 6, 5, 4, 6, 7, 8, 7, 6, 9, 8, N'9', 7, 6, 5)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (36, N'CN', 25, 7, 4, 4, 3, 3, 4, 5, 6, 7, 6, 5, N'4', 6, 5, 6)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (37, N'Hkỳ I', 26, 8, 9, 9, 9, 8, 8, 8, 7, 6, 3, 3, N'3', 4, 5, 6)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (38, N'Hkỳ II', 26, 6, 6, 5, 4, 6, 7, 8, 7, 6, 9, 8, N'9', 7, 6, 5)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (39, N'CN', 26, 7, 4, 4, 3, 3, 4, 5, 6, 7, 6, 5, N'4', 6, 5, 6)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (40, N'Hkỳ I', 27, 8, 9, 9, 9, 8, 8, 8, 7, 6, 3, 3, N'3', 4, 5, 6)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (41, N'Hkỳ II', 27, 6, 6, 5, 4, 6, 7, 8, 7, 6, 9, 8, N'9', 7, 6, 5)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (42, N'CN', 27, 7, 4, 4, 3, 3, 4, 5, 6, 7, 6, 5, N'4', 6, 5, 6)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (43, N'Hkỳ I', 32, 9, 9, 9, 9, 9, 9, 9, 7, 7, 7, 9, N'8', 7, 6, 7)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (44, N'Hkỳ II', 32, 8, 8, 7, 7, 6, 7, 8, 7, 7, 7, 8, N'8', 8, 7, 6)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (45, N'CN', 32, 8, 8, 7, 5, 8, 9, 9, 8, 8, 9, 9, N'9', 9, 8, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (46, N'Hkỳ I', 33, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, N'9', 9, 5, 6)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (47, N'Hkỳ II', 33, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, N'9', 9, 8, 8)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (48, N'CN', 33, 9, 8, 8, 9, 8, 8, 8, 7, 7, 8, 7, N'8', 8, 7, 8)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (49, N'Hkỳ I', 34, 7, 8, 7, 8, 7, 8, 9, 8, 7, 8, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (50, N'Hkỳ II', 34, 4, 2, 3, 5, 6, 7, 8, 8, 8, 7, 7, N'7', 7, 8, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (51, N'CN', 34, 7, 6, 7, 7, 7, 7, 9, 9, 8, 7, 7, N'7', 7, 7, 7)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (59, N'Hkỳ I', 35, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (60, N'Hkỳ II', 35, 9, 9, 9, 9, 9, 5, 9, 9, 9, 9, 9, N'8', 8, 8, 8)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (61, N'CN', 35, 8, 8, 8, 8, 9, 9, 9, 8, 8, 8, 8, N'8', 8, 8, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (62, N'Hkỳ I', 36, 9, 8, 7, 7, 6, 7, 7, 7, 7, 7, 7, N'7', 7, 8, 7)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (63, N'Hkỳ II', 36, 9, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, N'7', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (64, N'CN', 36, 9, 9, 7, 7, 7, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (67, N'CN', 37, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, N'6', 6, 6, 6)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (68, N'Hkỳ I', 37, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, N'7', 7, 7, 7)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (69, N'Hkỳ II', 37, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, N'8', 8, 8, 8)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (70, N'Hkỳ I', 38, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (71, N'Hkỳ II', 38, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, N'8', 8, 8, 8)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (72, N'CN', 38, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, N'8', 8, 8, 8)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (73, N'Hkỳ I', 39, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, N'6', 6, 6, 6)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (74, N'Hkỳ II', 39, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, N'8', 8, 8, 8)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (75, N'CN', 39, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, N'8', 8, 8, 8)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (76, N'Hkỳ I', 40, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, N'6', 6, 6, 6)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (77, N'Hkỳ II', 40, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, N'6', 6, 6, 6)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (78, N'CN', 40, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, N'6', 6, 6, 6)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (81, N'Hkỳ I', 41, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, N'7', 7, 7, 7)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (82, N'Hkỳ II', 41, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, N'7', 7, 7, 7)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (83, N'CN', 41, 7, 7, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (84, N'Hkỳ I', 42, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (85, N'Hkỳ II', 42, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, N'8', 8, 8, 8)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (86, N'CN', 42, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, N'8', 8, 8, 8)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (87, N'Hkỳ I', 43, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (88, N'Hkỳ II', 43, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (89, N'CN', 43, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (99, N'Hkỳ I', 45, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (100, N'Hkỳ II', 45, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (101, N'CN', 45, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (108, N'Hkỳ I', 53, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, N'8', 8, 8, 8)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (109, N'Hkỳ II', 53, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, N'8', 8, 8, 8)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (110, N'CN', 53, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, N'8', 8, 8, 8)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (111, N'Hkỳ I', 56, 4, 4, 9, 9, 9, 9, 9, 9, 9, 99, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (112, N'Hkỳ II', 56, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (113, N'CN', 56, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (114, N'Hkỳ I', 59, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, N'8', 8, 8, 8)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (115, N'Hkỳ II', 59, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, N'8', 8, 8, 8)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (116, N'CN', 59, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, N'8', 8, 8, 8)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (117, N'Hkỳ I', 60, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (118, N'Hkỳ II', 60, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (119, N'CN', 60, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (120, N'Hkỳ I', 61, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (121, N'Hkỳ II', 61, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (122, N'CN', 61, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (123, N'Hkỳ I', 62, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, N'8', 8, 8, 8)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (124, N'Hkỳ II', 62, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, N'8', 8, 8, 8)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (125, N'CN', 62, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, N'8', 8, 8, 8)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (126, N'Hkỳ I', 63, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (127, N'Hkỳ II', 63, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (128, N'CN', 63, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (129, N'Hkỳ I', 63, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (130, N'Hkỳ II', 63, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (131, N'CN', 63, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (132, N'Hkỳ I', 64, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (133, N'Hkỳ II', 64, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (134, N'CN', 64, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (135, N'Hkỳ I', 77, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, N'3', 3, 3, 3)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (136, N'Hkỳ II', 77, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, N'3', 3, 3, 3)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (137, N'CN', 77, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, N'3', 3, 3, 3)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (138, N'Hkỳ I', 78, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (139, N'Hkỳ II', 78, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9', 9, 9, 9)
INSERT [dbo].[KIHOC] ([id], [TenKiHoc], [id_NAMHOC], [Toan], [Ly], [Hoa], [Sinh], [Tin], [Van], [Su], [Dia], [NgoaiNgu], [CongNghe], [QuocPhongAnNinh], [TheDuc], [TuChon], [GiaoDucCongDan], [DiemTrungBinh]) VALUES (140, N'CN', 78, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'Đ', 9, 9, 9)
GO
SET IDENTITY_INSERT [dbo].[KIHOC] OFF
SET IDENTITY_INSERT [dbo].[NAMHOC] ON 

INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (1, N'2010-2011', N'10A1', N'Trung học phổ thông Nghi Lộc V', NULL, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (2, N'2010-2011', N'10A1', N'Trung học phổ thông Nghi Lộc V', NULL, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (3, N'2010-2011', N'10A1', N'Trung học phổ thông Mai Anh 1', NULL, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (4, N'2011-2012', N'11A1', N'Trung học phổ thông Mai Anh 1', NULL, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (5, N'2010-2011', N'10A1', N'THPT Bắc Ninh', 11, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (6, N'2011-2012', N'11A1', N'THPT Bắc Ninh', 11, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (7, N'2012-2013', N'12A1', N'THPT Bắc Ninh', 11, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (8, N'2010-2011', N'10A1', N'THPT Thanh Hóa 3', 12, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (9, N'2010-2011', N'10A1', N'THPT Nghi Lộc V', 6, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (10, N'2011-2012', N'11A1', N'THPT Nghi Lộc V', 6, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (11, N'2012-2013', N'12A1', N'THPT Nghi Lộc V', 6, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (12, N'2010-2011', N'10A1', N'TTHPT Nghi Lộc V', 7, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (13, N'2011-2012', N'11A1', N'THPT Nghi Lộc V', 7, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (14, N'2012-2013', N'12A1', N'THPT Nghi Lộc V', 7, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (15, N'2010-2011', N'10C1', N'THPT Nghi Lộc IV', 2, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (17, N'2011-2012', N'11C', N'THPT Nghi Lộc IV', 2, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (18, N'2012-2013', N'12C', N'THPT Nghi Lộc IV', 2, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (19, N'2010-2011', N'10A1', N'THPT Chuyên Phú Thọ', 8, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (20, N'2011-2012', N'11A1', N'THPT Chuyên Phú Thọ', 8, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (21, N'2012-2013', N'12A1', N'THPT Chuyên Phú Thọ', 8, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (22, N'2010-2011', N'10A1', N'THPT Nghi Lộc I', 12, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (23, N'2011-2012', N'11A1', N'THPT Nghi Lộc I', 12, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (24, N'2012-2013', N'12A1', N'THPT Nghi Lộc I', 12, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (25, N'2010 -2011', N'TH10', N'THPT Nghi Lộc I', 13, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (26, N'2011 -2012', N'TH11', N'THPT Nghi Lộc I', 13, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (27, N'2012-2013', N'TH12', N'THPT Nghi Lộc I', 13, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (28, N'2010-2011', N'TH12B', N'THPT Quân Khu 1', 14, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (29, N'2010-2011', N'TH2', N'TH02090909', 15, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (30, N'2011-2012', N'th12', N'THPT Quân Khu V', 15, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (31, N'2013-2014', N'th12b', N'THPT Quân Khu V', 15, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (32, N'2010-2011', N'TH10A', N'THPT tỉnh Hà Nam', 16, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (33, N'2011-2012', N'TH11A', N'THPT tỉnh Hà Nam', 16, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (34, N'2012-2013', N'TH12A', N'THPT tỉnh Hà Nam', 16, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (35, N'2010-2011', N'10A1', N'Trung học phổ thông Nghi Lộc I', 17, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (36, N'2011-2012', N'11B1', N'Trung học phổ thông Nghi Lộc I', 17, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (37, N'2012-2013', N'12A1', N'Trung học phổ thông Nghi Lộc I', 17, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (38, N'2010-2011', N'10A2', N'THPT Nghi Nam Đông', 18, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (39, N'2011-2012', N'11A2', N'THPT Nghi Nam Đông', 18, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (40, N'2012-2013', N'12A2', N'THPT Nghi Nam Đông', 18, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (41, N'2010-2011', N'10C1', N'THPT Hải Dương Nam', 19, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (42, N'2011-2012', N'11C1', N'THPT Hải Dương Nam', 19, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (43, N'2012-2013', N'12C1', N'THPT Hải Dương Nam', 19, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (45, N'2011-2012', N'11B', N'THPT Trực Ninh, Nam Định', 20, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (47, N'2010-2011', N'10C1', N'NL1', 21, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (48, N'2011-2012', N'10C2', N'NL1', 21, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (49, N'2012-2013', N'12C1', N'NL1', 21, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (50, N'1', N'1', N'1', 22, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (51, N'2', N'2', N'2', 22, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (52, N'3', N'3', N'3', 22, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (53, N'2011', N'2', N'THPT Nghi L?c IIq', 0, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (55, N'3', N'3', N'THPT Nghi Lộc II', 23, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (56, N'1', N'1', N'1', 24, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (57, N'2', N'2', N'2', 24, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (58, N'3', N'3', N'3', 24, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (59, N'1', N'1', N'1', 25, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (60, N'2', N'2', N'2', 25, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (61, N'3', N'3', N'3', 25, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (62, N'1', N'1', N'1', 26, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (63, N'2', N'2', N'2', 26, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (64, N'3', N'3', N'3', 26, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (65, N'3', N'3', N'5', 23, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (66, N'5', N'5', N'5', 23, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (72, N'5', N'5', N'5', 27, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (73, N'6', N'56', N'5', 27, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (74, N'8', N'8', N'8', 27, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (75, N'5', N'5', N'5', 20, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (76, N'8', N'8', N'8', 20, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (77, N'2013-2014', N'10A1', N'THPT Nghi Lộc II', 28, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (78, N'2014-2015', N'11A1', N'THPT Nghi Lộc II', 28, 1)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (79, N'2015-2016', N'12A1', N'THPT Nghi Lộc II', 28, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (80, N'1', N'1', N'1', 29, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (81, N'2', N'2', N'2', 29, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (82, N'6', N'6', N'6', 30, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (85, N'8', N'8', N'8', 31, NULL)
INSERT [dbo].[NAMHOC] ([id], [ThoiGian], [TenLop], [TenTruong], [id_HB], [StatusNH]) VALUES (87, N'2010-2011', N'10A1', N'THPT Nghi Lộc II', 32, NULL)
SET IDENTITY_INSERT [dbo].[NAMHOC] OFF
INSERT [dbo].[NGUOIGIAMHO] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [file_CMTNGH]) VALUES (N'09876543', N'Thanh Huyền A', NULL, CAST(N'2018-04-30 00:00:00.000' AS DateTime), NULL, NULL, N'Nghệ An', N'Nghệ An', NULL, N'Kinh', NULL, N'hhhhhhhhhh', CAST(N'2018-05-07 00:00:00.000' AS DateTime), N'CA tỉnh Nghệ An', 1, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[NGUOIGIAMHO] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [file_CMTNGH]) VALUES (N'29044444', N'NGỌC NAM', NULL, CAST(N'2018-05-02 00:00:00.000' AS DateTime), NULL, NULL, N'Nghệ An', N'Nghệ An', NULL, N'Kinh', NULL, N'HHHH', CAST(N'2018-05-03 00:00:00.000' AS DateTime), N'CA tỉnh Nghệ An', 1, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[NGUOIGIAMHO] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [file_CMTNGH]) VALUES (N'2908528373', N'NGUYỄN MẠNH NA', N'Anh', CAST(N'1968-05-19 00:00:00.000' AS DateTime), N'Nam', N'Việt Nam', N'Hà Nam', N'Hà Nam', CAST(N'2080-05-19 00:00:00.000' AS DateTime), NULL, NULL, N'fffff', CAST(N'1968-05-19 00:00:00.000' AS DateTime), N'CA tỉnh Hà Nam', 3, N'9. CMT_Bo.pdf')
INSERT [dbo].[NGUOIGIAMHO] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [file_CMTNGH]) VALUES (N'29085284', N'NGUYỄN MẠNH NAM', NULL, CAST(N'2018-05-09 00:00:00.000' AS DateTime), NULL, NULL, N'Hải Dương', N'Nghệ An', NULL, N'Kinh', NULL, N'iiiiiii', CAST(N'2018-05-03 00:00:00.000' AS DateTime), N'CA tỉnh Hải Dương', 1, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[NGUOIGIAMHO] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [file_CMTNGH]) VALUES (N'2908528666', N'NGUYỄN HẢI HẬU', N'Anh', CAST(N'1966-05-20 00:00:00.000' AS DateTime), N'Nữ', N'Việt Nam', N'Ngõ 195,Trần Cung,Bắc Từ Liêm,Hà Nội', N'Ngõ 195,Trần Cung,Bắc Từ Liêm,Hà Nội', CAST(N'2040-05-20 00:00:00.000' AS DateTime), NULL, NULL, N'A', CAST(N'1978-05-20 00:00:00.000' AS DateTime), N'CA tỉnh Hà Nội', 3, N'7. bang tot nghiep THPT.pdf')
INSERT [dbo].[NGUOIGIAMHO] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [file_CMTNGH]) VALUES (N'867564534232', N'NGUYỄN MẠNH NAM', N'Anh', CAST(N'2018-05-04 00:00:00.000' AS DateTime), N'Nam', NULL, N'Hải Dương', N'Nghệ An', CAST(N'2018-05-03 00:00:00.000' AS DateTime), N'Kinh', NULL, N'8765432', CAST(N'2018-05-02 00:00:00.000' AS DateTime), N'CA tỉnh Nghệ An', 2, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[NGUOIGIAMHO] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [file_CMTNGH]) VALUES (N'958784654', N'NGUYỄN HẢI HẬU', N'HẬU', CAST(N'2018-05-11 00:00:00.000' AS DateTime), NULL, NULL, N'Hà Nam', N'Hà Nam', CAST(N'2018-05-27 00:00:00.000' AS DateTime), N'Kinh', NULL, N'Hà Nam', CAST(N'2018-05-18 00:00:00.000' AS DateTime), N'CA tỉnh Hà Nam', 2, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[NGUOIGIAMHO] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [file_CMTNGH]) VALUES (N'97586748954', N'NGUYỄN MẠNH ĐỨC', NULL, CAST(N'1989-09-09 00:00:00.000' AS DateTime), NULL, NULL, N'Trực Ninh, Nam Định', N'Trực Ninh, Nam Định', NULL, N'Kinh', N'Không', N'hhhhh', CAST(N'1989-09-09 00:00:00.000' AS DateTime), N'CA tỉnh Nam Định', 1, N'9. CMT_Bo.pdf')
INSERT [dbo].[NGUOIGIAMHO] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [file_CMTNGH]) VALUES (N'98456784', N'NGUYỄN HẢI HẬU', N'Anh', CAST(N'1966-05-20 00:00:00.000' AS DateTime), N'Nữ', N'Việt Nam', N'Hà Nội', N'Hà Nội', CAST(N'2090-05-20 00:00:00.000' AS DateTime), NULL, NULL, N'Vết bớt sau cổ ', CAST(N'1976-05-20 00:00:00.000' AS DateTime), N'CA tỉnh Hà Nội', 3, N'8. Hoc ba.pdf')
INSERT [dbo].[NGUOIGIAMHO] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [file_CMTNGH]) VALUES (N'986857685', N'PHẠM TIẾN HẢI', NULL, CAST(N'1966-09-09 00:00:00.000' AS DateTime), NULL, NULL, N'Hà Nội', N'Hà Nội', NULL, N'Kinh', NULL, N'ggggg', CAST(N'1966-09-09 00:00:00.000' AS DateTime), N'CA tỉnh Hà Nội', 1, N'5.身分証明書 _CMt.pdf')
INSERT [dbo].[NGUOIGIAMHO] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [file_CMTNGH]) VALUES (N'986988786', N'NGUYỄN HẢI HẬU', N'Anh', CAST(N'1966-05-20 00:00:00.000' AS DateTime), N'Nữ', N'Việt Nam', N'Ngõ 195,Trần Cung,Bắc Từ Liêm,Hà Nội', N'Ngõ 195,Trần Cung,Bắc Từ Liêm,Hà Nội', CAST(N'2060-05-20 00:00:00.000' AS DateTime), NULL, NULL, N'Bớt sau gáy', CAST(N'1978-05-20 00:00:00.000' AS DateTime), N'CA tỉnh Hà Nội', 3, N'7. bang tot nghiep THPT.pdf')
INSERT [dbo].[NGUOIGIAMHO] ([SoCMT], [HoTen], [TenGoiKhac], [NgaySinh], [GioiTinh], [QuocTich], [QueQuan], [NoiThuongTru], [GiaTriDen], [DanToc], [TonGiao], [DauVetRieng], [NgayCap], [NoiCap], [LoaiCMT], [file_CMTNGH]) VALUES (N'9876543', N'Dương Anh', N'Anh', CAST(N'2018-05-17 00:00:00.000' AS DateTime), N'Nữ', N'Việt Nam', N'Hải Dương', N'HẢI DƯƠNG', CAST(N'2018-05-17 00:00:00.000' AS DateTime), NULL, NULL, N'hhhhh', CAST(N'2018-05-02 00:00:00.000' AS DateTime), N'CA tỉnh Hải Dương', 3, N'5.身分証明書 _CMt.pdf')
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([id], [HoTen], [Email], [DiaChi], [SoDT], [TenDangNhap], [MatKhau], [id_Quyen], [NguoiTao], [NgayTao]) VALUES (1, N'Admin', N'admin123@gmail.com', N'Học Viện Kỹ Thuật Quân Sự', N'0909090909', N'Admin', N'e3afed0047b08059d0fada10f400c1e5', 1, 0, NULL)
INSERT [dbo].[NHANVIEN] ([id], [HoTen], [Email], [DiaChi], [SoDT], [TenDangNhap], [MatKhau], [id_Quyen], [NguoiTao], [NgayTao]) VALUES (2, N'Thu Ngân', N'thungan123@gmail.com', N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'0985645689', N'ThuNgan', N'03f525720a4091a056e94b1e0c121745', 2, 1, NULL)
INSERT [dbo].[NHANVIEN] ([id], [HoTen], [Email], [DiaChi], [SoDT], [TenDangNhap], [MatKhau], [id_Quyen], [NguoiTao], [NgayTao]) VALUES (5, N'Thanh Huyền', NULL, N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'0985645634', N'ThanhHuyen', N'0de932521f4eb2357849967dfdff65c3', 2, NULL, NULL)
INSERT [dbo].[NHANVIEN] ([id], [HoTen], [Email], [DiaChi], [SoDT], [TenDangNhap], [MatKhau], [id_Quyen], [NguoiTao], [NgayTao]) VALUES (10, N'Dương Anh', N'duonganh123@gmail.com', N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'09856456359', N'DuongAnh', N'ce360faad8aa4eb90801385d4af18cc6', 2, 1, NULL)
INSERT [dbo].[NHANVIEN] ([id], [HoTen], [Email], [DiaChi], [SoDT], [TenDangNhap], [MatKhau], [id_Quyen], [NguoiTao], [NgayTao]) VALUES (11, N'Minh Lê', N'minhle123@gmail.com', N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'098473564', N'MinhLe', N'6f90f8119b514d73fb473f78b9f59d77', NULL, 1, NULL)
INSERT [dbo].[NHANVIEN] ([id], [HoTen], [Email], [DiaChi], [SoDT], [TenDangNhap], [MatKhau], [id_Quyen], [NguoiTao], [NgayTao]) VALUES (12, N'Tiến Toàn', N'tientoan123@gmail.com', N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'098735673', N'TienToan', N'f7deade742893f068ece42949873bb9f', 2, 1, NULL)
INSERT [dbo].[NHANVIEN] ([id], [HoTen], [Email], [DiaChi], [SoDT], [TenDangNhap], [MatKhau], [id_Quyen], [NguoiTao], [NgayTao]) VALUES (14, N'Tuấn Nghĩa', N'tuannghia123@gmail.com', N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'09856455555', N'TuanNghia', N'4de8b1a1eb77b3dbe01fb8cf0572e39c', 2, 1, NULL)
INSERT [dbo].[NHANVIEN] ([id], [HoTen], [Email], [DiaChi], [SoDT], [TenDangNhap], [MatKhau], [id_Quyen], [NguoiTao], [NgayTao]) VALUES (15, N'Dương Huy', N'duonghuy123@gmail.com', N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'0985645555', N'DuongHuy', N'28e403d51b4c8c435381460d775e549f', 2, 1, NULL)
INSERT [dbo].[NHANVIEN] ([id], [HoTen], [Email], [DiaChi], [SoDT], [TenDangNhap], [MatKhau], [id_Quyen], [NguoiTao], [NgayTao]) VALUES (17, N'Dương Anh', N'duonganh1123@gmail.com', N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'09856456433', N'DuongAnh1', N'62682c686973b1111fe8e0b21f7b01bf', 2, 1, NULL)
INSERT [dbo].[NHANVIEN] ([id], [HoTen], [Email], [DiaChi], [SoDT], [TenDangNhap], [MatKhau], [id_Quyen], [NguoiTao], [NgayTao]) VALUES (18, N'Thanh Huyền', N'thanhhuyen1123@gmail.com', N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'0985645999', N'ThanhHuyen1', N'24114eb49863989ce5bd85e4e475e45e', 2, 1, NULL)
INSERT [dbo].[NHANVIEN] ([id], [HoTen], [Email], [DiaChi], [SoDT], [TenDangNhap], [MatKhau], [id_Quyen], [NguoiTao], [NgayTao]) VALUES (19, N'VŨ HẰNG', N'vuhang1123@gmail.com', N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'0985645677', N'VuHang', N'8c01c96972e1bde28575540cbeba9f72', 2, 1, NULL)
INSERT [dbo].[NHANVIEN] ([id], [HoTen], [Email], [DiaChi], [SoDT], [TenDangNhap], [MatKhau], [id_Quyen], [NguoiTao], [NgayTao]) VALUES (20, N'Hồng Nhung', N'thanhhuyen010695@gmail.com', N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'0909090903', N'HongNhung', N'2cc0f072f5e9d838822af58ba68566a8', 2, 1, CAST(N'2018-05-05' AS Date))
INSERT [dbo].[NHANVIEN] ([id], [HoTen], [Email], [DiaChi], [SoDT], [TenDangNhap], [MatKhau], [id_Quyen], [NguoiTao], [NgayTao]) VALUES (22, N'Hà Trang_update', N'hatrang010695@gmail.com', N'Nhà số 9, ngõ 195 trần cung, Bắc Từ Liêm, Hà Nội', N'098564563556', N'HaTrang', N'51bf46307b41d4eef7d7efec60536264', 2, 1, CAST(N'2018-05-20' AS Date))
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
INSERT [dbo].[PHANQUYEN] ([id_quyen], [id_truycap], [MoTa]) VALUES (1, 1, N'Nhân viên này có thêm chức năng quản lý nhân viên')
INSERT [dbo].[PHANQUYEN] ([id_quyen], [id_truycap], [MoTa]) VALUES (1, 3, NULL)
INSERT [dbo].[PHANQUYEN] ([id_quyen], [id_truycap], [MoTa]) VALUES (2, 3, NULL)
INSERT [dbo].[PHANQUYEN] ([id_quyen], [id_truycap], [MoTa]) VALUES (2, 8, NULL)
INSERT [dbo].[PHANQUYEN] ([id_quyen], [id_truycap], [MoTa]) VALUES (3, 4, NULL)
INSERT [dbo].[PHANQUYEN] ([id_quyen], [id_truycap], [MoTa]) VALUES (3, 10, NULL)
INSERT [dbo].[PHANQUYEN] ([id_quyen], [id_truycap], [MoTa]) VALUES (3, 12, NULL)
SET IDENTITY_INSERT [dbo].[QUYEN] ON 

INSERT [dbo].[QUYEN] ([Id], [Ten], [MoTa]) VALUES (1, N'Admin', N'Quản lý người dùng và hệ thống')
INSERT [dbo].[QUYEN] ([Id], [Ten], [MoTa]) VALUES (2, N'QuanLyThongTinHocSinh', N'Chức năng quản lý thông tin học sinh và Xử lý thông tin sai lệch')
SET IDENTITY_INSERT [dbo].[QUYEN] OFF
SET IDENTITY_INSERT [dbo].[QUYENTRUYCAP] ON 

INSERT [dbo].[QUYENTRUYCAP] ([id], [Ten], [LinkTruy Cap]) VALUES (1, N' Quản lý Học sinh', N'/HocSinh/')
INSERT [dbo].[QUYENTRUYCAP] ([id], [Ten], [LinkTruy Cap]) VALUES (3, N'Xử lý  Lỗi', N'/XulyHocSinh/')
INSERT [dbo].[QUYENTRUYCAP] ([id], [Ten], [LinkTruy Cap]) VALUES (4, N' Quản lý Người Dùng', N'/NguoiDung/')
INSERT [dbo].[QUYENTRUYCAP] ([id], [Ten], [LinkTruy Cap]) VALUES (5, N' Quản lý CMT', N'/CMT/')
INSERT [dbo].[QUYENTRUYCAP] ([id], [Ten], [LinkTruy Cap]) VALUES (6, N'  Quản lý Bằng tốt nghiệp', N'/BangTotNghiep/')
INSERT [dbo].[QUYENTRUYCAP] ([id], [Ten], [LinkTruy Cap]) VALUES (7, N' Quản lý Học bạ', N'/HocBa/')
INSERT [dbo].[QUYENTRUYCAP] ([id], [Ten], [LinkTruy Cap]) VALUES (8, N' Quản lý Người giám hộ', N'/NguoiGiamHo/')
INSERT [dbo].[QUYENTRUYCAP] ([id], [Ten], [LinkTruy Cap]) VALUES (9, N' Quản lý Quyền hạn', N'/Quyen/')
INSERT [dbo].[QUYENTRUYCAP] ([id], [Ten], [LinkTruy Cap]) VALUES (10, N' Quản lý Quyền truy cập', N'/QuyenTruyCap/')
INSERT [dbo].[QUYENTRUYCAP] ([id], [Ten], [LinkTruy Cap]) VALUES (11, N' Quản lý Phân quyền', N'/PhanQuyen/')
INSERT [dbo].[QUYENTRUYCAP] ([id], [Ten], [LinkTruy Cap]) VALUES (12, N'Xử lý giấy tờ', N'/GiayTo/')
INSERT [dbo].[QUYENTRUYCAP] ([id], [Ten], [LinkTruy Cap]) VALUES (13, N' Quản lý Giấy khai sinh', N'/GiayKhaiSinh/')
INSERT [dbo].[QUYENTRUYCAP] ([id], [Ten], [LinkTruy Cap]) VALUES (14, N'Quản lý giấy chứng thực', N'/GiayChungThuc/')
INSERT [dbo].[QUYENTRUYCAP] ([id], [Ten], [LinkTruy Cap]) VALUES (15, N'Quản lý số hộ khẩu', N'/SoHoKhau/')
INSERT [dbo].[QUYENTRUYCAP] ([id], [Ten], [LinkTruy Cap]) VALUES (16, N'1', N'1')
SET IDENTITY_INSERT [dbo].[QUYENTRUYCAP] OFF
SET IDENTITY_INSERT [dbo].[TABLE_LOI] ON 

INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (18, 8, NULL, NULL, 13, 7, N'HoTen', CAST(N'2018-04-28 10:15:40.040' AS DateTime), CAST(N'2018-05-03 10:15:40.040' AS DateTime), N'3', 10, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (23, NULL, NULL, NULL, 13, 7, N'NgaySinh', CAST(N'2018-04-28 10:15:40.040' AS DateTime), CAST(N'2018-04-30 10:15:40.040' AS DateTime), N'3', 10, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (27, NULL, N'98576474', 8, 15, NULL, N'NgaySinh', CAST(N'2018-04-26 19:35:29.787' AS DateTime), CAST(N'2018-04-30 10:15:40.040' AS DateTime), N'3', 10, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (31, 111, N'98576474', 8, 15, NULL, N'HoTen', CAST(N'2018-04-26 20:50:33.617' AS DateTime), CAST(N'2018-05-06 10:15:40.040' AS DateTime), N'3', 10, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (32, NULL, N'98576474', 8, 15, NULL, N'NoiSinh', CAST(N'2018-04-26 20:50:33.637' AS DateTime), CAST(N'2018-05-07 10:15:40.040' AS DateTime), N'3', 10, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (33, NULL, N'98576474', 8, 15, NULL, N'QueQuan', CAST(N'2018-04-26 20:50:33.650' AS DateTime), CAST(N'2018-05-07 10:15:40.040' AS DateTime), N'3', 10, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (35, 3, NULL, 3, NULL, NULL, N'HoTen', CAST(N'2018-04-30 12:11:02.287' AS DateTime), CAST(N'2018-05-05 12:11:02.287' AS DateTime), N'3', 5, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (41, 92, N'290852555', 10, 18, 13, N'HoTen', CAST(N'2018-05-09 00:40:32.313' AS DateTime), CAST(N'2018-05-14 00:40:32.313' AS DateTime), N'3', 1, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (42, NULL, N'290852555', 10, 18, 13, N'QueQuan', CAST(N'2018-05-09 00:41:31.200' AS DateTime), CAST(N'2018-05-14 00:41:31.200' AS DateTime), N'3', 1, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (44, 95, N'290852839999', NULL, NULL, NULL, N'HoTen', CAST(N'2018-05-09 01:36:00.750' AS DateTime), CAST(N'2018-05-14 01:36:00.750' AS DateTime), N'3', 1, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (45, 29, N'98645764', NULL, NULL, NULL, N'HoTen', CAST(N'2018-05-10 00:50:24.453' AS DateTime), CAST(N'2018-05-15 00:50:24.453' AS DateTime), N'3', 1, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (46, NULL, N'947868578', 11, 19, 16, N'NgaySinh', CAST(N'2018-05-10 15:22:43.647' AS DateTime), CAST(N'2018-05-15 15:22:43.647' AS DateTime), N'3', 1, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (48, 130, N'6666666666', NULL, NULL, NULL, N'HoTen', CAST(N'2018-05-12 12:12:28.027' AS DateTime), CAST(N'2018-05-17 12:12:28.027' AS DateTime), N'3', 1, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (49, 116, N'09090909', NULL, NULL, NULL, N'HoTen', CAST(N'2018-05-12 12:14:26.737' AS DateTime), CAST(N'2018-05-17 12:14:26.737' AS DateTime), N'3', 1, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (51, 11, N'96985768788', NULL, NULL, NULL, N'HoTen', CAST(N'2018-05-12 12:30:57.110' AS DateTime), CAST(N'2018-05-17 12:30:57.110' AS DateTime), N'3', 5, 1)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (52, 9, N'9858747875743', NULL, 9, NULL, N'HoTen', CAST(N'2018-05-12 12:33:12.603' AS DateTime), CAST(N'2018-05-17 12:33:12.603' AS DateTime), N'3', 10, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (53, NULL, N'9858747875743', NULL, 9, NULL, N'QueQuan', CAST(N'2018-05-12 12:33:12.630' AS DateTime), CAST(N'2018-05-17 12:33:12.630' AS DateTime), N'3', 10, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (54, NULL, N'9858747875743', NULL, 9, NULL, N'NgaySinh', CAST(N'2018-05-12 12:33:12.647' AS DateTime), CAST(N'2018-05-17 12:33:12.647' AS DateTime), N'3', 10, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (56, 15, N'4837876444', NULL, NULL, NULL, N'HoTen', CAST(N'2018-05-12 13:26:44.243' AS DateTime), CAST(N'2018-05-17 13:26:44.243' AS DateTime), N'3', 10, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (57, 25, N'2908666666', NULL, NULL, NULL, N'HoTen', CAST(N'2018-05-12 13:46:51.853' AS DateTime), CAST(N'2018-05-17 13:46:51.853' AS DateTime), N'3', 1, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (59, 135, NULL, NULL, 20, NULL, N'HoTen', CAST(N'2018-05-12 15:07:59.680' AS DateTime), CAST(N'2018-05-17 15:07:59.680' AS DateTime), N'3', 1, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (61, 136, NULL, NULL, 23, NULL, N'HoTen', CAST(N'2018-05-12 16:44:17.747' AS DateTime), CAST(N'2018-05-17 16:44:17.747' AS DateTime), N'3', 1, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (62, 7, N'0098989', NULL, 10, 8, N'HoTen', CAST(N'2018-05-12 23:38:06.367' AS DateTime), CAST(N'2018-05-17 23:38:06.367' AS DateTime), N'3', 1, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (63, NULL, N'0098989', NULL, 10, 8, N'QueQuan', CAST(N'2018-05-12 23:38:06.477' AS DateTime), CAST(N'2018-05-17 23:38:06.477' AS DateTime), N'3', 1, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (64, NULL, N'0098989', NULL, 10, 8, N'NgaySinh', CAST(N'2018-05-12 23:38:06.497' AS DateTime), CAST(N'2018-05-17 23:38:06.497' AS DateTime), N'3', 1, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (65, 52, N'0098989999', NULL, NULL, NULL, N'HoTen', CAST(N'2018-05-12 23:43:02.493' AS DateTime), CAST(N'2018-05-17 23:43:02.493' AS DateTime), N'3', NULL, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (70, 141, N'9868859986', NULL, NULL, 28, N'HoTen', CAST(N'2018-05-16 00:17:17.007' AS DateTime), CAST(N'2018-05-21 00:17:17.007' AS DateTime), N'2', 1, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (74, 23, NULL, NULL, NULL, 25, N'HoTen', CAST(N'2018-05-20 08:58:12.673' AS DateTime), CAST(N'2018-05-25 08:58:12.673' AS DateTime), N'2', 5, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (75, NULL, N'9868859986', NULL, NULL, 28, N'NgaySinh', CAST(N'2018-05-20 12:35:38.300' AS DateTime), CAST(N'2018-05-25 12:35:38.300' AS DateTime), N'2', 1, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (78, 158, N'9457685', 14, 25, 32, N'HoTen', CAST(N'2018-05-20 14:30:57.013' AS DateTime), CAST(N'2018-05-25 14:30:57.013' AS DateTime), N'2', 5, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (79, NULL, N'9457685', 14, 25, 32, N'QueQuan', CAST(N'2018-05-20 14:30:57.040' AS DateTime), CAST(N'2018-05-25 14:30:57.040' AS DateTime), N'2', 5, NULL)
INSERT [dbo].[TABLE_LOI] ([id], [id_HS], [So_CMT], [id_BTN], [id_GKS], [id_HB], [TypeLOI], [TimeStart], [TimeEnd], [TrangThai], [NguoiSua], [Status]) VALUES (80, NULL, N'9457685', 14, 25, 32, N'NgaySinh', CAST(N'2018-05-20 14:30:57.060' AS DateTime), CAST(N'2018-05-25 14:30:57.060' AS DateTime), N'2', 5, NULL)
SET IDENTITY_INSERT [dbo].[TABLE_LOI] OFF

GO
CREATE PROCEDURE [dbo].[PhanTrang] 
		@NguoiTao int,
		@LineStart int,
		@soBanGhi int
AS
BEGIN
	SELECT * FROM HOCSINH where NguoiTao=@NguoiTao ORDER BY id DESC OFFSET @LineStart ROWS FETCH NEXT @soBanGhi ROWS ONLY 
END

GO
CREATE PROCEDURE [dbo].[PhanTrangLoi]
		@LineStart int,
		@soBanGhi int,
		@NguoiSua int
AS
BEGIN
	SELECT * FROM TABLE_LOI where NguoiSua=@NguoiSua ORDER BY timeStart DESC OFFSET @LineStart ROWS FETCH NEXT @soBanGhi ROWS ONLY 
END
GO

CREATE PROC [dbo].[PhanTrangNguoiDung]
	   @LineStart int,
		@soBanGhi int
AS
BEGIN
	SELECT * FROM NHANVIEN ORDER BY Id DESC OFFSET @LineStart ROWS FETCH NEXT @soBanGhi ROWS ONLY 
END

GO
