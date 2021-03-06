USE [BanQuanAo]
GO
/****** Object:  Table [dbo].[Categorys]    Script Date: 10/19/2020 12:38:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Slug] [varchar](255) NOT NULL,
	[Parentid] [int] NOT NULL,
	[Orders] [int] NULL,
	[Icon] [nvarchar](255) NULL,
	[Img] [nvarchar](255) NULL,
	[Metakey] [nvarchar](155) NULL,
	[Metadesc] [nvarchar](155) NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Trash] [bit] NULL,
	[StateId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 10/19/2020 12:38:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](64) NOT NULL,
	[Email] [nvarchar](64) NOT NULL,
	[Phone] [varchar](12) NOT NULL,
	[Title] [nvarchar](64) NOT NULL,
	[Content] [nvarchar](64) NOT NULL,
	[Detail] [ntext] NOT NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Trash] [bit] NULL,
	[StateId] [int] NULL,
 CONSTRAINT [PK__Contacts__3214EC071F136FB7] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contents]    Script Date: 10/19/2020 12:38:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Catid] [int] NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Slug] [varchar](255) NOT NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Img] [varchar](100) NOT NULL,
	[Metakey] [nvarchar](155) NULL,
	[Metadesc] [nvarchar](155) NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Trash] [bit] NULL,
	[StateId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 10/19/2020 12:38:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](100) NOT NULL,
	[Username] [varchar](100) NOT NULL,
	[Password] [varchar](32) NOT NULL,
	[Gender] [bit] NULL,
	[Birthday] [date] NULL,
	[Address] [nvarchar](100) NOT NULL,
	[City] [nvarchar](100) NOT NULL,
	[Phone] [varchar](13) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Trash] [bit] NULL,
	[StateId] [int] NULL,
 CONSTRAINT [PK__Customer__3214EC07A96EB319] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orderdetails]    Script Date: 10/19/2020 12:38:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orderdetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Orderid] [int] NOT NULL,
	[Productid] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Amount] [int] NOT NULL,
	[Discount] [float] NOT NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Trash] [bit] NULL,
	[StateId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10/19/2020 12:38:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Custemerid] [int] NOT NULL,
	[Orderdate] [date] NOT NULL,
	[Requireddate] [date] NULL,
	[Shipperdate] [date] NULL,
	[Total] [float] NULL,
	[Address] [nvarchar](100) NULL,
	[City] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Trash] [bit] NULL,
	[StateId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10/19/2020 12:38:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Catid] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Slug] [varchar](255) NOT NULL,
	[Img] [varchar](100) NOT NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Number] [int] NOT NULL,
	[Price_buy] [float] NOT NULL,
	[Price_sale] [float] NOT NULL,
	[Metakey] [nvarchar](155) NULL,
	[Metadesc] [nvarchar](155) NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Trash] [bit] NULL,
	[StateId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slideshow]    Script Date: 10/19/2020 12:38:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slideshow](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Slug] [varchar](255) NOT NULL,
	[Position] [varchar](100) NOT NULL,
	[Img] [varchar](100) NOT NULL,
	[Orders] [int] NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Trash] [bit] NULL,
	[StateId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[States]    Script Date: 10/19/2020 12:38:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topics]    Script Date: 10/19/2020 12:38:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topics](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Slug] [varchar](255) NOT NULL,
	[Parentid] [int] NOT NULL,
	[Orders] [int] NULL,
	[Icon] [varchar](50) NULL,
	[Img] [varchar](50) NULL,
	[Metakey] [nvarchar](155) NULL,
	[Metadesc] [nvarchar](155) NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Trash] [bit] NULL,
	[StateId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/19/2020 12:38:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](255) NOT NULL,
	[Username] [varchar](225) NOT NULL,
	[Password] [varchar](40) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[Gender] [bit] NULL,
	[Phone] [varchar](15) NOT NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Trash] [bit] NULL,
	[StateId] [int] NULL,
	[img] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categorys] ON 

INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [Parentid], [Orders], [Icon], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (1, N'Áo Khoác', N'ao-khoac', 0, 1, N'icon', N'aokhoac', N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [Parentid], [Orders], [Icon], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (2, N'Áo Sơ Mi', N'ao-so-mi', 0, 2, N'icon', N'aosomi', N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [Parentid], [Orders], [Icon], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (3, N'Áo Thun', N'ao-thun', 0, 3, N'icon', N'aothun', N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [Parentid], [Orders], [Icon], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (4, N'Quần Dài', N'quan-dai', 0, 4, N'icon', N'quandai', N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [Parentid], [Orders], [Icon], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (5, N'Quần Short', N'quan-short', 0, 5, N'icon', N'quanshort', N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [Parentid], [Orders], [Icon], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (6, N'Áo Khoác Vải', N'ao-khoac-vai', 1, 1, N'icon', N'aokhoacvai', N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [Parentid], [Orders], [Icon], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (7, N'Áo Khoác Dù', N'ao-khoac-du', 1, 2, N'icon', N'aokhoacdu', N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [Parentid], [Orders], [Icon], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (8, N'Áo Sơ Mi Tay Dài', N'ao-so-mi-tay-dai', 2, 1, N'icon', N'aosomitaydai', N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [Parentid], [Orders], [Icon], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (9, N'Áo Sơ Mi Tay Ngắn', N'ao-so-mi-tay-ngan', 2, 2, N'icon', N'aosomitayngan', N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [Parentid], [Orders], [Icon], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (10, N'Áo Thun Có Cổ', N'ao-thun-co-co', 3, 1, N'icon', N'aothuncoco', N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [Parentid], [Orders], [Icon], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (11, N'Áo Thun Cổ Tim', N'ao-thun-co-tim', 3, 2, N'icon', N'aothuncotim', N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [Parentid], [Orders], [Icon], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (12, N'Áo Thun Cổ Tròn', N'ao-thun-co-tron', 3, 3, N'icon', N'aothuncotron', N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [Parentid], [Orders], [Icon], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (13, N'Áo Thun Tay Dài', N'ao-thun-tay-dai', 3, 4, N'icon', N'aothuntaydai', N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [Parentid], [Orders], [Icon], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (14, N'Quần Dài Jeans', N'quan-dai-jeans', 4, 1, N'icon', N'quandaijeans', N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [Parentid], [Orders], [Icon], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (15, N'Quần Dài Kaki', N'quan-dai-kaki', 4, 2, N'icon', N'quandaikaki', N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [Parentid], [Orders], [Icon], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (16, N'Quần Dài Tây', N'quan-dai-tay', 4, 3, N'icon', N'quandaitay', N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [Parentid], [Orders], [Icon], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (17, N'Quần Short Jeans', N'quan-short-jeans', 5, 1, N'icon', N'quanshortjeans', N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [Parentid], [Orders], [Icon], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (18, N'Quần Short Kaki', N'quan-short-kaki', 5, 2, N'icon', N'quanshortkaki', N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [Parentid], [Orders], [Icon], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (30, N'demo', N'demo', 0, 1, N'icon-bootrasp', N'item-category.jpg', N'demo', N'demo', CAST(N'2018-05-06T15:08:59.457' AS DateTime), 1, CAST(N'2018-05-06T15:08:59.457' AS DateTime), 1, 1, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [Parentid], [Orders], [Icon], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (31, N'loaidemo', N'loaidemo', 30, 31, N'icon-bootrasp', N'item-category.jpg', N'loaidemo', N'loaidemo', CAST(N'2018-05-06T15:09:12.263' AS DateTime), 1, CAST(N'2018-05-06T15:09:12.263' AS DateTime), 1, 1, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [Parentid], [Orders], [Icon], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (32, N'Áo thun 123', N'ao-thun-123', 3, NULL, NULL, NULL, N'ao-thun', N'ao-thun', CAST(N'2020-10-19T00:32:37.737' AS DateTime), 2, CAST(N'2020-10-19T00:32:37.737' AS DateTime), 2, NULL, 0)
SET IDENTITY_INSERT [dbo].[Categorys] OFF
GO
SET IDENTITY_INSERT [dbo].[Contents] ON 

INSERT [dbo].[Contents] ([Id], [Catid], [Title], [Slug], [Detail], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (2, 1, N'Giới thiệu về cửa hàng', N'gioi-thieu-ve-cua-hang', N'NTF viết tắt của Ngọc Tuấn Fashion', N'gthieu.jpg', N'gioithieuvecuahang', N'gioithieuvecuahang', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Contents] ([Id], [Catid], [Title], [Slug], [Detail], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (3, 2, N'Vấn đề hôm nay', N'van-de-hom-nay', N'Trong chăn gối có thể chứa tới 1,5 triệu con mạt bụi, tác nhân chính gây ra tình trạng dị ứng cho con người. Nhất là những gia đình có trẻ con và người già thì cách tiêu diệt mạt bụi là câu hỏi lớn ', N'tintuc01.jpg', N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Contents] ([Id], [Catid], [Title], [Slug], [Detail], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (4, 2, N'Người mẹ nuôi con', N'nguoi-me-nuoi-con', N'Liên quan đến vụ việc một loạt video clip được tung lên mạng facebook về một người phụ nữ ở huyện Triệu Sơn, tỉnh Thanh Hóa, bỏ đi nhiều năm nay trở về giành quyền nuôi con nhưng cháu bé không chịu, gây xôn xao cộng đồng mạng những ngày qua, phóng viên Báo Người Lao Động đã đến gia đình người phụ nữ trong clip để tìm hiểu rõ.

', N'tintuc03.jpg', N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Contents] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [Fullname], [Username], [Password], [Gender], [Birthday], [Address], [City], [Phone], [Email], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (2, N'Nguyễn Ngọc Tuấn', N'admin', N'123456', 1, CAST(N'1997-08-08' AS Date), N'20/13 Thích Quảng Đức P.5 Q.PN', N'TPHCM', N'0964432146', N'nguyenngoctuan960@gmail.com', NULL, 1, NULL, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (9, 6, N'Áo Khoác Vải 01', N'ao-khoac-vai-01', N'aokhoacvai01.jpg', N'Chi tiết áo khoác vải 01', 10, 350000, 300000, N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (13, 6, N'Áo Khoác Vải 02', N'ao-khoac-vai-02', N'aokhoacvai02.jpg', N'Chi tiết áo khoác vải 02', 10, 350000, 300000, N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (15, 6, N'Áo Khoác Vải 03', N'ao-khoac-vai-03', N'aokhoacvai03.jpg', N'Chi tiết áo khoác vải 03', 10, 350000, 300000, N'metakey', N'metadescc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (16, 6, N'Áo Khoác Vải 04', N'ao-khoac-vai-04', N'aokhoacvai04.jpg', N'Chi tiết áo khoác vải 04', 10, 350000, 300000, N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (17, 6, N'Áo Khoác Vải 05', N'ao-khoac-vai-05', N'aokhoacvai05.jpg', N'Chi tiết áo khoác vải 05', 10, 350000, 300000, N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (18, 7, N'Áo Khoác Dù 01', N'ao-khoac-du-01', N'aokhoacdu01.jpg', N'Chi tiết áo khoác dù 01', 10, 400000, 350000, N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (20, 7, N'Áo Khoác Dù 02', N'ao-khoac-du-02', N'aokhoacdu02.jpg', N'Chi tiết áo khoác dù 02', 10, 400000, 350000, N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (21, 7, N'Áo Khoác Dù 03', N'ao-khoac-du-03', N'aokhoacdu03.jpg', N'Chi tiết áo khoác dù 03', 10, 400000, 350000, N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (22, 7, N'Áo Khoác Dù 04', N'ao-khoac-du-04', N'aokhoacdu04.jpg', N'Chi tiết áo khoác dù 04', 10, 400000, 350000, N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (23, 7, N'Áo Khoác Dù 05', N'ao-khoac-du-05', N'aokhoacdu05.jpg', N'Chi tiết áo khoác dù 05', 10, 400000, 350000, N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (24, 8, N'Áo Sơ Mi Tay Dài 01', N'ao-so-mi-tay-dai-01', N'aosomitaydai01.jpg', N'Chi tiết áo sơ mi tay dài 01', 10, 350000, 320000, N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (25, 8, N'Áo Sơ Mi Tay Dài 02', N'ao-so-mi-tay-dai-02', N'aosomitaydai02.jpg', N'Chi tiết áo sơ mi tay dài 02', 10, 350000, 320000, N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (27, 8, N'Áo Sơ Mi Tay Dài 03', N'ao-so-mi-tay-dai-03', N'aosomitaydai03.jpg', N'Chi tiết áo sơ mi tay dài 03', 10, 350000, 320000, N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (28, 8, N'Áo Sơ Mi Tay Dài 04', N'ao-so-mi-tay-dai-04', N'aosomitaydai04.jpg', N'Chi tiết áo sơ mi tay dài 04', 10, 350000, 320000, N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (29, 8, N'Áo Sơ Mi Tay Dài 05', N'ao-so-mi-tay-dai-05', N'aosomitaydai05.jpg', N'Chi tiết áo sơ mi tay dài 05', 10, 350000, 320000, N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (30, 9, N'Áo Sơ Mi Tay Ngắn 01', N'ao-so-mi-tay-ngan-01', N'aosomitayngan01.jpg', N'Chi tiết áo sơ mi tay ngắn 01', 10, 350000, 320000, N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (31, 9, N'Áo Sơ Mi Tay Ngắn 02', N'ao-so-mi-tay-ngan-02', N'aosomitayngan02.jpg', N'Chi tiết áo sơ mi tay ngắn 02', 10, 350000, 320000, N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (32, 9, N'Áo Sơ Mi Tay Ngắn 03', N'ao-so-mi-tay-ngan-03', N'aosomitayngan03.jpg', N'Chi tiết áo sơ mi tay ngắn 03', 10, 350000, 320000, N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (33, 9, N'Áo Sơ Mi Tay Ngắn 04', N'ao-so-mi-tay-ngan-04', N'aosomitayngan04.jpg', N'Chi tiết áo sơ mi tay ngắn 04', 10, 350000, 320000, N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (35, 9, N'Áo Sơ Mi Tay Ngắn 05', N'ao-so-mi-tay-ngan-05', N'aosomitayngan05.jpg', N'Chi tiết áo sơ mi tay ngắn 05', 10, 350000, 320000, N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (38, 10, N'Áo Thun Có Cổ 01', N'ao-thun-co-co-01', N'aothuncoco01.jpg', N'Chi tiết áo thun có cổ 01', 10, 150000, 150000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (39, 10, N'Áo Thun Có Cổ 02', N'ao-thun-co-co-02', N'aothuncoco02.jpg', N'Chi tiết áo thun có cổ 02', 10, 150000, 120000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (40, 10, N'Áo Thun Có Cổ 03', N'ao-thun-co-co-03', N'aothuncoco03.jpg', N'Chi tiết áo thun có cổ 03', 10, 150000, 120000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (41, 10, N'Áo Thun Có Cổ 04', N'ao-thun-co-co-04', N'aothuncoco04.jpg', N'Chi tiết áo thun có cổ 04', 10, 150000, 120000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (42, 10, N'Áo Thun Có Cổ 05', N'ao-thun-co-co-05', N'aothuncoco05.jpg', N'Chi tiết áo thun có cổ 05', 10, 150000, 120000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (43, 11, N'Áo Thun Có Tim 01', N'ao-thun-co-tim-01', N'aothuncotim01.jpg', N'Chi tiết áo thun có tim 01', 10, 150000, 120000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (44, 11, N'Áo Thun Có Tim 02', N'ao-thun-co-tim-02', N'aothuncotim02.jpg', N'Chi tiết áo thun có tim 02', 10, 150000, 120000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (46, 11, N'Áo Thun Có Tim 03', N'ao-thun-co-tim-03', N'aothuncotim03.jpg', N'Chi tiết áo thun có tim 03', 10, 150000, 120000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (47, 11, N'Áo Thun Có Tim 04', N'ao-thun-co-tim-04', N'aothuncotim04.jpg', N'Chi tiết áo thun có tim 04', 10, 150000, 120000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (48, 11, N'Áo Thun Có Tim 05', N'ao-thun-co-tim-05', N'aothuncotim05.jpg', N'Chi tiết áo thun có tim 05', 10, 150000, 120000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (49, 12, N'Áo Thun Cổ Tròn 01', N'ao-thun-co-tron-01', N'aothuncotron01.jpg', N'Chi tiết áo thun có tròn 01', 10, 150000, 120000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (51, 12, N'Áo Thun Cổ Tròn 02', N'ao-thun-co-tron-02', N'aothuncotron02.jpg', N'Chi tiết áo thun có tròn 02', 10, 150000, 120000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (53, 12, N'Áo Thun Cổ Tròn 03', N'ao-thun-co-tron-03', N'aothuncotron03.jpg', N'Chi tiết áo thun có tròn 03', 10, 150000, 120000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (54, 12, N'Áo Thun Cổ Tròn 04', N'ao-thun-co-tron-04', N'aothuncotron04.jpg', N'Chi tiết áo thun có tròn 04', 10, 150000, 120000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (55, 12, N'Áo Thun Cổ Tròn 05', N'ao-thun-co-tron-05', N'aothuncotron05.jpg', N'Chi tiết áo thun có tròn 05', 10, 150000, 120000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (56, 13, N'Áo Thu Tay Dài 01', N'ao-thun-tay-dai-01', N'aothuntaydai01.jpg', N'Chi tiết áo thun tay dài 01', 10, 200000, 150000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (57, 13, N'Áo Thu Tay Dài 02', N'ao-thun-tay-dai-02', N'aothuntaydai02.jpg', N'Chi tiết áo thun tay dài 02', 10, 200000, 150000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (58, 13, N'Áo Thu Tay Dài 03', N'ao-thun-tay-dai-03', N'aothuntaydai03.jpg', N'Chi tiết áo thun tay dài 03', 10, 200000, 150000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (59, 13, N'Áo Thu Tay Dài 04', N'ao-thun-tay-dai-04', N'aothuntaydai04.jpg', N'Chi tiết áo thun tay dài 04', 10, 200000, 150000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (60, 13, N'Áo Thu Tay Dài 05', N'ao-thun-tay-dai-05', N'aothuntaydai05.jpg', N'Chi tiết áo thun tay dài 05', 10, 200000, 150000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (62, 14, N'Quần Dài Jeans 01', N'quan-dai-jeans-01', N'quandaijeans01.jpg', N'Chi tiết quần dài jeans 01', 10, 500000, 450000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (63, 14, N'Quần Dài Jeans 02', N'quan-dai-jeans-02', N'quandaijeans02.jpg', N'Chi tiết quần dài jeans 02', 10, 500000, 450000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (64, 14, N'Quần Dài Jeans 03', N'quan-dai-jeans-03', N'quandaijeans03.jpg', N'Chi tiết quần dài jeans 03', 10, 500000, 450000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (65, 14, N'Quần Dài Jeans 04', N'quan-dai-jeans-04', N'quandaijeans04.jpg', N'Chi tiết quần dài jeans 04', 10, 500000, 450000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (66, 14, N'Quần Dài Jeans 05', N'quan-dai-jeans-05', N'quandaijeans05.jpg', N'Chi tiết quần dài jeans 05', 10, 500000, 450000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (67, 15, N'Quần Dài Kaki 01', N'quan-dai-kaki-01', N'quandaikaki01.jpg', N'Chi tiết quần dài kaki 01', 10, 500000, 450000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (68, 15, N'Quần Dài Kaki 02', N'quan-dai-kaki-02', N'quandaikaki02.jpg', N'Chi tiết quần dài kaki 02', 10, 500000, 450000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (70, 15, N'Quần Dài Kaki 03', N'quan-dai-kaki-03', N'quandaikaki03.jpg', N'Chi tiết quần dài kaki 03', 10, 500000, 450000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (71, 15, N'Quần Dài Kaki 04', N'quan-dai-kaki-04', N'quandaikaki04.jpg', N'Chi tiết quần dài kaki 04', 10, 500000, 450000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (74, 15, N'Quần Dài Kaki 05', N'quan-dai-kaki-05', N'quandaikaki05.jpg', N'Chi tiết quần dài kaki 05', 10, 500000, 450000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (77, 16, N'Quần Dài Tây 01', N'quan-dai-tay-01', N'quandaitay01.jpg', N'Chi tiết quần dài tây 01', 10, 450000, 400000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (78, 16, N'Quần Dài Tây 02', N'quan-dai-tay-02', N'quandaitay02.jpg', N'Chi tiết quần dài tây 02', 10, 450000, 400000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (79, 16, N'Quần Dài Tây 03', N'quan-dai-tay-03', N'quandaitay03.jpg', N'Chi tiết quần dài tây 03', 10, 450000, 400000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (80, 16, N'Quần Dài Tây 04', N'quan-dai-tay-04', N'quandaitay04.jpg', N'Chi tiết quần dài tây 04', 10, 450000, 400000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (82, 16, N'Quần Dài Tây 05', N'quan-dai-tay-05', N'quandaitay05.jpg', N'Chi tiết quần dài tây 05', 10, 450000, 400000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (83, 17, N'Quần Short Jeans 01', N'quan-short-jeans-01', N'quanshortjeans01.jpg', N'Chi tiết quần short jeans 01', 10, 350000, 300000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (86, 17, N'Quần Short Jeans 02', N'quan-short-jeans-02', N'quanshortjeans02.jpg', N'Chi tiết quần short jeans 02', 10, 350000, 300000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (87, 18, N'Quần Short Kaki 01', N'quan-short-kaki-01', N'quanshortkaki01.jpg', N'Chi tiết quần short kaki 01', 10, 350000, 300000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (89, 18, N'Quần Short Kaki 02', N'quan-short-kaki -02', N'quanshortkaki02.jpg', N'Chi tiết quần short kaki 02', 10, 350000, 300000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (90, 18, N'Quần Short Kaki 03', N'quan-short-kaki -03', N'quanshortkaki03.jpg', N'Chi tiết quần short kaki 03', 10, 350000, 300000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (92, 18, N'Quần Short Kaki 04', N'quan-short-kaki-04', N'quanshortkaki04.jpg', N'Chi tiết quần short kaki 04', 10, 350000, 300000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (93, 18, N'Quần Short Kaki 05', N'quan-short-kaki-05', N'quanshortkaki05.jpg', N'Chi tiết quần short kaki 05', 10, 350000, 300000, NULL, NULL, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Products] ([Id], [Catid], [Name], [Slug], [Img], [Detail], [Number], [Price_buy], [Price_sale], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (102, 31, N'spdemospdemo', N'spdemospdemo', N'nntaokhoacdu01.jpg', N'<p>spdemo</p>', 10, 10, 10, N'spdemo', N'spdemo', CAST(N'2018-05-06T16:47:28.373' AS DateTime), 1, CAST(N'2018-05-06T16:51:46.230' AS DateTime), 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Slideshow] ON 

INSERT [dbo].[Slideshow] ([Id], [Name], [Slug], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (1, N'Hình ảnh 01', N'hinh-anh-01', N'slideshow', N'slideshow01.jpg', 1, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Slideshow] ([Id], [Name], [Slug], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (4, N'Hình ảnh 02', N'hinh-anh-02', N'slideshow', N'slideshow02.jpg', 2, NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Slideshow] ([Id], [Name], [Slug], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (6, N'Hình ảnh 03', N'hinh-anh-03', N'slideshow', N'slideshow03.png', 3, NULL, 1, NULL, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Slideshow] OFF
GO
SET IDENTITY_INSERT [dbo].[Topics] ON 

INSERT [dbo].[Topics] ([Id], [Name], [Slug], [Parentid], [Orders], [Icon], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (1, N'Giới Thiệu', N'gioi-thieu', 0, 1, N'icons', N'img', N'metakey', N'metadesc', NULL, 1, NULL, 1, 1, 1)
INSERT [dbo].[Topics] ([Id], [Name], [Slug], [Parentid], [Orders], [Icon], [Img], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId]) VALUES (2, N'Tin Tức', N'tin-tuc', 0, 2, N'icons', N'img', NULL, NULL, NULL, 1, NULL, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Topics] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Fullname], [Username], [Password], [Email], [Gender], [Phone], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId], [img]) VALUES (1, N'Nguyễn Ngọc Tuấn', N'admin', N'123456', N'nguyenngoctuan960@gmail.com', 1, N'0938162303', NULL, 1, CAST(N'2020-10-19T00:30:35.380' AS DateTime), 1, 1, 3, NULL)
INSERT [dbo].[Users] ([Id], [Fullname], [Username], [Password], [Email], [Gender], [Phone], [Created_at], [Created_by], [Updated_at], [Updated_by], [Trash], [StateId], [img]) VALUES (2, N'Nguyễn Ngọc Tuấn', N'sa', N'NWoZK3kTsExUV00Ywo1G5jlUKKs=', N'nguyenngoctuan960@gmail.com', 1, N'0938162303', CAST(N'2020-10-19T00:30:30.633' AS DateTime), 1, CAST(N'2020-10-19T00:30:33.360' AS DateTime), 1, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Categorys] ADD  DEFAULT ('0') FOR [Parentid]
GO
ALTER TABLE [dbo].[Categorys] ADD  DEFAULT ('1') FOR [Created_by]
GO
ALTER TABLE [dbo].[Categorys] ADD  DEFAULT ('1') FOR [Updated_by]
GO
ALTER TABLE [dbo].[Categorys] ADD  DEFAULT ('1') FOR [Trash]
GO
ALTER TABLE [dbo].[Categorys] ADD  DEFAULT ('1') FOR [StateId]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF__Contacts__Create__239E4DCF]  DEFAULT ('1') FOR [Created_by]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF__Contacts__Update__24927208]  DEFAULT ('1') FOR [Updated_by]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF__Contacts__Trash__25869641]  DEFAULT ('1') FOR [Trash]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF__Contacts__Status__267ABA7A]  DEFAULT ('1') FOR [StateId]
GO
ALTER TABLE [dbo].[Contents] ADD  DEFAULT ('1') FOR [Created_by]
GO
ALTER TABLE [dbo].[Contents] ADD  DEFAULT ('1') FOR [Updated_by]
GO
ALTER TABLE [dbo].[Contents] ADD  DEFAULT ('1') FOR [Trash]
GO
ALTER TABLE [dbo].[Contents] ADD  DEFAULT ('1') FOR [StateId]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF__Customers__Creat__2F10007B]  DEFAULT ('1') FOR [Created_by]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF__Customers__Updat__300424B4]  DEFAULT ('1') FOR [Updated_by]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF__Customers__Trash__30F848ED]  DEFAULT ('1') FOR [Trash]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF__Customers__Statu__31EC6D26]  DEFAULT ('1') FOR [StateId]
GO
ALTER TABLE [dbo].[Orderdetails] ADD  DEFAULT ('1') FOR [Created_by]
GO
ALTER TABLE [dbo].[Orderdetails] ADD  DEFAULT ('1') FOR [Updated_by]
GO
ALTER TABLE [dbo].[Orderdetails] ADD  DEFAULT ('1') FOR [Trash]
GO
ALTER TABLE [dbo].[Orderdetails] ADD  DEFAULT ('1') FOR [StateId]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ('1') FOR [Created_by]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ('1') FOR [Updated_by]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ('1') FOR [Trash]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ('1') FOR [StateId]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ('1') FOR [Created_by]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ('1') FOR [Updated_by]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ('1') FOR [Trash]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ('1') FOR [StateId]
GO
ALTER TABLE [dbo].[Slideshow] ADD  DEFAULT ('1') FOR [Created_by]
GO
ALTER TABLE [dbo].[Slideshow] ADD  DEFAULT ('1') FOR [Updated_by]
GO
ALTER TABLE [dbo].[Slideshow] ADD  DEFAULT ('1') FOR [Trash]
GO
ALTER TABLE [dbo].[Slideshow] ADD  DEFAULT ('1') FOR [StateId]
GO
ALTER TABLE [dbo].[Topics] ADD  DEFAULT ('0') FOR [Parentid]
GO
ALTER TABLE [dbo].[Topics] ADD  DEFAULT ('1') FOR [Created_by]
GO
ALTER TABLE [dbo].[Topics] ADD  DEFAULT ('1') FOR [Updated_by]
GO
ALTER TABLE [dbo].[Topics] ADD  DEFAULT ('1') FOR [Trash]
GO
ALTER TABLE [dbo].[Topics] ADD  DEFAULT ('1') FOR [StateId]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('1') FOR [Created_by]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('1') FOR [Updated_by]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('1') FOR [Trash]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('1') FOR [StateId]
GO
