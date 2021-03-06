USE [master]
GO
/****** Object:  Database [Fall2017]    Script Date: 13/10/2017 1:03:09 CH ******/
CREATE DATABASE [Fall2017]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Fall2017', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Fall2017.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Fall2017_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Fall2017_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Fall2017] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Fall2017].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Fall2017] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Fall2017] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Fall2017] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Fall2017] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Fall2017] SET ARITHABORT OFF 
GO
ALTER DATABASE [Fall2017] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Fall2017] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Fall2017] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Fall2017] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Fall2017] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Fall2017] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Fall2017] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Fall2017] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Fall2017] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Fall2017] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Fall2017] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Fall2017] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Fall2017] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Fall2017] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Fall2017] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Fall2017] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Fall2017] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Fall2017] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Fall2017] SET  MULTI_USER 
GO
ALTER DATABASE [Fall2017] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Fall2017] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Fall2017] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Fall2017] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Fall2017] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Fall2017]
GO
/****** Object:  Table [dbo].[Carer]    Script Date: 13/10/2017 1:03:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Carer](
	[CarerID] [char](5) NOT NULL,
	[CarerName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[PetID] [nvarchar](50) NULL,
	[PetName] [nvarchar](50) NULL,
	[Phone] [int] NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_Carer] PRIMARY KEY CLUSTERED 
(
	[CarerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 13/10/2017 1:03:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [char](5) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[PetID] [nvarchar](50) NULL,
	[PetName] [nvarchar](50) NULL,
	[Phone] [int] NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PetDetail]    Script Date: 13/10/2017 1:03:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PetDetail](
	[PetID] [char](5) NOT NULL,
	[PetName] [nvarchar](50) NULL,
	[Species] [nvarchar](50) NULL,
	[SpeciesDetail] [nvarchar](50) NULL,
	[Gender] [bit] NULL,
	[DayOfBirth] [date] NULL,
	[CustomerID] [char](5) NULL,
	[CustomerName] [nvarchar](50) NULL,
	[CarerID] [char](5) NULL,
	[CarerName] [nvarchar](50) NULL,
	[InDate] [date] NULL,
	[OutDate] [date] NULL,
	[MedicalRecord] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_PetDetail] PRIMARY KEY CLUSTERED 
(
	[PetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Carer] ([CarerID], [CarerName], [Password], [PetID], [PetName], [Phone], [Email], [Address]) VALUES (N'C4001', N'Trung Nhàn', N'123456', N'P3001', N'Milu', 112233445, N'nhan@gmail.com', N'Q4, TP. HCM')
INSERT [dbo].[Carer] ([CarerID], [CarerName], [Password], [PetID], [PetName], [Phone], [Email], [Address]) VALUES (N'C4002', N'Trường Hải', N'123456', N'P3002', N'ChoTim', 223344556, N'hai@gmail.com', N'Go Vap, TPHCM')
INSERT [dbo].[Carer] ([CarerID], [CarerName], [Password], [PetID], [PetName], [Phone], [Email], [Address]) VALUES (N'C4003', N'Hải Dương', N'123456', N'P3003', N'Panda', 334455667, N'duong@gmail.com', N'Hai Duong')
INSERT [dbo].[Carer] ([CarerID], [CarerName], [Password], [PetID], [PetName], [Phone], [Email], [Address]) VALUES (N'C4004', N'Trung Đông', N'123456', N'P3004', N'Garen', 445566778, N'dong@gmail.com', N'Trung Đông')
INSERT [dbo].[Carer] ([CarerID], [CarerName], [Password], [PetID], [PetName], [Phone], [Email], [Address]) VALUES (N'C4005', N'Đại Sơn', N'123456', N'P3005', N'Ashe', 556677889, N'son@gmail.com', N'Thanh Hóa')
INSERT [dbo].[Carer] ([CarerID], [CarerName], [Password], [PetID], [PetName], [Phone], [Email], [Address]) VALUES (N'C4006', N'Daxua', N'123456', N'P3006', N'Yi', 667788991, N'daxua@gmail.com', N'Thủ Đức')
INSERT [dbo].[Carer] ([CarerID], [CarerName], [Password], [PetID], [PetName], [Phone], [Email], [Address]) VALUES (N'C4007', N'Soobin Hoàng Sơn', N'123456', N'P3007', N'Yasuo', 778899001, N'weed@gmail.com', N'WeedWorld')
INSERT [dbo].[Carer] ([CarerID], [CarerName], [Password], [PetID], [PetName], [Phone], [Email], [Address]) VALUES (N'C4008', N'Sếp', N'123456', N'P3008', N'Nasus', 889900112, N'sep@gmail.com', N'Japan')
INSERT [dbo].[Carer] ([CarerID], [CarerName], [Password], [PetID], [PetName], [Phone], [Email], [Address]) VALUES (N'C4009', N'Sơn Tùng', N'123456', N'P3009', N'LeeSin', 990011223, N'sontung@gmail.com', N'Korea')
INSERT [dbo].[Carer] ([CarerID], [CarerName], [Password], [PetID], [PetName], [Phone], [Email], [Address]) VALUES (N'C4010', N'Xuân An', N'123456', N'P3010', N'Pubg', 901122334, N'nxan@gmail.com', N'TP. HCM')
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [PetID], [PetName], [Phone], [Email], [Address]) VALUES (N'CU001', N'Minh Quân', N'P3001', N'Ahri', 113355779, N'quan@gmail.com', N'Biên Hòa, Đồng Nai')
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [PetID], [PetName], [Phone], [Email], [Address]) VALUES (N'CU002', N'Ngô Minh', N'P3002', N'Tristana', 335577991, N'nhim@gmail.com', N'Đại Tây Dương')
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [PetID], [PetName], [Phone], [Email], [Address]) VALUES (N'CU003', N'Đặng Xanh', N'P3003', N'Le Blanc', 557799113, N'xanh@gmail.com', N'Global Offensive')
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [PetID], [PetName], [Phone], [Email], [Address]) VALUES (N'CU004', N'Kim Thành', N'P3004', N'Garen', 779911335, N'thanh@gmail.com', N'Đà Nẵng')
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [PetID], [PetName], [Phone], [Email], [Address]) VALUES (N'CU005', N'Minh Quang', N'P3005', N'Ashe', 991133557, N'bao@gmail.com', N'TP. HCM')
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [PetID], [PetName], [Phone], [Email], [Address]) VALUES (N'CU006', N'Hiếu Nghĩa', N'P3006', N'Yi', 224466880, N'nghia@gmail.com', N'TP. HCM')
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [PetID], [PetName], [Phone], [Email], [Address]) VALUES (N'CU007', N'Huy Hoàng', N'P3007', N'Yasuo', 446688002, N'hoang@gmail.com', N'TP. HCM')
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [PetID], [PetName], [Phone], [Email], [Address]) VALUES (N'CU008', N'Minh Dương', N'P3008', N'Nasus', 668800224, N'linh@gmail.com', N'Kiên Giang')
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [PetID], [PetName], [Phone], [Email], [Address]) VALUES (N'CU009', N'Chí Bảo', N'P3009', N'LeeSin', 880022446, N'tien@gmail.com', N'Vũng Tàu')
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [PetID], [PetName], [Phone], [Email], [Address]) VALUES (N'CU010', N'Trung Hiếu', N'P3010', N'Xin Zhao', 111333555, N'vinh@gmail.com', N'Phnom Penh')
INSERT [dbo].[PetDetail] ([PetID], [PetName], [Species], [SpeciesDetail], [Gender], [DayOfBirth], [CustomerID], [CustomerName], [CarerID], [CarerName], [InDate], [OutDate], [MedicalRecord], [Status]) VALUES (N'P3001', N'Ahri', N'Dog', N'Bergie', 1, CAST(N'2011-01-01' AS Date), N'CU001', N'Minh Quân', N'C4001', N'Trung Nhàn', CAST(N'2017-02-02' AS Date), NULL, N'Broken Leg', 1)
INSERT [dbo].[PetDetail] ([PetID], [PetName], [Species], [SpeciesDetail], [Gender], [DayOfBirth], [CustomerID], [CustomerName], [CarerID], [CarerName], [InDate], [OutDate], [MedicalRecord], [Status]) VALUES (N'P3002', N'Tristana', N'Cat', N'Felis bengalensis', 0, CAST(N'2012-02-02' AS Date), N'CU002', N'Ngô Minh', N'C4002', N'Trường Hải', CAST(N'2017-03-03' AS Date), NULL, N'Undigested', 1)
INSERT [dbo].[PetDetail] ([PetID], [PetName], [Species], [SpeciesDetail], [Gender], [DayOfBirth], [CustomerID], [CustomerName], [CarerID], [CarerName], [InDate], [OutDate], [MedicalRecord], [Status]) VALUES (N'P3003', N'Le Blanc', N'Hamster', N'Panda', 1, CAST(N'2013-03-03' AS Date), N'CU003', N'Đặng Xanh', N'C4003', N'Hải Dương', CAST(N'2017-04-04' AS Date), NULL, N'High fever', 1)
INSERT [dbo].[PetDetail] ([PetID], [PetName], [Species], [SpeciesDetail], [Gender], [DayOfBirth], [CustomerID], [CustomerName], [CarerID], [CarerName], [InDate], [OutDate], [MedicalRecord], [Status]) VALUES (N'P3004', N'Garen', N'Cat', N'Felis chaus', 0, CAST(N'2014-04-04' AS Date), N'CU004', N'Kim Thành', N'C4004', N'Trung Đông', CAST(N'2017-05-05' AS Date), NULL, N'Hepatitis', 1)
INSERT [dbo].[PetDetail] ([PetID], [PetName], [Species], [SpeciesDetail], [Gender], [DayOfBirth], [CustomerID], [CustomerName], [CarerID], [CarerName], [InDate], [OutDate], [MedicalRecord], [Status]) VALUES (N'P3005', N'Ashe', N'Dog', N'Chihuahua', 1, CAST(N'2015-05-05' AS Date), N'CU005', N'Minh Quang', N'C4005', N'Đại Sơn', CAST(N'2017-06-06' AS Date), NULL, N'Stomachache', 1)
INSERT [dbo].[PetDetail] ([PetID], [PetName], [Species], [SpeciesDetail], [Gender], [DayOfBirth], [CustomerID], [CustomerName], [CarerID], [CarerName], [InDate], [OutDate], [MedicalRecord], [Status]) VALUES (N'P3006', N'Yi', N'Hamster', N'Trà Sữa', 1, CAST(N'2001-11-11' AS Date), N'CU006', N'Hiếu Nghĩa', N'C4006', N'Daxua', CAST(N'2015-12-12' AS Date), CAST(N'2016-12-12' AS Date), N'Shedding H air', 0)
INSERT [dbo].[PetDetail] ([PetID], [PetName], [Species], [SpeciesDetail], [Gender], [DayOfBirth], [CustomerID], [CustomerName], [CarerID], [CarerName], [InDate], [OutDate], [MedicalRecord], [Status]) VALUES (N'P3007', N'Yasuo', N'Dog', N'Chihuahua', 0, CAST(N'2012-12-22' AS Date), N'CU007', N'Huy Hoàng', N'C4007', N'Weed', CAST(N'2016-01-01' AS Date), CAST(N'2017-01-01' AS Date), N'Eat but can not digest
', 0)
INSERT [dbo].[PetDetail] ([PetID], [PetName], [Species], [SpeciesDetail], [Gender], [DayOfBirth], [CustomerID], [CustomerName], [CarerID], [CarerName], [InDate], [OutDate], [MedicalRecord], [Status]) VALUES (N'P3008', N'Nasus', N'Cat', N'Felis domestica', 1, CAST(N'2013-02-02' AS Date), N'CU008', N'Minh Dương', N'C4008', N'Soobin Hoàng Sơn', CAST(N'2017-04-04' AS Date), CAST(N'2017-05-05' AS Date), N'Broken Leg', 0)
INSERT [dbo].[PetDetail] ([PetID], [PetName], [Species], [SpeciesDetail], [Gender], [DayOfBirth], [CustomerID], [CustomerName], [CarerID], [CarerName], [InDate], [OutDate], [MedicalRecord], [Status]) VALUES (N'P3009', N'LeeSin', N'Rabbit', N'New Zealand', 0, CAST(N'2014-06-05' AS Date), N'CU009', N'Chí Bảo', N'C4009', N'Sơn Tùng', CAST(N'2016-07-07' AS Date), CAST(N'2017-08-08' AS Date), N'Snivel', 0)
INSERT [dbo].[PetDetail] ([PetID], [PetName], [Species], [SpeciesDetail], [Gender], [DayOfBirth], [CustomerID], [CustomerName], [CarerID], [CarerName], [InDate], [OutDate], [MedicalRecord], [Status]) VALUES (N'P3010', N'Xin Zhao', N'Rabbit', N'California', 1, CAST(N'2015-05-05' AS Date), N'CU010', N'Trung Hiếu', N'C4010', N'Xuân An', CAST(N'2016-06-06' AS Date), CAST(N'2017-09-09' AS Date), N'Diarrhea
', 0)
ALTER TABLE [dbo].[PetDetail]  WITH CHECK ADD  CONSTRAINT [FK_CaringPet_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[PetDetail] CHECK CONSTRAINT [FK_CaringPet_Customer]
GO
ALTER TABLE [dbo].[PetDetail]  WITH CHECK ADD  CONSTRAINT [FK_PetDetail_Carer] FOREIGN KEY([CarerID])
REFERENCES [dbo].[Carer] ([CarerID])
GO
ALTER TABLE [dbo].[PetDetail] CHECK CONSTRAINT [FK_PetDetail_Carer]
GO
USE [master]
GO
ALTER DATABASE [Fall2017] SET  READ_WRITE 
GO
