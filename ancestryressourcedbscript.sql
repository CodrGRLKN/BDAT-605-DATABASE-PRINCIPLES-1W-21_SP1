USE [master]
GO
/****** Object:  Database [Ancestry Resource]    Script Date: 2/15/2021 1:35:45 PM ******/
CREATE DATABASE [Ancestry Resource]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Ancestry Resource', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Ancestry Resource.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Ancestry Resource_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Ancestry Resource_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Ancestry Resource] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ancestry Resource].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ancestry Resource] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Ancestry Resource] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Ancestry Resource] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Ancestry Resource] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Ancestry Resource] SET ARITHABORT OFF 
GO
ALTER DATABASE [Ancestry Resource] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Ancestry Resource] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Ancestry Resource] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Ancestry Resource] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Ancestry Resource] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Ancestry Resource] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Ancestry Resource] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Ancestry Resource] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Ancestry Resource] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Ancestry Resource] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Ancestry Resource] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Ancestry Resource] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Ancestry Resource] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Ancestry Resource] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Ancestry Resource] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Ancestry Resource] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Ancestry Resource] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Ancestry Resource] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Ancestry Resource] SET  MULTI_USER 
GO
ALTER DATABASE [Ancestry Resource] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Ancestry Resource] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Ancestry Resource] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Ancestry Resource] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Ancestry Resource] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Ancestry Resource] SET QUERY_STORE = OFF
GO
USE [Ancestry Resource]
GO
/****** Object:  Table [dbo].[Cemetries]    Script Date: 2/15/2021 1:35:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cemetries](
	[CemeteryID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
 CONSTRAINT [PK_Cemetries] PRIMARY KEY CLUSTERED 
(
	[CemeteryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Census]    Script Date: 2/15/2021 1:35:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Census](
	[CensusID] [varchar](50) NOT NULL,
	[Year] [datetime] NULL,
 CONSTRAINT [PK_Census] PRIMARY KEY CLUSTERED 
(
	[CensusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Churches]    Script Date: 2/15/2021 1:35:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Churches](
	[ChurchID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[contact] [varchar](50) NULL,
 CONSTRAINT [PK_Churches] PRIMARY KEY CLUSTERED 
(
	[ChurchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[County]    Script Date: 2/15/2021 1:35:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[County](
	[CountyID] [varchar](50) NOT NULL,
	[Name] [nchar](10) NULL,
 CONSTRAINT [PK_County] PRIMARY KEY CLUSTERED 
(
	[CountyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libraries]    Script Date: 2/15/2021 1:35:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libraries](
	[LibraryID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
 CONSTRAINT [PK_Libraries] PRIMARY KEY CLUSTERED 
(
	[LibraryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organizations]    Script Date: 2/15/2021 1:35:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizations](
	[Organization ID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[Website] [varchar](50) NULL,
 CONSTRAINT [PK_Organizations] PRIMARY KEY CLUSTERED 
(
	[Organization ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Resources]    Script Date: 2/15/2021 1:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resources](
	[Resource ID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Resources] PRIMARY KEY CLUSTERED 
(
	[Resource ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schools]    Script Date: 2/15/2021 1:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schools](
	[SchoolID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
 CONSTRAINT [PK_Schools] PRIMARY KEY CLUSTERED 
(
	[SchoolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 2/15/2021 1:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateID] [varchar](50) NOT NULL,
	[Name] [nchar](10) NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Resources]    Script Date: 2/15/2021 1:35:46 PM ******/
CREATE NONCLUSTERED INDEX [IX_Resources] ON [dbo].[Resources]
(
	[Resource ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[County]  WITH CHECK ADD  CONSTRAINT [FK_County_Resources] FOREIGN KEY([CountyID])
REFERENCES [dbo].[Resources] ([Resource ID])
GO
ALTER TABLE [dbo].[County] CHECK CONSTRAINT [FK_County_Resources]
GO
ALTER TABLE [dbo].[Resources]  WITH CHECK ADD  CONSTRAINT [FK_Resources_Cemetries] FOREIGN KEY([Resource ID])
REFERENCES [dbo].[Cemetries] ([CemeteryID])
GO
ALTER TABLE [dbo].[Resources] CHECK CONSTRAINT [FK_Resources_Cemetries]
GO
ALTER TABLE [dbo].[Resources]  WITH CHECK ADD  CONSTRAINT [FK_Resources_Census] FOREIGN KEY([Resource ID])
REFERENCES [dbo].[Census] ([CensusID])
GO
ALTER TABLE [dbo].[Resources] CHECK CONSTRAINT [FK_Resources_Census]
GO
ALTER TABLE [dbo].[Resources]  WITH CHECK ADD  CONSTRAINT [FK_Resources_Churches] FOREIGN KEY([Resource ID])
REFERENCES [dbo].[Churches] ([ChurchID])
GO
ALTER TABLE [dbo].[Resources] CHECK CONSTRAINT [FK_Resources_Churches]
GO
ALTER TABLE [dbo].[Resources]  WITH CHECK ADD  CONSTRAINT [FK_Resources_Libraries] FOREIGN KEY([Resource ID])
REFERENCES [dbo].[Libraries] ([LibraryID])
GO
ALTER TABLE [dbo].[Resources] CHECK CONSTRAINT [FK_Resources_Libraries]
GO
ALTER TABLE [dbo].[Resources]  WITH CHECK ADD  CONSTRAINT [FK_Resources_Organizations] FOREIGN KEY([Resource ID])
REFERENCES [dbo].[Organizations] ([Organization ID])
GO
ALTER TABLE [dbo].[Resources] CHECK CONSTRAINT [FK_Resources_Organizations]
GO
ALTER TABLE [dbo].[Resources]  WITH CHECK ADD  CONSTRAINT [FK_Resources_Organizations1] FOREIGN KEY([Resource ID])
REFERENCES [dbo].[Organizations] ([Organization ID])
GO
ALTER TABLE [dbo].[Resources] CHECK CONSTRAINT [FK_Resources_Organizations1]
GO
ALTER TABLE [dbo].[Resources]  WITH CHECK ADD  CONSTRAINT [FK_Resources_Schools] FOREIGN KEY([Resource ID])
REFERENCES [dbo].[Schools] ([SchoolID])
GO
ALTER TABLE [dbo].[Resources] CHECK CONSTRAINT [FK_Resources_Schools]
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_State_County] FOREIGN KEY([StateID])
REFERENCES [dbo].[County] ([CountyID])
GO
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_State_County]
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_State_Resources] FOREIGN KEY([StateID])
REFERENCES [dbo].[Resources] ([Resource ID])
GO
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_State_Resources]
GO
USE [master]
GO
ALTER DATABASE [Ancestry Resource] SET  READ_WRITE 
GO
