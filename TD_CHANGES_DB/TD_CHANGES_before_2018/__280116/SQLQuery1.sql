USE [TD5R1]
GO

/****** Object:  StoredProcedure [dbo].[GetDrLockOnCalcDebt]    Script Date: 28.01.2016 22:58:22 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER OFF
GO

ALTER PROCEDURE [dbo].[GetDrLockOnCalcDebtDyn]  ( @dr_num int, @res int OUT)
AS
BEGIN
   declare @dr_count int, @use_dr_lock smallint, @driver_id int, @dr_debt decimal(28,10);
   
   SET @res=-1
   
   SELECT @dr_count=COUNT(*) FROM Voditelj
   WHERE Pozyvnoi=@dr_num;
   
   if (@dr_count=1) and (@dr_num>0) begin
		SELECT @use_dr_lock=rlock_on_calc_debt, @driver_id=BOLD_ID, @dr_debt=DRIVER_BALANCE FROM Voditelj 
		WHERE Pozyvnoi=@dr_num;
		if @use_dr_lock<>1 begin
			SET @res=-1
		end
		else begin
		
			DECLARE @db_version INT, @drcalc_start_date date,
			@ftime_tariff decimal(28,10), @min_debt decimal(28,10);
	
			SELECT TOP 1 @db_version=ISNULL(db_version,3),
			@drcalc_start_date=ISNULL(drcalc_start_date,GETDATE()),
			@min_debt=ISNULL(MIN_DEBET,0)
			FROM Objekt_vyborki_otchyotnosti
			WHERE Tip_objekta='for_drivers';
			
			if @min_debt>@dr_debt
			begin
				SET @res=1
			end
			else	begin
			SET @res=-2
			end
			
		end
   end

   RETURN(@res)
END
GO


