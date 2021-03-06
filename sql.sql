USE [master]
GO
/****** Object:  Database [Project2]    Script Date: 10/28/2018 8:21:52 PM ******/
CREATE DATABASE [Project2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Project2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Project2.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Project2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Project2_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Project2] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Project2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Project2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Project2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Project2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Project2] SET ARITHABORT OFF 
GO
ALTER DATABASE [Project2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Project2] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Project2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Project2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Project2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Project2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Project2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Project2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Project2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Project2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Project2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Project2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Project2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Project2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Project2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Project2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Project2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Project2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Project2] SET RECOVERY FULL 
GO
ALTER DATABASE [Project2] SET  MULTI_USER 
GO
ALTER DATABASE [Project2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Project2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Project2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Project2] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Project2', N'ON'
GO
USE [Project2]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 10/28/2018 8:21:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[IdAdmin] [varchar](50) NOT NULL,
	[UsernameAdmin] [varchar](50) NULL,
	[PasswordAdmin] [varchar](50) NULL,
	[StatusAdmin] [bit] NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[IdAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminDetails]    Script Date: 10/28/2018 8:21:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminDetails](
	[IdAdmin] [varchar](50) NOT NULL,
	[UsernameAdmin] [varchar](50) NOT NULL,
	[PasswordAdmin] [varchar](50) NOT NULL,
	[NameAdmin] [nvarchar](50) NOT NULL,
	[EmailAdmin] [varchar](50) NOT NULL,
	[PhoneAdmin] [varchar](11) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BestSellingProduct]    Script Date: 10/28/2018 8:21:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BestSellingProduct](
	[ProductCode] [varchar](50) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductImage] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BestSelling Product] PRIMARY KEY CLUSTERED 
(
	[ProductCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CodeDiscount]    Script Date: 10/28/2018 8:21:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CodeDiscount](
	[Code] [varchar](50) NOT NULL,
	[CodeType] [varchar](50) NULL,
	[CodeName] [varchar](50) NULL,
	[Author] [varchar](50) NULL,
	[Decriptions] [varchar](50) NULL,
	[TimeStart] [varchar](11) NULL,
	[TimeEnd] [varchar](11) NULL,
	[PriceDiscountPercent] [int] NULL,
 CONSTRAINT [PK_Code Discount] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 10/28/2018 8:21:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [varchar](10) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Customer_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DetailCustomer]    Script Date: 10/28/2018 8:21:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DetailCustomer](
	[Id] [varchar](10) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](11) NULL,
	[Address] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FavoriteProduct]    Script Date: 10/28/2018 8:21:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FavoriteProduct](
	[ProductCode] [varchar](50) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductImage] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Favorite Product] PRIMARY KEY CLUSTERED 
(
	[ProductCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 10/28/2018 8:21:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Invoice](
	[OrderId] [varchar](50) NULL,
	[InvoiceId] [varchar](50) NOT NULL,
	[OrderStatus] [bit] NULL,
	[Total] [int] NULL,
	[Payments] [varchar](50) NULL,
	[DeliveryDate] [varchar](11) NULL,
	[DeliveryAddress] [varchar](50) NULL,
	[Phone] [varchar](11) NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvoiceDetails]    Script Date: 10/28/2018 8:21:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvoiceDetails](
	[OrderId] [varchar](50) NOT NULL,
	[InvoiceId] [varchar](50) NOT NULL,
	[InvoiceName] [varchar](50) NOT NULL,
	[OrderStatus] [bit] NOT NULL,
	[Total] [int] NOT NULL,
	[Payments] [varchar](50) NOT NULL,
	[DeliveryDate] [varchar](11) NOT NULL,
	[DateOfInvoice] [varchar](11) NOT NULL,
	[DeliveryAddress] [varchar](50) NOT NULL,
	[Reciever] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Order]    Script Date: 10/28/2018 8:21:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [varchar](50) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[OrderStatus] [bit] NULL,
	[Total] [int] NULL,
	[Payments] [varchar](50) NULL,
	[DeliveryDate] [varchar](11) NULL,
	[DeliveryAddress] [varchar](50) NULL,
	[Phone] [varchar](11) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 10/28/2018 8:21:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderId] [varchar](50) NULL,
	[CustomerName] [nvarchar](50) NULL,
	[EmailCustomer] [varchar](50) NULL,
	[PhoneCustomer] [varchar](11) NULL,
	[ProductName] [varchar](50) NULL,
	[Quantity] [int] NULL,
	[OrderStatus] [bit] NULL,
	[Total] [int] NULL,
	[Payments] [varchar](50) NULL,
	[DeliveryForm] [varchar](50) NULL,
	[DeliveryDate] [varchar](11) NULL,
	[DeliveryAddress] [varchar](50) NULL,
	[DeliveryAdded] [varchar](11) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PriceProduct]    Script Date: 10/28/2018 8:21:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PriceProduct](
	[ProductCode] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductPrice] [int] NOT NULL,
	[DateUpdatePrice] [varchar](11) NOT NULL,
	[CodeBrand] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/28/2018 8:21:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ProductCode] [int] NOT NULL,
	[ProductName] [nvarchar](50) NULL,
	[ProductImage] [varchar](50) NULL,
	[ProductStatus] [bit] NULL,
	[ProductPrice] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 10/28/2018 8:21:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductDetails](
	[ProductCode] [int] NULL,
	[ProductName] [nvarchar](50) NULL,
	[ProductImage] [varchar](50) NULL,
	[Quantity] [int] NULL,
	[ProductStatus] [varchar](50) NULL,
	[CodeType] [varchar](50) NULL,
	[ProductPrice] [int] NULL,
	[ProductHighlights] [nvarchar](50) NULL,
	[CodeBrand] [varchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[ProductTag] [varchar](50) NULL,
	[ProductGuarantee] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RunoutProduct]    Script Date: 10/28/2018 8:21:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RunoutProduct](
	[ProductCode] [varchar](50) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductImage] [varchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Runout Product] PRIMARY KEY CLUSTERED 
(
	[ProductCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 10/28/2018 8:21:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staff](
	[IdStaff] [varchar](10) NOT NULL,
	[UsernameStaff] [varchar](50) NULL,
	[PasswordStaff] [varchar](50) NULL,
	[StatusStaff] [bit] NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[IdStaff] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StaffDetails]    Script Date: 10/28/2018 8:21:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StaffDetails](
	[IdStaff] [varchar](10) NOT NULL,
	[UsernameStaff] [varchar](50) NOT NULL,
	[PasswordStaff] [varchar](50) NOT NULL,
	[NameStaff] [varchar](50) NOT NULL,
	[EmailStaff] [varchar](50) NOT NULL,
	[PhoneStaff] [varchar](11) NOT NULL,
	[AddressStaff] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TypeProduct]    Script Date: 10/28/2018 8:21:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TypeProduct](
	[No.] [int] NOT NULL,
	[CodeType] [varchar](50) NOT NULL,
	[NameType] [varchar](50) NULL,
	[CodeBrand] [varchar](50) NOT NULL,
	[NameBrand] [varchar](50) NULL,
 CONSTRAINT [PK_Type Product] PRIMARY KEY CLUSTERED 
(
	[No.] ASC,
	[CodeType] ASC,
	[CodeBrand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WishList]    Script Date: 10/28/2018 8:21:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WishList](
	[IdCus] [varchar](10) NULL,
	[ProductCode] [int] NULL,
	[ProductName] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Price] [int] NULL,
	[Image] [varchar](11) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[AdminDetails]  WITH CHECK ADD  CONSTRAINT [FK_Admin Details_Admin] FOREIGN KEY([IdAdmin])
REFERENCES [dbo].[Admin] ([IdAdmin])
GO
ALTER TABLE [dbo].[AdminDetails] CHECK CONSTRAINT [FK_Admin Details_Admin]
GO
ALTER TABLE [dbo].[DetailCustomer]  WITH CHECK ADD  CONSTRAINT [FK_Detail Customer_Customer] FOREIGN KEY([Id])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[DetailCustomer] CHECK CONSTRAINT [FK_Detail Customer_Customer]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([OrderId])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Order]
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD  CONSTRAINT [FK_Invoice Details_Invoice] FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[Invoice] ([InvoiceId])
GO
ALTER TABLE [dbo].[InvoiceDetails] CHECK CONSTRAINT [FK_Invoice Details_Invoice]
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD  CONSTRAINT [FK_Invoice Details_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([OrderId])
GO
ALTER TABLE [dbo].[InvoiceDetails] CHECK CONSTRAINT [FK_Invoice Details_Order]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_Order Details_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_Order Details_Order]
GO
ALTER TABLE [dbo].[PriceProduct]  WITH CHECK ADD  CONSTRAINT [FK_Price Product_Product] FOREIGN KEY([ProductCode])
REFERENCES [dbo].[Product] ([ProductCode])
GO
ALTER TABLE [dbo].[PriceProduct] CHECK CONSTRAINT [FK_Price Product_Product]
GO
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD  CONSTRAINT [FK_Product Details_Product] FOREIGN KEY([ProductCode])
REFERENCES [dbo].[Product] ([ProductCode])
GO
ALTER TABLE [dbo].[ProductDetails] CHECK CONSTRAINT [FK_Product Details_Product]
GO
ALTER TABLE [dbo].[StaffDetails]  WITH CHECK ADD  CONSTRAINT [FK_Staff Details_Staff] FOREIGN KEY([IdStaff])
REFERENCES [dbo].[Staff] ([IdStaff])
GO
ALTER TABLE [dbo].[StaffDetails] CHECK CONSTRAINT [FK_Staff Details_Staff]
GO
ALTER TABLE [dbo].[WishList]  WITH CHECK ADD  CONSTRAINT [FK_Wish List_Customer] FOREIGN KEY([IdCus])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[WishList] CHECK CONSTRAINT [FK_Wish List_Customer]
GO
ALTER TABLE [dbo].[WishList]  WITH CHECK ADD  CONSTRAINT [FK_Wish List_Product] FOREIGN KEY([ProductCode])
REFERENCES [dbo].[Product] ([ProductCode])
GO
ALTER TABLE [dbo].[WishList] CHECK CONSTRAINT [FK_Wish List_Product]
GO
USE [master]
GO
ALTER DATABASE [Project2] SET  READ_WRITE 
GO
