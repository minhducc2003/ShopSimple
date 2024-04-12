
/****** Object:  Table [dbo].[Admin]    Script Date: 11/06/2023 6:47:08 CH ******/
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
/****** Object:  Table [dbo].[Catalog]    Script Date: 11/06/2023 6:47:08 CH ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 11/06/2023 6:47:08 CH ******/
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
/****** Object:  Table [dbo].[Import]    Script Date: 11/06/2023 6:47:08 CH ******/
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
/****** Object:  Table [dbo].[ImportDetail]    Script Date: 11/06/2023 6:47:08 CH ******/
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
/****** Object:  Table [dbo].[Invoice]    Script Date: 11/06/2023 6:47:08 CH ******/
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
/****** Object:  Table [dbo].[InvoiceDetail]    Script Date: 11/06/2023 6:47:08 CH ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 11/06/2023 6:47:08 CH ******/
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
/****** Object:  Table [dbo].[Status]    Script Date: 11/06/2023 6:47:08 CH ******/
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
/****** Object:  Table [dbo].[Supplier]    Script Date: 11/06/2023 6:47:08 CH ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 11/06/2023 6:47:08 CH ******/
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
