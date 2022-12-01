USE [life]
GO

/****** Object:  Table [dbo].[tblAccount]    Script Date: 2022-12-01 09:56:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblAccount](
	[AccountId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[AccountNumber] [numeric](18, 0) NULL,
	[PersonIdentity] [nchar](10) NULL,
	[PersonName] [nvarchar](max) NULL,
	[Amount] [decimal](18, 0) NULL,
	[AccountType] [nchar](15) NULL,
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


