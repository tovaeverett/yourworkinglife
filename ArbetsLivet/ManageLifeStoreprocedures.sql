-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters
-- command (Ctrl-Shift-M) to fill in the parameter
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
USE life
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

DROP PROCEDURE spManageAccount
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE spManageAccount
    @AccountNumber nchar(20),
    @AccountType nchar(10),
    @ClientNumber nchar(10),
    @ClientName nvarchar(max),
    @Amount decimal(18,0) = 0,
    @StatementType nvarchar(20) = 'insert'

AS
BEGIN
    DECLARE @AccountId numeric = NULL

    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    SELECT @AccountId = AccountId FROM tblAccount WHERE AccountNumber = @AccountNumber

    IF @StatementType = 'insert' and @AccountId is null
        BEGIN
            -- Insert statements for procedure here
            INSERT INTO dbo.tblAccount (
                                        AccountNumber,
                                        AccountType,
                                        ClientNumber,
                                        ClientName,
                                        Amount)
            SELECT
                @AccountNumber,
                @AccountType,
                @ClientNumber,
                @ClientName,
                @Amount
        END
    ELSE IF @StatementType = 'update' and @AccountId is not null
        BEGIN
            UPDATE	tblAccount
            SET		AccountType = @AccountType,
                       ClientNumber = @ClientNumber,
                       ClientName = @ClientName,
                       Amount = @Amount
            WHERE
                    AccountNumber = @AccountNumber
        END
    ELSE IF @StatementType = 'insert' and @AccountId is not null
        BEGIN
            SELECT 'Cannot insert account: ' + @AccountNumber + ' already exists!'
        END
    ELSE IF @StatementType = 'update' and @AccountId is null
        BEGIN
            SELECT 'Cannot update account: ' + @AccountNumber + ' do not exists!'
        END


END
GO

DROP PROCEDURE spManageInsurance
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE spManageInsurance
    @InsuranceNumber nchar(20),
    @InsuranceType nvarchar(20),
    @CustomerNumber nchar(10),
    @CustomerName nvarchar(max),
    @SickMonthsCount int = 0,
    @SickSalaryAmount decimal(15,2),
    @StatementType nvarchar(20) = 'insert'

AS
BEGIN
    DECLARE @InsuranceId numeric = NULL

    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    SELECT @InsuranceId = InsuranceId FROM tblInsurance WHERE InsuranceNumber = @InsuranceNumber

    IF @StatementType = 'insert' and @InsuranceId is null
        BEGIN
            -- Insert statements for procedure here
            INSERT INTO dbo.tblInsurance (
                                          InsuranceNumber,
                                          InsuranceType,
                                          CustomerNumber,
                                          CustomerName,
                                          SickMonthsCount,
                                          SickSalaryAmount)
            SELECT
                @InsuranceNumber,
                @InsuranceType,
                @CustomerNumber,
                @CustomerName,
                @SickMonthsCount,
                @SickSalaryAmount
        END
    ELSE IF @StatementType = 'update' and @InsuranceId is not null
        BEGIN
            UPDATE	tblInsurance
            SET		InsuranceType = @InsuranceType,
                    CustomerNumber = @CustomerNumber,
                    CustomerName = @CustomerName,
                    SickMonthsCount = @SickMonthsCount,
                    SickSalaryAmount = @SickSalaryAmount
            WHERE
                    InsuranceNumber = @InsuranceNumber
        END
    ELSE IF @StatementType = 'insert' and @InsuranceId is not null
        BEGIN
            SELECT 'Cannot insert insurance: ' + @InsuranceNumber + ' already exists!'
        END
    ELSE IF @StatementType = 'update' and @InsuranceId is null
        BEGIN
            SELECT 'Cannot update insurance: ' + @InsuranceNumber + ' do not exists!'
        END

END
GO

DROP PROCEDURE spManagePerson
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE spManagePerson
    @PersonNumber nchar(10),
    @PersonName nvarchar(max),
    @Luck tinyint = 0,
    @Magellit tinyint = 0,
    @Age int = 20,
    @StatementType nvarchar(20) = 'insert'

AS
BEGIN
    DECLARE @PersonId numeric = NULL

    SET NOCOUNT ON;

    SELECT @PersonId = PersonId FROM tblPerson WHERE PersonNumber = @PersonNumber

    IF @StatementType = 'insert' and @PersonId is null
        BEGIN
            -- Insert statements for procedure here
            INSERT INTO dbo.tblPerson (
                                        PersonNumber,
                                        PersonName,
                                        Luck,
                                        Magellit,
                                       Age)
            SELECT
                @PersonNumber,
                @PersonName,
                @Luck,
                @Magellit,
                @Age
        END
    ELSE IF @StatementType = 'update' and @PersonId is not null
        BEGIN
            UPDATE	tblPerson
            SET		PersonName = @PersonName,
                    Luck = @Luck,
                    Magellit = @Magellit,
                    Age = @Age
            WHERE
                    PersonId = @PersonId
        END
    ELSE IF @StatementType = 'insert' and @PersonId is not null
        BEGIN
            SELECT 'Cannot insert Person: ' + @PersonNumber + ' already exists!'
        END
    ELSE IF @StatementType = 'update' and @PersonId is null
        BEGIN
            SELECT 'Cannot update Person: ' + @PersonNumber + ' do not exists!'
        END

END
GO

DROP PROCEDURE spManageProfession
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE spManageProfession
    @ProfessionNumber nchar(10),
    @ProfessionName nvarchar(50),
    @FirstSalary decimal(18,0) = 0,
    @PensionAge int = 66,
    @TypeOfGoal nvarchar(50),
    @StatementType nvarchar(20) = 'insert'

AS
BEGIN
    DECLARE @ProfessionId numeric = NULL

    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    SELECT @ProfessionId = ProfessionId FROM tblProfession WHERE ProfessionNumber = @ProfessionNumber

    IF @StatementType = 'insert' and @ProfessionId is null
        BEGIN
            -- Insert statements for procedure here
            INSERT INTO dbo.tblProfession (
                                            ProfessionNumber,
                                            ProfessionName,
                                            FirstSalary,
                                            PensionAge,
                                            TypeOfGoal)
            SELECT
                @ProfessionNumber,
                @ProfessionName,
                @FirstSalary,
                @PensionAge,
                @TypeOfGoal
        END
    ELSE IF @StatementType = 'update' and @ProfessionId is not null
        BEGIN
            UPDATE	tblProfession
            SET		ProfessionName = @ProfessionName,
                    FirstSalary = @FirstSalary,
                    PensionAge = @PensionAge,
                    TypeOfGoal = @TypeOfGoal

            WHERE
                    ProfessionId = @ProfessionId
        END
    ELSE IF @StatementType = 'insert' and @ProfessionId is not null
        BEGIN
            SELECT 'Cannot insert Profession: ' + @ProfessionNumber + ' already exists!'
        END
    ELSE IF @StatementType = 'update' and @ProfessionId is null
        BEGIN
            SELECT 'Cannot update Union: ' + @ProfessionNumber + ' do not exists!'
        END

END
GO

DROP PROCEDURE spManageUnion
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE spManageUnion
    @MemberNumber nchar(10),
    @MemberName nvarchar(50),
    @PersonNumber nchar(10),
    @Akassa tinyint = 0,
    @IncomeInsurance tinyint = 0,
    @UnemployedSalaryAmount decimal(15,2) = 0,
    @StatementType nvarchar(20) = 'insert'

AS
BEGIN
    DECLARE @UnionId numeric = NULL

    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    SELECT @UnionId = UnionId FROM tblUnion WHERE MemberNumber = @MemberNumber

    IF @StatementType = 'insert' and @UnionId is null
        BEGIN
            -- Insert statements for procedure here
            INSERT INTO dbo.tblUnion (
                MemberNumber,
                MemberName,
                PersonNumber,
                Akassa,
                IncomeInsurance,
                UnemployedSalaryAmount)
            SELECT
                @MemberNumber,
                @MemberName,
                @PersonNumber,
                @Akassa,
                @IncomeInsurance,
                @UnemployedSalaryAmount
        END
    ELSE IF @StatementType = 'update' and @UnionId is not null
        BEGIN
            UPDATE	tblUnion
            SET		MemberName = @MemberName,
                    PersonNumber = @PersonNumber,
                    Akassa = @Akassa,
                    IncomeInsurance = @IncomeInsurance,
                    UnemployedSalaryAmount = @UnemployedSalaryAmount
            WHERE
                    UnionId = @UnionId
        END
    ELSE IF @StatementType = 'insert' and @UnionId is not null
        BEGIN
            SELECT 'Cannot insert Union: ' + @MemberNumber + ' already exists!'
        END
    ELSE IF @StatementType = 'update' and @UnionId is null
        BEGIN
            SELECT 'Cannot update Union: ' + @MemberNumber + ' do not exists!'
        END

END
GO

DROP PROCEDURE spManageWork
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE spManageWork
    @EmployeeNumber nchar(10),
    @PersonName nvarchar(max),
    @PersonNumber nchar(20),
    @Salary decimal(18,0) = 0,
    @SalaryFixedPercentage decimal(18,0) = 0,
    @SalaryVariablePercentage decimal(18,0) = 0,
    @WorkMonthCount int = 0,
    @StatementType nvarchar(20) = 'insert'

AS
BEGIN
    DECLARE @EmployeeId numeric = NULL

    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    SELECT @EmployeeId = EmployeeId FROM tblWork WHERE EmployeeNumber = @EmployeeNumber

    IF @StatementType = 'insert' and @EmployeeId is null
        BEGIN
            -- Insert statements for procedure here
            INSERT INTO dbo.tblWork (
                EmployeeNumber,
                PersonName,
                PersonNumber,
                Salary,
                SalaryFixedPercentage,
                SalaryVariablePercentage,
                WorkMonthCount)
            SELECT
                @EmployeeNumber,
                @PersonName,
                @PersonNumber,
                @Salary,
                @SalaryFixedPercentage,
                @SalaryVariablePercentage,
                @WorkMonthCount
        END
    ELSE IF @StatementType = 'update' and @EmployeeId is not null
        BEGIN
            UPDATE	tblWork
            SET		PersonName = @EmployeeNumber,
                    PersonNumber = @PersonNumber,
                    Salary = @Salary,
                    SalaryFixedPercentage = @SalaryFixedPercentage,
                    SalaryVariablePercentage = @SalaryVariablePercentage,
                    WorkMonthCount = @WorkMonthCount
            WHERE
                    EmployeeId = @EmployeeId
        END
    ELSE IF @StatementType = 'insert' and @EmployeeId is not null
        BEGIN
            SELECT 'Cannot insert Union: ' + @EmployeeNumber + ' already exists!'
        END
    ELSE IF @StatementType = 'update' and @EmployeeId is null
        BEGIN
            SELECT 'Cannot update Union: ' + @EmployeeNumber + ' do not exists!'
        END

END
GO
