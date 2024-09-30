USE [vroom]
GO

/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 30/09/2024 10:39:19 am ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



USE [vroom]
GO

INSERT INTO [dbo].[__EFMigrationsHistory]
           ([MigrationId]
           ,[ProductVersion])
     VALUES
           (<MigrationId, nvarchar(150),>
           ,<ProductVersion, nvarchar(32),>)
GO



USE [vroom]
GO

/****** Object:  Table [dbo].[Makes]    Script Date: 30/09/2024 10:40:27 am ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Makes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Makes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



USE [vroom]
GO

INSERT INTO [dbo].[Makes]
           ([Name])
     VALUES
           (<Name, nvarchar(255),>)
GO



USE [vroom]
GO

/****** Object:  Table [dbo].[Models]    Script Date: 30/09/2024 10:41:43 am ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Models](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[MakeFk] [int] NOT NULL,
 CONSTRAINT [PK_Models] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Models]  WITH CHECK ADD  CONSTRAINT [FK_Models_Makes_MakeFk] FOREIGN KEY([MakeFk])
REFERENCES [dbo].[Makes] ([Id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Models] CHECK CONSTRAINT [FK_Models_Makes_MakeFk]
GO



USE [vroom]
GO

INSERT INTO [dbo].[Models]
           ([Name]
           ,[MakeFk])
     VALUES
           (<Name, nvarchar(255),>
           ,<MakeFk, int,>)
GO


