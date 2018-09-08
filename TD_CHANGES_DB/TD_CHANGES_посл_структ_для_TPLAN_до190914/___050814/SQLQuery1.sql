USE [TD5R1]
GO

/****** Object:  StoredProcedure [dbo].[SetDriverOnLine]    Script Date: 08/05/2014 00:50:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SetDriverOutLine] 
	-- Add the parameters for the stored procedure here
	(@driver_id int, @count int OUT)
AS
BEGIN 

	EXEC CheckDriverBusy @driver_id;
	UPDATE Voditelj SET V_rabote=0 
	WHERE Voditelj.BOLD_ID=@driver_id AND 
	Voditelj.Zanyat_drugim_disp=0;
	SET @count=@@ROWCOUNT;
	
END

GO


