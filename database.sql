USE [master]
GO
/****** Object:  Database [dbStudents]    Script Date: 27-Oct-19 10:34:21 AM ******/
CREATE DATABASE [dbStudents]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbStudents', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\dbStudents.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dbStudents_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\dbStudents_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dbStudents] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbStudents].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbStudents] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbStudents] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbStudents] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbStudents] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbStudents] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbStudents] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbStudents] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [dbStudents] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbStudents] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbStudents] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbStudents] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbStudents] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbStudents] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbStudents] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbStudents] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbStudents] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbStudents] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbStudents] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbStudents] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbStudents] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbStudents] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbStudents] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbStudents] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbStudents] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbStudents] SET  MULTI_USER 
GO
ALTER DATABASE [dbStudents] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbStudents] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbStudents] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbStudents] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [dbStudents]
GO
/****** Object:  Table [dbo].[StudentTb]    Script Date: 27-Oct-19 10:34:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentTb](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nchar](10) NULL,
	[LastName] [nchar](10) NULL,
	[RollNumber] [nchar](10) NULL,
	[Address] [nchar](10) NULL,
	[Mobile] [nchar](10) NULL,
 CONSTRAINT [PK_StudentTb] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[StudentTb] ON 

INSERT [dbo].[StudentTb] ([StudentID], [FirstName], [LastName], [RollNumber], [Address], [Mobile]) VALUES (1, N'Teki      ', N'Merika    ', N'FA17-MS-46', N'Japan     ', N'0708140971')
INSERT [dbo].[StudentTb] ([StudentID], [FirstName], [LastName], [RollNumber], [Address], [Mobile]) VALUES (2, N'Minas     ', N'The       ', N'TD25-MS-41', N'USA       ', N'0921837123')
INSERT [dbo].[StudentTb] ([StudentID], [FirstName], [LastName], [RollNumber], [Address], [Mobile]) VALUES (3, N'Shy SaDec ', N'The       ', N'BT32-MS-33', N'China     ', N'0213425234')
INSERT [dbo].[StudentTb] ([StudentID], [FirstName], [LastName], [RollNumber], [Address], [Mobile]) VALUES (4, N'Nina      ', N'See       ', N'TT22-MS-12', N'Australia ', N'0923145234')
INSERT [dbo].[StudentTb] ([StudentID], [FirstName], [LastName], [RollNumber], [Address], [Mobile]) VALUES (5, N'Teki      ', N'Maria     ', N'TA17-MS-47', N'Japan     ', N'0708140234')
SET IDENTITY_INSERT [dbo].[StudentTb] OFF
USE [master]
GO
ALTER DATABASE [dbStudents] SET  READ_WRITE 
GO
