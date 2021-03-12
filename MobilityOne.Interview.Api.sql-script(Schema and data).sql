USE [master]
GO
/****** Object:  Database [_MobilityOneInterviewApiDb]    Script Date: 3/12/2021 6:25:48 PM ******/
CREATE DATABASE [_MobilityOneInterviewApiDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'_MobilityOneInterviewApiDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\_MobilityOneInterviewApiDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'_MobilityOneInterviewApiDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\_MobilityOneInterviewApiDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [_MobilityOneInterviewApiDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET RECOVERY FULL 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET  MULTI_USER 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'_MobilityOneInterviewApiDb', N'ON'
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET QUERY_STORE = OFF
GO
USE [_MobilityOneInterviewApiDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/12/2021 6:25:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/12/2021 6:25:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](32) NULL,
	[PhoneNumber] [nvarchar](16) NULL,
	[EmailAddress] [nvarchar](38) NULL,
	[Password] [nvarchar](42) NULL,
	[LastLogin] [datetimeoffset](7) NOT NULL,
	[CreateDate] [datetimeoffset](7) NOT NULL,
	[Suspended] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210312123329_AddUser', N'5.0.4')
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [Name], [PhoneNumber], [EmailAddress], [Password], [LastLogin], [CreateDate], [Suspended]) VALUES (2, N'Hamed', N'+989197558632', N'h4lmed@gmail.com', N'123', CAST(N'2020-01-01T00:00:00.0000000+03:30' AS DateTimeOffset), CAST(N'2020-01-01T00:00:00.0000000+03:30' AS DateTimeOffset), 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [PhoneNumber], [EmailAddress], [Password], [LastLogin], [CreateDate], [Suspended]) VALUES (5, N'Shahrzad', N'+989191677925', N'Shahrzad@gmail.com', N'123', CAST(N'2020-01-01T00:00:00.0000000+03:30' AS DateTimeOffset), CAST(N'2020-01-01T00:00:00.0000000+03:30' AS DateTimeOffset), 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [PhoneNumber], [EmailAddress], [Password], [LastLogin], [CreateDate], [Suspended]) VALUES (7, N'Nader', N'+989127111456', N'Nader@gmail.com', N'123', CAST(N'0001-01-01T00:00:00.0000000+00:00' AS DateTimeOffset), CAST(N'0001-01-01T00:00:00.0000000+00:00' AS DateTimeOffset), 0)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
USE [master]
GO
ALTER DATABASE [_MobilityOneInterviewApiDb] SET  READ_WRITE 
GO
