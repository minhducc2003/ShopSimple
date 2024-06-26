CREATE DATABASE [ShopSimple]
GO
USE [ShopSimple]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 11/06/2023 6:48:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Username] [varchar](100) NOT NULL,
	[Password] [varchar](max) NOT NULL,
	[Name] [nvarchar](80) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Catalog]    Script Date: 11/06/2023 6:48:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog](
	[CatalogCode] [varchar](5) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Catalog] PRIMARY KEY CLUSTERED 
(
	[CatalogCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/06/2023 6:48:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Phone] [varchar](11) NOT NULL,
	[Name] [varchar](80) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Import]    Script Date: 11/06/2023 6:48:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Import](
	[ImportCode] [varchar](25) NOT NULL,
	[Date] [datetime] NOT NULL,
	[UserID] [varchar](100) NOT NULL,
	[Total] [int] NOT NULL,
 CONSTRAINT [PK_Import] PRIMARY KEY CLUSTERED 
(
	[ImportCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImportDetail]    Script Date: 11/06/2023 6:48:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportDetail](
	[ImportID] [varchar](25) NOT NULL,
	[ProductID] [varchar](25) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_ImportDetail] PRIMARY KEY CLUSTERED 
(
	[ImportID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 11/06/2023 6:48:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[InvoiceCode] [varchar](25) NOT NULL,
	[UserID] [varchar](100) NOT NULL,
	[CustomerPhone] [varchar](11) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Total] [int] NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[InvoiceCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InvoiceDetail]    Script Date: 11/06/2023 6:48:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceDetail](
	[InvoiceID] [varchar](25) NOT NULL,
	[ProductID] [varchar](25) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_InvoiceDetail] PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/06/2023 6:48:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductCode] [varchar](25) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[CatalogID] [varchar](5) NOT NULL,
	[SupplierID] [varchar](5) NOT NULL,
	[Amount] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[StatusID] [varchar](3) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Status]    Script Date: 11/06/2023 6:48:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusCode] [varchar](3) NOT NULL,
	[Name] [nvarchar](120) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 11/06/2023 6:48:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierCode] [varchar](5) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Email] [varchar](500) NULL,
	[Phone] [varchar](12) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 11/06/2023 6:48:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Username] [varchar](100) NOT NULL,
	[Password] [varchar](max) NOT NULL,
	[Name] [nvarchar](80) NOT NULL,
	[Phone] [varchar](11) NOT NULL,
	[Address] [nvarchar](500) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Admin] ([Username], [Password], [Name]) VALUES (N'admin', N'123', N'Quản lý nè')
INSERT [dbo].[Catalog] ([CatalogCode], [Name]) VALUES (N'loi01', N'Loại 01')
INSERT [dbo].[Catalog] ([CatalogCode], [Name]) VALUES (N'loi02', N'Loại 002')
INSERT [dbo].[Catalog] ([CatalogCode], [Name]) VALUES (N'loi03', N'Loại 03')
INSERT [dbo].[Customer] ([Phone], [Name]) VALUES (N'0998376111', N'Khách hàng 02')
INSERT [dbo].[Customer] ([Phone], [Name]) VALUES (N'0999847361', N'Khách hàng 03')
INSERT [dbo].[Customer] ([Phone], [Name]) VALUES (N'0999873615', N'Khách hàng 01')
INSERT [dbo].[Import] ([ImportCode], [Date], [UserID], [Total]) VALUES (N'NH20230608230016', CAST(N'2023-06-08T23:00:16.317' AS DateTime), N'admin', 2320000)
INSERT [dbo].[ImportDetail] ([ImportID], [ProductID], [Quantity], [Price]) VALUES (N'NH20230608230016', N'SP20230608230022', 4, 130000)
INSERT [dbo].[ImportDetail] ([ImportID], [ProductID], [Quantity], [Price]) VALUES (N'NH20230608230016', N'SP20230608230124', 4, 450000)
INSERT [dbo].[Invoice] ([InvoiceCode], [UserID], [CustomerPhone], [Date], [Total]) VALUES (N'HD20230611135321', N'nv002', N'0998376111', CAST(N'2023-06-11T13:53:21.117' AS DateTime), 1030000)
INSERT [dbo].[InvoiceDetail] ([InvoiceID], [ProductID], [Quantity], [Price]) VALUES (N'HD20230611135321', N'SP20230608230022', 1, 130000)
INSERT [dbo].[InvoiceDetail] ([InvoiceID], [ProductID], [Quantity], [Price]) VALUES (N'HD20230611135321', N'SP20230608230124', 2, 900000)
INSERT [dbo].[Product] ([ProductCode], [Name], [Image], [CatalogID], [SupplierID], [Amount], [Price], [StatusID], [CreateDate]) VALUES (N'SP20230608230022', N'Sản phẩm 01', N'giohoa3.jpg, giohoa4.jpg', N'loi03', N'ncc02', 3, 130000, N'coh', CAST(N'2023-06-08T23:00:16.317' AS DateTime))
INSERT [dbo].[Product] ([ProductCode], [Name], [Image], [CatalogID], [SupplierID], [Amount], [Price], [StatusID], [CreateDate]) VALUES (N'SP20230608230124', N'Sản phẩm 002', N'giohoa1.jpg, giohoa2.jpg', N'loi01', N'ncc02', 3, 450000, N'coh', CAST(N'2023-06-08T23:00:16.317' AS DateTime))
INSERT [dbo].[Status] ([StatusCode], [Name]) VALUES (N'coh', N'Còn hàng')
INSERT [dbo].[Status] ([StatusCode], [Name]) VALUES (N'ctt', N'Chờ thanh toán')
INSERT [dbo].[Status] ([StatusCode], [Name]) VALUES (N'oos', N'Hết hàng')
INSERT [dbo].[Supplier] ([SupplierCode], [Name], [Email], [Phone]) VALUES (N'ncc01', N'Nhà cung cấp 01', N'ncc01@gmail.com', N'0999876512')
INSERT [dbo].[Supplier] ([SupplierCode], [Name], [Email], [Phone]) VALUES (N'ncc02', N'Nhà cung cấp 02', N'ncc03@gmail.com', N'0987123212')
INSERT [dbo].[User] ([Username], [Password], [Name], [Phone], [Address]) VALUES (N'nv001', N'12', N'Nhân viên 01', N'0999872371', N'Quận 1')
INSERT [dbo].[User] ([Username], [Password], [Name], [Phone], [Address]) VALUES (N'nv002', N'1111', N'Nhân viên 02', N'0988726541', N'Quận 2')
ALTER TABLE [dbo].[Import]  WITH CHECK ADD  CONSTRAINT [FK_Import_Admin] FOREIGN KEY([UserID])
REFERENCES [dbo].[Admin] ([Username])
GO
ALTER TABLE [dbo].[Import] CHECK CONSTRAINT [FK_Import_Admin]
GO
ALTER TABLE [dbo].[ImportDetail]  WITH CHECK ADD  CONSTRAINT [FK_ImportDetail_Import] FOREIGN KEY([ImportID])
REFERENCES [dbo].[Import] ([ImportCode])
GO
ALTER TABLE [dbo].[ImportDetail] CHECK CONSTRAINT [FK_ImportDetail_Import]
GO
ALTER TABLE [dbo].[ImportDetail]  WITH CHECK ADD  CONSTRAINT [FK_ImportDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductCode])
GO
ALTER TABLE [dbo].[ImportDetail] CHECK CONSTRAINT [FK_ImportDetail_Product]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Customer] FOREIGN KEY([CustomerPhone])
REFERENCES [dbo].[Customer] ([Phone])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Customer]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([Username])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_User]
GO
ALTER TABLE [dbo].[InvoiceDetail]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetail_Invoice] FOREIGN KEY([InvoiceID])
REFERENCES [dbo].[Invoice] ([InvoiceCode])
GO
ALTER TABLE [dbo].[InvoiceDetail] CHECK CONSTRAINT [FK_InvoiceDetail_Invoice]
GO
ALTER TABLE [dbo].[InvoiceDetail]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductCode])
GO
ALTER TABLE [dbo].[InvoiceDetail] CHECK CONSTRAINT [FK_InvoiceDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Catalog] FOREIGN KEY([CatalogID])
REFERENCES [dbo].[Catalog] ([CatalogCode])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Catalog]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Status] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([StatusCode])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Status]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([SupplierCode])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Supplier]
GO
