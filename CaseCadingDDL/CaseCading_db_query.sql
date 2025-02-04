USE [master]
GO
/****** Object:  Database [CASECADING_DB]    Script Date: 7/7/2024 10:51:17 PM ******/
CREATE DATABASE [CASECADING_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CASECADING_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CASECADING_DB.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CASECADING_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CASECADING_DB_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CASECADING_DB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CASECADING_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CASECADING_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CASECADING_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CASECADING_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CASECADING_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CASECADING_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CASECADING_DB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CASECADING_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CASECADING_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CASECADING_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CASECADING_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CASECADING_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CASECADING_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CASECADING_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CASECADING_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CASECADING_DB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CASECADING_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CASECADING_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CASECADING_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CASECADING_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CASECADING_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CASECADING_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CASECADING_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CASECADING_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CASECADING_DB] SET  MULTI_USER 
GO
ALTER DATABASE [CASECADING_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CASECADING_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CASECADING_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CASECADING_DB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CASECADING_DB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [CASECADING_DB]
GO
/****** Object:  Table [dbo].[city_master]    Script Date: 7/7/2024 10:51:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[city_master](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[state_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[country_master]    Script Date: 7/7/2024 10:51:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[country_master](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[state_master]    Script Date: 7/7/2024 10:51:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[state_master](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[country_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[city_master] ON 

GO
INSERT [dbo].[city_master] ([id], [name], [state_id]) VALUES (1, N'South EX', 1)
GO
INSERT [dbo].[city_master] ([id], [name], [state_id]) VALUES (2, N'Old Delhi', 1)
GO
INSERT [dbo].[city_master] ([id], [name], [state_id]) VALUES (3, N'Lucknow', 3)
GO
INSERT [dbo].[city_master] ([id], [name], [state_id]) VALUES (4, N'Meeruth', 3)
GO
INSERT [dbo].[city_master] ([id], [name], [state_id]) VALUES (5, N'Agra', 3)
GO
INSERT [dbo].[city_master] ([id], [name], [state_id]) VALUES (6, N'South USA 2', 4)
GO
SET IDENTITY_INSERT [dbo].[city_master] OFF
GO
SET IDENTITY_INSERT [dbo].[country_master] ON 

GO
INSERT [dbo].[country_master] ([id], [name]) VALUES (1, N'India')
GO
INSERT [dbo].[country_master] ([id], [name]) VALUES (2, N'USA')
GO
INSERT [dbo].[country_master] ([id], [name]) VALUES (3, N'South Africa')
GO
INSERT [dbo].[country_master] ([id], [name]) VALUES (4, N'Japan')
GO
INSERT [dbo].[country_master] ([id], [name]) VALUES (5, N'Nepal')
GO
SET IDENTITY_INSERT [dbo].[country_master] OFF
GO
SET IDENTITY_INSERT [dbo].[state_master] ON 

GO
INSERT [dbo].[state_master] ([id], [name], [country_id]) VALUES (1, N'Delhi', 1)
GO
INSERT [dbo].[state_master] ([id], [name], [country_id]) VALUES (2, N'Mumbai', 1)
GO
INSERT [dbo].[state_master] ([id], [name], [country_id]) VALUES (3, N'Uttar Pradesh', 1)
GO
INSERT [dbo].[state_master] ([id], [name], [country_id]) VALUES (4, N'South USA', 2)
GO
INSERT [dbo].[state_master] ([id], [name], [country_id]) VALUES (5, N'North USA', 2)
GO
SET IDENTITY_INSERT [dbo].[state_master] OFF
GO
/****** Object:  StoredProcedure [dbo].[usp_get_cities]    Script Date: 7/7/2024 10:51:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_get_cities]
@id int=null
as
begin

SELECT ID,NAME FROM	city_master(nolock) where state_id=isnull(@id,state_id)
end

GO
/****** Object:  StoredProcedure [dbo].[usp_get_countries]    Script Date: 7/7/2024 10:51:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_get_countries]
@id int=null
as
begin

SELECT ID,NAME FROM	country_master(nolock) where id=isnull(@id,id)
end


GO
/****** Object:  StoredProcedure [dbo].[usp_get_states]    Script Date: 7/7/2024 10:51:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_get_states]
@id int=null
as
begin

SELECT ID,NAME FROM	state_master(nolock) where country_id=isnull(@id,country_id)
end


GO
USE [master]
GO
ALTER DATABASE [CASECADING_DB] SET  READ_WRITE 
GO
