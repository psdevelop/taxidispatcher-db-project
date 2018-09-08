CREATE FUNCTION [dbo].[GetSectorDrCount]  (@sector_id int)
RETURNS int
AS
BEGIN
   DECLARE @dr_count int;
   SET @dr_count=0;
   
   SELECT @dr_count=COUNT(*) FROM Voditelj
   WHERE rabotaet_na_sektore=@sector_id;  

   RETURN(@dr_count)
END


