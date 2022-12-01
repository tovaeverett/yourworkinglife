USE [life]
GO

/****** Object:  Table [dbo].[tblAccount]    Script Date: 2022-12-01 09:56:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Drop table dbo.tblAccount
GO

CREATE TABLE [dbo].[tblAccount](
	[AccountId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[AccountNumber] [numeric](18, 0) NULL,
	[AccountType] [nchar](15) NULL,
	[PersonIdentity] [nchar](10) NULL,
	[PersonName] [nvarchar](max) NULL,
	[Amount] [decimal](18, 0) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

Drop table dbo.tblHealthCareInsurance
GO

CREATE TABLE [dbo].[tblHealthCareInsurance](
	[HealthCareId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[InsuranceNumber] [numeric](18, 0) NULL,
	[PersonIdentity] [nchar](10) NULL,
	[PersonName] [nvarchar](max) NULL,
	[SickMonthsCount] [int] NULL,
	[SickSalaryAmount] [decimal](15, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


Drop table dbo.tblPerson
GO

CREATE TABLE [dbo].[tblPerson](
	[Identity] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[PersonIdentity] [nchar](10) NULL,
	[PersonNumber] [varchar](20) NULL,
	[PersonName] [nvarchar](max) NULL,
	[Image] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

Drop table dbo.tblPersonStatus
GO

CREATE TABLE [dbo].[tblPersonStatus](
	[PersonStatusId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[PersonIdentity] [nchar](10) NOT NULL,
	[Luck] [tinyint] NULL,
	[Magellit] [tinyint] NULL,
	[Age] [int] NULL,
) ON [PRIMARY]
GO

Drop table dbo.tblUnion
GO

CREATE TABLE [dbo].[tblUnion](
	[UnionId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[MemberNumber] [nchar](10) NULL,
	[MemberName] [varchar](max) NULL,
	[PersonIdentity] [nchar](10) NULL,
	[Akassa] [tinyint] NULL,
	[IncomeInsurance] [tinyint] NULL,
	[UnemployedSalaryAmount ] [decimal](15, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

Drop table dbo.tblWork
GO

CREATE TABLE [dbo].[tblWork](
	[EmployeeId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[EmployeeNumber] [numeric](18, 0) NULL,
	[PersonName] [nvarchar](max) NULL,
	[PersonNumber] [nchar](10) NULL,
	[Salary] [decimal](18, 0) NULL,
	[SalaryFixedPercentage] [decimal](18, 0) NULL,
	[SalaryVariablePercentage] [decimal](18, 0) NULL,
	[WorkMonthCount] [decimal](18, 0) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO



