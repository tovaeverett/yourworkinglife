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
	[AccountNumber] [nchar](20) NOT NULL,
	[AccountType] [nchar](15) NULL,
	[PersonIdentity] [nchar](10) NULL,
	[PersonName] [nvarchar](max) NULL,
	[Amount] [decimal](18, 0) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

Drop table dbo.tblInsurance
GO

CREATE TABLE [dbo].[tblInsurance](
	[InsuranceId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[InsuranceNumber] [nchar](20) NOT NULL,
	[PersonIdentity] [nchar](10) NULL,
	[PersonName] [nvarchar](max) NULL,
	[InsuranceType] [nvarchar](20) NULL,
	[SickMonthsCount] [int] NULL,
	[SickSalaryAmount] [decimal](15, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


Drop table dbo.tblPerson
GO

CREATE TABLE [dbo].[tblPerson](
	[Identity] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[PersonIdentity] [nchar](20) NOT NULL,
	[PersonName] [nvarchar](max) NULL,
	[Luck] [tinyint] NULL,
	[Magellit] [tinyint] NULL,
	[Age] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

Drop table dbo.tblUnion
GO

CREATE TABLE [dbo].[tblUnion](
	[UnionId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[MemberNumber] [nchar](20) NOT NULL,
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
	[EmployeeNumber] [nchar](20) NOT NULL,
	[PersonName] [nvarchar](max) NULL,
	[PersonNumber] [nchar](10) NULL,
	[Salary] [decimal](18, 0) NULL,
	[SalaryFixedPercentage] [decimal](18, 0) NULL,
	[SalaryVariablePercentage] [decimal](18, 0) NULL,
	[WorkMonthCount] [decimal](18, 0) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

Drop table dbo.tblProfession
GO

CREATE TABLE [dbo].[tblProfession](
	[ProfessionId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[ProfessionTypeIdentity] [nchar](20) NOT NULL,
	[ProfessionType] [nvarchar](50) NULL,
	[FirstSalary] [decimal](18, 0) NULL,
	[PensionAge] [int] NULL,
	[TypeOfGoal] [nvarchar](50) NULL
) ON [PRIMARY] 
GO


