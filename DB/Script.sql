USE [HRSchema]
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERT_WORKING_HOURS]    Script Date: 6/12/2018 1:09:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[SP_INSERT_WORKING_HOURS] 
	-- Add the parameters for the stored procedure here
	@date nvarchar(MAX), @day nvarchar(50), @arrivalTime nvarchar(MAX), @depatureTime nvarchar(MAX),
	@hours nvarchar(50), @minutes nvarchar(50), @seconds nvarchar(50), @employeeID nvarchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[EmployeeWorkingHours]
			(	[date],
				[day],
				[arrivalTime],
				[depatureTime],
				[hours],
				[minutes],
				[seconds],
				[employeeID]
			)
	VALUES(
				@date, 
				@day, 
				@arrivalTime, 
				@depatureTime, 
				@hours, 
				@minutes, 
				@seconds, 
				@employeeID
			)

END
