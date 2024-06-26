USE [master]
GO
/****** Object:  Database [DoctorApp]    Script Date: 2017/01/31 13:34:02 ******/
CREATE DATABASE [DoctorApp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DoctorApp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DoctorApp.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DoctorApp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DoctorApp_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DoctorApp] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DoctorApp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DoctorApp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DoctorApp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DoctorApp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DoctorApp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DoctorApp] SET ARITHABORT OFF 
GO
ALTER DATABASE [DoctorApp] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DoctorApp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DoctorApp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DoctorApp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DoctorApp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DoctorApp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DoctorApp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DoctorApp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DoctorApp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DoctorApp] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DoctorApp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DoctorApp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DoctorApp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DoctorApp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DoctorApp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DoctorApp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DoctorApp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DoctorApp] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DoctorApp] SET  MULTI_USER 
GO
ALTER DATABASE [DoctorApp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DoctorApp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DoctorApp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DoctorApp] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DoctorApp] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DoctorApp]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2017/01/31 13:34:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [varchar](50) NULL,
	[Pass] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[App]    Script Date: 2017/01/31 13:34:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[App](
	[AId] [varchar](50) NULL,
	[UId] [varchar](50) NULL,
	[DName] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
	[Time] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cust]    Script Date: 2017/01/31 13:34:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cust](
	[UId] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Sex] [varchar](50) NULL,
	[Age] [varchar](50) NULL,
	[Pass] [varchar](50) NULL,
	[Bg] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 2017/01/31 13:34:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Doctor](
	[DId] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Cate] [varchar](50) NULL,
	[Pass] [varchar](50) NULL,
	[Email] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 2017/01/31 13:34:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feedback](
	[UId] [varchar](50) NULL,
	[Feed] [varchar](50) NULL,
	[Date] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[History]    Script Date: 2017/01/31 13:34:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[History](
	[UId] [varchar](50) NULL,
	[Dise] [varchar](50) NULL,
	[Treatment] [varchar](50) NULL,
	[DNote] [varchar](50) NULL,
	[DateTime] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Organ]    Script Date: 2017/01/31 13:34:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Organ](
	[Id] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Organ] [varchar](50) NULL,
	[Bg] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Admin] ([Id], [Pass]) VALUES (N'Admin', N'Admin')
INSERT [dbo].[App] ([AId], [UId], [DName], [Date], [Time]) VALUES (N'1001', N'1001', N'Amit', N'28-May-15', N'9:30-10:00')
INSERT [dbo].[App] ([AId], [UId], [DName], [Date], [Time]) VALUES (N'1002', N'1001', N'ABC', N'29-May-15', N'10:30-11:00')
INSERT [dbo].[App] ([AId], [UId], [DName], [Date], [Time]) VALUES (N'1003', N'1001', N'Aakash', N'30-May-15', N'9:30-10:00')
INSERT [dbo].[Cust] ([UId], [Name], [Address], [Mobile], [Email], [Sex], [Age], [Pass], [Bg]) VALUES (N'1001', N'Amish', N'Andheri', N'9076613214', N'vora@gmail.com', N'Male', N'21', N'User', N'AB +')
INSERT [dbo].[Doctor] ([DId], [Name], [Address], [Mobile], [Cate], [Pass], [Email]) VALUES (N'101', N'Amit', N'Andheri', N'9076613214', N'Heart', N'Doc', N'voramish7018@gmail.com')
INSERT [dbo].[Doctor] ([DId], [Name], [Address], [Mobile], [Cate], [Pass], [Email]) VALUES (N'102', N'Mit', N'Malad', N'9076613216', N'Heart', N'Doc', N'voramish7018@gmail.com')
INSERT [dbo].[Doctor] ([DId], [Name], [Address], [Mobile], [Cate], [Pass], [Email]) VALUES (N'103', N'ABC', N'Malad', N'9076613214', N'Bone', N'Doc', N'voramish7018@gmail.com')
INSERT [dbo].[Doctor] ([DId], [Name], [Address], [Mobile], [Cate], [Pass], [Email]) VALUES (N'104', N'PQR', N'Malad', N'9076613214', N'Bone', N'Doc', N'voramish7018@gmail.com')
INSERT [dbo].[Doctor] ([DId], [Name], [Address], [Mobile], [Cate], [Pass], [Email]) VALUES (N'105', N'Aakash', N'Malad', N'9076613214', N'General Physician', N'Doc', N'voramish7018@gmail.com')
INSERT [dbo].[Doctor] ([DId], [Name], [Address], [Mobile], [Cate], [Pass], [Email]) VALUES (N'106', N'Punit', N'malad', N'9076613214', N'General Physician', N'Doc', N'voramish7018@gmail.com')
INSERT [dbo].[Feedback] ([UId], [Feed], [Date]) VALUES (N'1001', N'Good', N'22-01-15')
INSERT [dbo].[Feedback] ([UId], [Feed], [Date]) VALUES (N'1001', N'good', N'27-May-15')
INSERT [dbo].[History] ([UId], [Dise], [Treatment], [DNote], [DateTime]) VALUES (N'1001', N'Bone', N'Pills', N'Normal', N'21-04-15')
INSERT [dbo].[History] ([UId], [Dise], [Treatment], [DNote], [DateTime]) VALUES (N'1001', N'ABC', N'Opration', N'Minor Opration', N'27-06-15')
INSERT [dbo].[History] ([UId], [Dise], [Treatment], [DNote], [DateTime]) VALUES (N'1001', N'clsdfs', N'Pills', N'dslfjs', N'17-04-15')
INSERT [dbo].[Organ] ([Id], [Name], [Mobile], [Organ], [Bg]) VALUES (N'1001', N'Amish', N'9076613214', N'Eye', N'AB +')
INSERT [dbo].[Organ] ([Id], [Name], [Mobile], [Organ], [Bg]) VALUES (N'1001', N'Amish', N'9076613214', N'Kidney', N'AB +')
INSERT [dbo].[Organ] ([Id], [Name], [Mobile], [Organ], [Bg]) VALUES (N'1001', N'Amish', N'9076613214', N'Eye', N'AB +')
INSERT [dbo].[Organ] ([Id], [Name], [Mobile], [Organ], [Bg]) VALUES (N'1001', N'Amish', N'9076613214', N'Eye', N'AB +')
INSERT [dbo].[Organ] ([Id], [Name], [Mobile], [Organ], [Bg]) VALUES (N'1001', N'Amish', N'9076613214', N'Kidney', N'AB +')
INSERT [dbo].[Organ] ([Id], [Name], [Mobile], [Organ], [Bg]) VALUES (N'1001', N'Amish', N'9076613214', N'Kidney', N'AB +')
USE [master]
GO
ALTER DATABASE [DoctorApp] SET  READ_WRITE 
GO
