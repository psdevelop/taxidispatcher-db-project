CREATE FUNCTION [dbo].[GetJSONDriverSettings]  ( @driver_id int)
RETURNS int
AS
BEGIN
  declare @en_moving int;
   
  SET @en_moving=0;
   
  select @en_moving=ISNULL(EN_MOVING,0)   
  from Voditelj where BOLD_ID=@driver_id;   

  RETURN('{"command":"sets","en_moving":"'+
	CAST(@en_moving as varchar(20))+
	'","msg_end":"ok"}')
END
