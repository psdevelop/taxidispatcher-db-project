USE [TD5R1]
GO

/****** Object:  UserDefinedFunction [dbo].[isSMSWithCallRaplace]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.isSMSWithCallRaplace') IS NOT NULL 
DROP FUNCTION [dbo].[isSMSWithCallRaplace]
GO
/****** Object:  UserDefinedFunction [dbo].[isCallTimeExpired]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.isCallTimeExpired') IS NOT NULL 
DROP FUNCTION [dbo].[isCallTimeExpired]
GO
/****** Object:  UserDefinedFunction [dbo].[GetUseDrBCounter]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetUseDrBCounter') IS NOT NULL 
DROP FUNCTION [dbo].[GetUseDrBCounter]
GO
/****** Object:  UserDefinedFunction [dbo].[GetTarTimeTariff]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetTarTimeTariff') IS NOT NULL 
DROP FUNCTION [dbo].[GetTarTimeTariff]
GO
/****** Object:  UserDefinedFunction [dbo].[GetTarTaxTariff]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetTarTaxTariff') IS NOT NULL 
DROP FUNCTION [dbo].[GetTarTaxTariff]
GO
/****** Object:  UserDefinedFunction [dbo].[GetTarifAreaCoords]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetTarifAreaCoords') IS NOT NULL 
DROP FUNCTION [dbo].[GetTarifAreaCoords]
GO
/****** Object:  UserDefinedFunction [dbo].[GetStartSector]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetStartSector') IS NOT NULL 
DROP FUNCTION [dbo].[GetStartSector]
GO
/****** Object:  UserDefinedFunction [dbo].[GetSpecCustComment]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetSpecCustComment') IS NOT NULL 
DROP FUNCTION [dbo].[GetSpecCustComment]
GO
/****** Object:  UserDefinedFunction [dbo].[GetSetManualAddrChange]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetSetManualAddrChange') IS NOT NULL 
DROP FUNCTION [dbo].[GetSetManualAddrChange]
GO
/****** Object:  UserDefinedFunction [dbo].[GetSendSMSCustComment]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetSendSMSCustComment') IS NOT NULL 
DROP FUNCTION [dbo].[GetSendSMSCustComment]
GO
/****** Object:  UserDefinedFunction [dbo].[GetSectorDrCount]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetSectorDrCount') IS NOT NULL 
DROP FUNCTION [dbo].[GetSectorDrCount]
GO
/****** Object:  UserDefinedFunction [dbo].[GetSectorAreaCoords]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetSectorAreaCoords') IS NOT NULL 
DROP FUNCTION [dbo].[GetSectorAreaCoords]
GO
/****** Object:  UserDefinedFunction [dbo].[GetSDSumm]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetSDSumm') IS NOT NULL 
DROP FUNCTION [dbo].[GetSDSumm]
GO
/****** Object:  UserDefinedFunction [dbo].[GetRemoteOrderStatusInfo]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetRemoteOrderStatusInfo') IS NOT NULL 
DROP FUNCTION [dbo].[GetRemoteOrderStatusInfo]
GO
/****** Object:  UserDefinedFunction [dbo].[GetRemoteCustComment]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetRemoteCustComment') IS NOT NULL 
DROP FUNCTION [dbo].[GetRemoteCustComment]
GO
/****** Object:  UserDefinedFunction [dbo].[GetPrevCustComment]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetPrevCustComment') IS NOT NULL 
DROP FUNCTION [dbo].[GetPrevCustComment]
GO
/****** Object:  UserDefinedFunction [dbo].[GetOrdTarifNameByTId]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetOrdTarifNameByTId') IS NOT NULL 
DROP FUNCTION [dbo].[GetOrdTarifNameByTId]
GO
/****** Object:  UserDefinedFunction [dbo].[GetOrdOptsStrByOComb]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetOrdOptsStrByOComb') IS NOT NULL 
DROP FUNCTION [dbo].[GetOrdOptsStrByOComb]
GO
/****** Object:  UserDefinedFunction [dbo].[GetOrderOnPlaceAMICommand]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetOrderOnPlaceAMICommand') IS NOT NULL 
DROP FUNCTION [dbo].[GetOrderOnPlaceAMICommand]
GO
/****** Object:  UserDefinedFunction [dbo].[GetOrderINumComment]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetOrderINumComment') IS NOT NULL 
DROP FUNCTION [dbo].[GetOrderINumComment]
GO
/****** Object:  UserDefinedFunction [dbo].[GetOrderAMICommand]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetOrderAMICommand') IS NOT NULL 
DROP FUNCTION [dbo].[GetOrderAMICommand]
GO
/****** Object:  UserDefinedFunction [dbo].[GetNearestBeginEndDate]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetNearestBeginEndDate') IS NOT NULL 
DROP FUNCTION [dbo].[GetNearestBeginEndDate]
GO
/****** Object:  UserDefinedFunction [dbo].[GetJSONTarifAndOptionsList]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetJSONTarifAndOptionsList') IS NOT NULL 
DROP FUNCTION [dbo].[GetJSONTarifAndOptionsList]
GO
/****** Object:  UserDefinedFunction [dbo].[GetJSONSectorsStatus]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetJSONSectorsStatus') IS NOT NULL 
DROP FUNCTION [dbo].[GetJSONSectorsStatus]
GO
/****** Object:  UserDefinedFunction [dbo].[GetJSONSectorList]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetJSONSectorList') IS NOT NULL 
DROP FUNCTION [dbo].[GetJSONSectorList]
GO
/****** Object:  UserDefinedFunction [dbo].[GetJSONOrdersBCasts]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetJSONOrdersBCasts') IS NOT NULL 
DROP FUNCTION [dbo].[GetJSONOrdersBCasts]
GO
/****** Object:  UserDefinedFunction [dbo].[GetJSONDriversList]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetJSONDriversList') IS NOT NULL 
DROP FUNCTION [dbo].[GetJSONDriversList]
GO
/****** Object:  UserDefinedFunction [dbo].[GetJSONDriverSettings]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetJSONDriverSettings') IS NOT NULL 
DROP FUNCTION [dbo].[GetJSONDriverSettings]
GO
/****** Object:  UserDefinedFunction [dbo].[GetJSONDriverOrdersBCasts]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetJSONDriverOrdersBCasts') IS NOT NULL 
DROP FUNCTION [dbo].[GetJSONDriverOrdersBCasts]
GO
/****** Object:  UserDefinedFunction [dbo].[GetJSONDriverEarlyOrders]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetJSONDriverEarlyOrders') IS NOT NULL 
DROP FUNCTION [dbo].[GetJSONDriverEarlyOrders]
GO
/****** Object:  UserDefinedFunction [dbo].[GetIntervalDriverSuccessSMSCount]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetIntervalDriverSuccessSMSCount') IS NOT NULL 
DROP FUNCTION [dbo].[GetIntervalDriverSuccessSMSCount]
GO
/****** Object:  UserDefinedFunction [dbo].[GetIntervalDrClientSuccessSMSCount]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetIntervalDrClientSuccessSMSCount') IS NOT NULL 
DROP FUNCTION [dbo].[GetIntervalDrClientSuccessSMSCount]
GO
/****** Object:  UserDefinedFunction [dbo].[GetEndSectorNameByID]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetEndSectorNameByID') IS NOT NULL 
DROP FUNCTION [dbo].[GetEndSectorNameByID]
GO
/****** Object:  UserDefinedFunction [dbo].[GetEndSector]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetEndSector') IS NOT NULL 
DROP FUNCTION [dbo].[GetEndSector]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDrWorkSumm]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetDrWorkSumm') IS NOT NULL 
DROP FUNCTION [dbo].[GetDrWorkSumm]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDrUseDynBByNumWithSettParam]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetDrUseDynBByNumWithSettParam') IS NOT NULL 
DROP FUNCTION [dbo].[GetDrUseDynBByNumWithSettParam]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDrUseDynBByNum]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetDrUseDynBByNum') IS NOT NULL 
DROP FUNCTION [dbo].[GetDrUseDynBByNum]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDrTimeTariff]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetDrTimeTariff') IS NOT NULL 
DROP FUNCTION [dbo].[GetDrTimeTariff]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDrTaxTariff]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetDrTaxTariff') IS NOT NULL 
DROP FUNCTION [dbo].[GetDrTaxTariff]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDrTariffPlanId]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetDrTariffPlanId') IS NOT NULL 
DROP FUNCTION [dbo].[GetDrTariffPlanId]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDrTakePercent]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetDrTakePercent') IS NOT NULL 
DROP FUNCTION [dbo].[GetDrTakePercent]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDrOrderFixedSumm]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetDrOrderFixedSumm') IS NOT NULL 
DROP FUNCTION [dbo].[GetDrOrderFixedSumm]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDrLastHoursSumm]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetDrLastHoursSumm') IS NOT NULL 
DROP FUNCTION [dbo].[GetDrLastHoursSumm]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDrLastHoursRateOrdCount]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetDrLastHoursRateOrdCount') IS NOT NULL 
DROP FUNCTION [dbo].[GetDrLastHoursRateOrdCount]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDrJSONCoordsByNum]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetDrJSONCoordsByNum') IS NOT NULL 
DROP FUNCTION [dbo].[GetDrJSONCoordsByNum]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDriversMinBalance]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetDriversMinBalance') IS NOT NULL 
DROP FUNCTION [dbo].[GetDriversMinBalance]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDriversCCHTTPParams]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetDriversCCHTTPParams') IS NOT NULL 
DROP FUNCTION [dbo].[GetDriversCCHTTPParams]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDriverRating]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetDriverRating') IS NOT NULL 
DROP FUNCTION [dbo].[GetDriverRating]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDriverDaysFixedSumm]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetDriverDaysFixedSumm') IS NOT NULL 
DROP FUNCTION [dbo].[GetDriverDaysFixedSumm]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDrIDByNum]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetDrIDByNum') IS NOT NULL 
DROP FUNCTION [dbo].[GetDrIDByNum]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDrDynBalanceByNum]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetDrDynBalanceByNum') IS NOT NULL 
DROP FUNCTION [dbo].[GetDrDynBalanceByNum]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDrDaysIntervalFixedSumm]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetDrDaysIntervalFixedSumm') IS NOT NULL 
DROP FUNCTION [dbo].[GetDrDaysIntervalFixedSumm]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDrDayliTariff]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetDrDayliTariff') IS NOT NULL 
DROP FUNCTION [dbo].[GetDrDayliTariff]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDrComment]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetDrComment') IS NOT NULL 
DROP FUNCTION [dbo].[GetDrComment]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDiscountNumOnOrderCount]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetDiscountNumOnOrderCount') IS NOT NULL 
DROP FUNCTION [dbo].[GetDiscountNumOnOrderCount]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDevNumByCode]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetDevNumByCode') IS NOT NULL 
DROP FUNCTION [dbo].[GetDevNumByCode]
GO
/****** Object:  UserDefinedFunction [dbo].[GetCustComment]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetCustComment') IS NOT NULL 
DROP FUNCTION [dbo].[GetCustComment]
GO
/****** Object:  UserDefinedFunction [dbo].[GetCustClientInfo]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetCustClientInfo') IS NOT NULL 
DROP FUNCTION [dbo].[GetCustClientInfo]
GO
/****** Object:  UserDefinedFunction [dbo].[DistanceBetweenTwoCoords]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.DistanceBetweenTwoCoords') IS NOT NULL 
DROP FUNCTION [dbo].[DistanceBetweenTwoCoords]
GO
/****** Object:  UserDefinedFunction [dbo].[DegToRad]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.DegToRad') IS NOT NULL 
DROP FUNCTION [dbo].[DegToRad]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDriverRatingLevel]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetDriverRatingLevel') IS NOT NULL 
DROP FUNCTION [dbo].[GetDriverRatingLevel]
GO

/****** Object:  UserDefinedFunction [dbo].[GetJSONCompanyTOList]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetJSONCompanyTOList') IS NOT NULL 
DROP FUNCTION [dbo].[GetJSONCompanyTOList]
GO

/****** Object:  UserDefinedFunction [dbo].[GetJSONWaitTimesList]    Script Date: 08.12.2018 6:16:40 ******/
IF OBJECT_ID('dbo.GetJSONWaitTimesList') IS NOT NULL 
DROP FUNCTION [dbo].[GetJSONWaitTimesList]
GO

/****** Object:  UserDefinedFunction [dbo].[GetJSONCompanyDriversList]    Script Date: 22.10.2019 6:16:40 ******/
IF OBJECT_ID('dbo.GetJSONCompanyDriversList') IS NOT NULL 
DROP FUNCTION [dbo].[GetJSONCompanyDriversList]
GO

/****** Object:  UserDefinedFunction [dbo].[GetJSONClientInfo]    Script Date: 20.11.2019 6:16:40 ******/
IF OBJECT_ID('dbo.GetJSONClientInfo') IS NOT NULL 
DROP FUNCTION [dbo].[GetJSONClientInfo]
GO

/****** Object:  UserDefinedFunction [dbo].[GetDriverOrderOptionIncluded]    Script Date: 23.11.2019 6:16:40 ******/
IF OBJECT_ID('dbo.GetDriverOrderOptionIncluded') IS NOT NULL 
DROP FUNCTION [dbo].[GetDriverOrderOptionIncluded]
GO

/****** Object:  UserDefinedFunction [dbo].[GetSectorMediumAreaCoords]    Script Date: 03.12.2019 15:50:40 ******/
IF OBJECT_ID('dbo.GetSectorMediumAreaCoords') IS NOT NULL 
DROP FUNCTION [dbo].[GetSectorMediumAreaCoords]
GO

/****** Object:  UserDefinedFunction [dbo].[GetFirstQueueNearSectDriverId]    Script Date: 03.12.2019 15:50:40 ******/
IF OBJECT_ID('dbo.GetFirstQueueNearSectDriverId') IS NOT NULL 
DROP FUNCTION [dbo].[GetFirstQueueNearSectDriverId]
GO

/****** Object:  UserDefinedFunction [dbo].[GetDrNumByDrId]    Script Date: 03.12.2019 20:50:40 ******/
IF OBJECT_ID('dbo.GetDrNumByDrId') IS NOT NULL 
DROP FUNCTION [dbo].[GetDrNumByDrId]
GO

/****** Object:  UserDefinedFunction [dbo].[GetJSONCompanyDriversListInRadius]    Script Date: 15.12.2019 08:30:40 ******/
IF OBJECT_ID('dbo.GetJSONCompanyDriversListInRadius') IS NOT NULL 
DROP FUNCTION [dbo].[GetJSONCompanyDriversListInRadius]
GO

/****** Object:  UserDefinedFunction [dbo].[DegToRad]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[DegToRad]  ( @deg decimal(18,5))
RETURNS decimal(18,5)
AS
BEGIN 
   RETURN (@deg * PI() / 180)
END
GO
/****** Object:  UserDefinedFunction [dbo].[DistanceBetweenTwoCoords]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[DistanceBetweenTwoCoords]  (@lat1 decimal(28,10), 
@lon1 decimal(28,10), @lat2 decimal(28,10), @lon2 decimal(28,10))
RETURNS decimal(28,10)
AS
BEGIN 
	DECLARE @earthRadius decimal(28,10), @dLat decimal(28,10), 
		@dLon decimal(28,10), @a decimal(28,10), @c decimal(28,10);

	SET @earthRadius = 6371;
	SET @dLat = dbo.DegToRad(@lat2 - @lat1);
	SET @dLon = dbo.DegToRad(@lon2 - @lon1);

	SET @lat1 = dbo.DegToRad(@lat1);
	SET @lat2 = dbo.DegToRad(@lat2);

	SET @a = SIN(@dLat/2) * SIN(@dLat/2) +
          SIN(@dLon/2) * SIN(@dLon/2) * COS(@lat1) * COS(@lat2); 
	SET @c = 2 * ATN2(SQRT(@a), SQRT(1-@a));

	RETURN (@earthRadius * @c)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetCustClientInfo]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetCustClientInfo]  ( @cust_num decimal, @dr_num int)
RETURNS varchar(255)
AS
BEGIN
   declare @ccount int, @res varchar(255),  @cres varchar(255),
		@poz varchar(255), @model varchar(255), @gos_num  varchar(255)

  SET @res=''
   
   --select @ccount=COUNT(*) from Zakaz where 
   --nomer_zakaza=@cust_num
  SET @ccount=1
 
   if (@ccount>0) begin
      --select @cres=telefon_klienta+adres_vyzova_vvodim from Zakaz c where 
      --    c.nomer_zakaza=@cust_num   
      --if (@phone_adr='')  begin
      -- SET @res=''
      --end
      --else
      -- begin
      -- select ='Заявка от '+CAST(nachalo_zakaza_data as VARCHAR) from Zakaz c where 
      --     c.nomer_zakaza=@cust_num     
      --SET @res=CAST(@nzd as VARCHAR)   
         SET @cres=''
         SET @poz=''
		 SET @model=''
         SET @gos_num=''
         if (@dr_num>0) begin
			select @ccount=COUNT(*) from Voditelj v where 
				(v.Pozyvnoi=@dr_num)
			if (@ccount>0) begin
				select @poz=ISNULL(CAST(v.Pozyvnoi AS VARCHAR),''),
					@model=ISNULL(v.Marka_avtomobilya,''),
					@gos_num=ISNULL(v.Gos_nomernoi_znak,'') from Voditelj v where 
					(v.Pozyvnoi=@dr_num)
			end  
         end
		 
		 --if	(@poz<>'') begin
		 --	SET @poz='позывной '+@poz
		 --end
		 if ((@model<>'') AND (@gos_num<>'')) begin
			SET @res=@model+' '+@gos_num    
         end
        --end    
   end
   else begin
     set @res=''
   end

   RETURN(@res)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetCustComment]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetCustComment]  ( @cust_num decimal, @nzd datetime, @phone_adr varchar(255), @oo decimal, @od decimal, @dr_num int)
RETURNS varchar(255)
AS
BEGIN
   declare @ccount int, @res varchar(255),  @cres varchar(255)

   SET @res='Заявка от '
   
   --select @ccount=COUNT(*) from Zakaz where 
   --nomer_zakaza=@cust_num
  SET @ccount=1
 
   if (@ccount>0) begin

      --select @cres=telefon_klienta+adres_vyzova_vvodim from Zakaz c where 
      --    c.nomer_zakaza=@cust_num   
      if (@phone_adr='')  begin
       SET @res='Пустая заявка установите адрес или телефон'
      end
      else
       begin

      -- select ='Заявка от '+CAST(nachalo_zakaza_data as VARCHAR) from Zakaz c where 
      --     c.nomer_zakaza=@cust_num     

        SET @res=CAST(@nzd as VARCHAR) 
        SET @cres=', нет оператора '
        select @ccount=COUNT(*) from Personal p where 
          (p.BOLD_ID=@oo)
         if (@ccount>0) begin
            select @cres=', оператор '+p.login from Personal p where 
            (p.BOLD_ID=@oo)
         end 

        SET @res=@res+@cres

        SET @cres=', нет диспетчера '
        select @ccount=COUNT(*) from Personal p where 
          (p.BOLD_ID=@od)
         if (@ccount>0) begin
            select @cres=', диспетчер '+p.login from Personal p where 
            (p.BOLD_ID=@od)
         end  

         SET @res=@res+@cres 
         
         SET @cres=' не опр. водитель '
         if (@dr_num>0) begin
			select @ccount=COUNT(*) from Voditelj v where 
				(v.Pozyvnoi=@dr_num)
			if (@ccount>0) begin
				select @cres=', машина '+CAST(v.Pozyvnoi AS VARCHAR)+' '+
					ISNULL(v.Marka_avtomobilya,'нет марки и цвета')+' '+
					ISNULL(v.Gos_nomernoi_znak,'нет гос. номера') from Voditelj v where 
					(v.Pozyvnoi=@dr_num)
			end  
         end

         SET @res=@res+@cres      

        end    

   end
   else begin
     set @res='Заявка не найдена в базе'
   end

   RETURN(@res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetDevNumByCode]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetDevNumByCode]  ( @phone varchar(255))
RETURNS int
AS
BEGIN
   declare @res int, @code varchar(50)
   
   SET @res=0
   
   IF LEN(@phone)=10
   BEGIN
		SET @code=LEFT(@phone,3)
		SELECT @res=device_num FROM DEVICE_CODES WHERE code=@code
   END

   if @res=NULL begin
       SET @res=0
   end  

   RETURN(@res)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetDiscountNumOnOrderCount]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetDiscountNumOnOrderCount]  ( @order_count int)
RETURNS int
AS
BEGIN
   declare @res int,
		@use_bonus1 int, @bonus1_val int,
		@use_bonus2 int, @bonus2_val int,
		@use_bonus3 int, @bonus3_val int,
		@use_bonus4 int, @bonus4_val int;
		
  SET @res=0;
   
  SELECT TOP 1 
		@use_bonus1=ISNULL(Ispoljz_priz_1,0), 
		@use_bonus2=ISNULL(Ispoljz_priz_2,0),
		@use_bonus3=ISNULL(use_bonus3,0),
		@use_bonus4=ISNULL(use_bonus4,0),
		@bonus1_val=ISNULL(Prizovoe_kolichestvo_1,0),
		@bonus2_val=ISNULL(Prizovoe_kolichestvo_2,0),
		@bonus3_val=ISNULL(Prizovoe_kolichestvo_3,0),
		@bonus4_val=ISNULL(Prizovoe_kolichestvo_4,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	if (@use_bonus1>0) AND (@bonus1_val>0) 
	begin
		if ((@order_count % @bonus1_val)=0)
		begin
			SET @res=1;
		end;
	end;
	
	if (@use_bonus2>0) AND (@bonus2_val>0) 
	begin
		if ((@order_count % @bonus2_val)=0)
		begin
			SET @res=2;
		end;
	end;
	
	if (@use_bonus3>0) AND (@bonus3_val>0) 
	begin
		if ((@order_count % @bonus3_val)=0)
		begin
			SET @res=3;
		end;
	end;
	
	if (@use_bonus4>0) AND (@bonus4_val>0) 
	begin
		if ((@order_count % @bonus4_val)=0)
		begin
			SET @res=4;
		end;
	end;

   RETURN(@res)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetDrComment]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetDrComment]  (@LastDATE datetime, @Drnum int, @Occup_attr int, @launch int)
RETURNS varchar(255)
AS
BEGIN
   DECLARE @DrComment varchar(255),
           @Occuped varchar(15)
   IF @Occup_attr=0 BEGIN
     SET @Occuped='свободен'
   END
    ELSE
   BEGIN
     SET @Occuped='занят'
   END

   IF @launch<>0 
    BEGIN
      SET @Occuped='на перерыве'
    END

   SET @DrComment= CAST(@Drnum AS VARCHAR(4))+' '+@Occuped+' посл. '
+CAST(DATEPART(hh,(@LastDATE))AS CHAR(2))+'ч.'
+CAST(DATEPART(mm,(@LastDATE))AS CHAR(2))+'мин. '  

   RETURN(@DrComment)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetDrDayliTariff]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE FUNCTION [dbo].[GetDrDayliTariff]  (@dr_id int)
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE @day_pay decimal(28, 10),
           @dr_count int,
           @res decimal(28, 10)
   
   SET @day_pay=0
   SET @dr_count=0
   
   select @dr_count=COUNT(*) from Voditelj
   where BOLD_ID=@dr_id 
   
   IF @dr_count=0 BEGIN
     SET @res=0
   END
    ELSE
   BEGIN
     select @day_pay=dr.day_payment from Voditelj dr
     where BOLD_ID=@dr_id
     
     if @day_pay>0 begin
		SET @res=@day_pay
	 end
	 else
	 begin
		select @res=ovo.day_payment from Objekt_vyborki_otchyotnosti ovo
		where ovo.Tip_objekta='for_drivers'
	 end
     
   END  

   RETURN(@res)
END



GO
/****** Object:  UserDefinedFunction [dbo].[GetDrDaysIntervalFixedSumm]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO




CREATE FUNCTION [dbo].[GetDrDaysIntervalFixedSumm]  (@Drnum int, @start_date datetime, @end_date datetime, @free_days_count int)
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE @onday_fixed decimal(28, 10),
           @days_count int,
           @dr_count int,
           @res decimal(28, 10), 
           @d_kl int
   
   SET @onday_fixed=0
   SET @days_count=0
   SET @dr_count=0
   SET @res=0
   
   if (@end_date<@start_date)
   begin
	SET @end_date=@start_date
   end
   
   select @dr_count=COUNT(*) from Voditelj
   where Pozyvnoi=@Drnum 
   
   IF @dr_count=0 BEGIN
     SET @res=0
   END
    ELSE
   BEGIN
     
     select @d_kl=D_klass from Voditelj
	 where Pozyvnoi=@Drnum
      
     if @d_kl=0 BEGIN 
		 SET @days_count=DATEDIFF(day, @start_date, @end_date) - 
			@free_days_count;
	    
		 select @onday_fixed=ovo.Kol_posl_dnei from Objekt_vyborki_otchyotnosti ovo
		 where ovo.Tip_objekta='for_drivers';

		 SET @res=@onday_fixed*@days_count;
     end
   END  

   RETURN(@res)
END





GO
/****** Object:  UserDefinedFunction [dbo].[GetDrDynBalanceByNum]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetDrDynBalanceByNum]  ( @dr_num int)
RETURNS decimal(28,10)
AS
BEGIN
   declare @res decimal(28,10)
   
   SET @res=0
   
   if (@dr_num>0)
   begin
	select @res=DRIVER_BALANCE   
	from Voditelj where 
		Pozyvnoi=@dr_num 
   end

   SET @res=ISNULL(@res,0);

   RETURN(@res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetDrIDByNum]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetDrIDByNum]  ( @dr_num int)
RETURNS int
AS
BEGIN
   declare @res int
   
   SET @res=-1
   
  select @res=BOLD_ID   
   from Voditelj where 
     Pozyvnoi=@dr_num 

   if @res=NULL begin
       SET @res=-1
   end  

   RETURN(@res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetDriverDaysFixedSumm]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO



CREATE FUNCTION [dbo].[GetDriverDaysFixedSumm]  (@Drnum int, @start_date datetime, @free_days_count int)
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE @onday_fixed decimal(28, 10),
           @days_count int,
           @dr_count int,
           @res decimal(28, 10), 
           @d_kl int
   
   SET @onday_fixed=0
   SET @days_count=0
   SET @dr_count=0
   SET @res=0
   
   select @dr_count=COUNT(*) from Voditelj
   where Pozyvnoi=@Drnum 
   
   IF @dr_count=0 BEGIN
     SET @res=0
   END
    ELSE
   BEGIN
   
	 select @d_kl=D_klass from Voditelj
	 where Pozyvnoi=@Drnum
      
     if @d_kl=0 BEGIN
		 SET @days_count=DATEDIFF(day, @start_date, GETDATE()) - 
			@free_days_count;
	    
		 select @onday_fixed=ovo.Kol_posl_dnei from Objekt_vyborki_otchyotnosti ovo
		 where ovo.Tip_objekta='for_drivers';

		 SET @res=@onday_fixed*@days_count;
     END
   END  

   RETURN(@res)
END




GO
/****** Object:  UserDefinedFunction [dbo].[GetDriverRating]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE FUNCTION [dbo].[GetDriverRating]  (@driver_id int)
RETURNS decimal(18, 5)
AS
BEGIN
	DECLARE @rating decimal(18, 5), 
	@base_referral_bonus decimal(18, 5),
	@base_ref_bonus_interval int, 
	@referral_count int,
	@rating_bonus decimal(18, 5);

	SELECT TOP 1 @base_referral_bonus = base_referral_bonus,
	@base_ref_bonus_interval = base_ref_bonus_interval
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';

	SET @referral_count = 0;
	SET @rating_bonus = 0;
	SET @base_referral_bonus = ISNULL(@base_referral_bonus,0);
	SET @base_ref_bonus_interval = ISNULL(@base_ref_bonus_interval,0);
   
	select @rating = rating FROM Voditelj
	where BOLD_ID = @driver_id

	select @referral_count = COUNT(BOLD_ID) from Voditelj
	where referral_driver_id = @driver_id AND @base_ref_bonus_interval > 0 AND
		referral_set_date < GETDATE() AND
		DATEDIFF(HOUR, referral_set_date, GETDATE()) < @base_ref_bonus_interval

	SET @rating = @rating + @referral_count * @base_referral_bonus;
   
	select @rating_bonus = SUM(change_value) from DRIVER_RATING
	where driver_id = @driver_id
	
	select @rating = @rating + ISNULL(@rating_bonus, 0);  

	RETURN(@rating)
END



GO
/****** Object:  UserDefinedFunction [dbo].[GetDriverRatingLevel]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetDriverRatingLevel]  (@driver_id int)
RETURNS smallint
AS
BEGIN
  declare @res smallint
   
  SET @res=0
   
  select @res=rating_level   
  from Voditelj 
  where BOLD_ID=@driver_id 

  SET @res=ISNULL(@res, 0);

  RETURN(@res)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetDriversCCHTTPParams]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetDriversCCHTTPParams] ()
RETURNS varchar(1500)
AS
BEGIN
	declare @res varchar(1500);
	DECLARE @CURSOR cursor;
	DECLARE @dr_count int,
		@lat varchar(50), @lon varchar(50), 
		@counter int, @dr_num int;
   
	SET @res='dc=0';
	SET @counter = 0;
	
	SELECT @dr_count=COUNT(*)  
	FROM Voditelj WHERE ISNULL(last_lat,'')<>'' 
	AND ISNULL(last_lon,'')<>'' AND Pozyvnoi>0 AND V_rabote = 1 
	AND (ABS(DATEDIFF(minute, last_cctime, GETDATE())) < 60);
	
	IF (@dr_count>0)
	BEGIN
	
	SET @res='dc='+CAST(@dr_count as varchar(20));
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT last_lat, last_lon, Pozyvnoi  
	FROM Voditelj WHERE ISNULL(last_lat,'')<>'' 
	AND ISNULL(last_lon,'')<>'' AND Pozyvnoi>0 AND V_rabote = 1 
	AND (ABS(DATEDIFF(minute, last_cctime, GETDATE())) < 60);
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @lat, @lon, @dr_num
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @counter=@counter+1;
        SET @res=@res+'&lat'+CAST(@counter as varchar(20))+'='+CAST(@lat as varchar(20))+
			'&lon'+CAST(@counter as varchar(20))+'='+CAST(@lon as varchar(20))+
			'&dn'+CAST(@counter as varchar(20))+'='+CAST(@dr_num as varchar(20));
        
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @lat, @lon, @dr_num
	END
	CLOSE @CURSOR
	
	END

	RETURN(@res)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetDriversMinBalance]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetDriversMinBalance] ()
RETURNS decimal(28,10)
AS
BEGIN
   DECLARE @min_debet decimal(28,10)
   
   SELECT @min_debet=MIN_DEBET FROM Objekt_vyborki_otchyotnosti WHERE Tip_objekta='for_drivers';  

   SET @min_debet=ISNULL(@min_debet,0);

   RETURN(@min_debet)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetDrJSONCoordsByNum]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetDrJSONCoordsByNum]  ( @dr_num int)
RETURNS varchar(255)
AS
BEGIN
   declare @res int, @coords_json varchar(255);
   
   SET @res=-1
   SET @dr_num=ISNULL(@dr_num,0)
   SET @coords_json=''
   
  if @dr_num>0 begin
  select @coords_json=BOLD_ID, @coords_json=',"dlat":"'+ISNULL(last_lat,'')+'"'+',"dlon":"'+ISNULL(last_lon,'')+'"'  
   from Voditelj where 
     Pozyvnoi=@dr_num and ISNULL(last_lat,'')<>'' and ISNULL(last_lon,'')<>''
  end

   if @coords_json=NULL begin
       SET @coords_json=''
   end  

   RETURN(@coords_json)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetDrLastHoursRateOrdCount]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE FUNCTION [dbo].[GetDrLastHoursRateOrdCount]  (@DriverId int, @hours int, @rating_summ decimal(28,10))
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE @order_count int
   
   SET @order_count=0
   
   select @order_count=COUNT(*) from Zakaz
   where vypolnyaetsya_voditelem=@DriverId 
   and (Konec_zakaza_data<=CURRENT_TIMESTAMP) 
   and (Konec_zakaza_data>=DATEADD(hour,@hours,CURRENT_TIMESTAMP)) 
   and Arhivnyi=0 and Soobsheno_voditelyu=0 and 
   Zavershyon=1 and Uslovn_stoim>=@rating_summ;   

   RETURN(@order_count)
END



GO
/****** Object:  UserDefinedFunction [dbo].[GetDrLastHoursSumm]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetDrLastHoursSumm]  (@DriverId int, @hours int)
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE @summ decimal(28, 10)
   
   SET @summ=0
   
   select @summ=ISNULL(SUM(Uslovn_stoim),0) from Zakaz
   where vypolnyaetsya_voditelem=@DriverId 
   and (Konec_zakaza_data<=CURRENT_TIMESTAMP) 
   and (Konec_zakaza_data>=DATEADD(hour,@hours,CURRENT_TIMESTAMP)) 
   and Arhivnyi=0 and Soobsheno_voditelyu=0 and Zavershyon=1;   

   RETURN(@summ)
END


GO
/****** Object:  UserDefinedFunction [dbo].[GetDrOrderFixedSumm]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO



CREATE FUNCTION [dbo].[GetDrOrderFixedSumm]  (@Drnum int, @start_date datetime)
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE @order_fixed decimal(28, 10),
           @order_count int,
           @dr_count int,
           @res decimal(28, 10), 
           @d_kl int
   
   SET @order_fixed=0
   SET @order_count=0
   SET @dr_count=0
   SET @res=0
   
   select @dr_count=COUNT(*) from Voditelj
   where Pozyvnoi=@Drnum 
   
   IF @dr_count=0 BEGIN
     SET @res=0
   END
    ELSE
   BEGIN
   
	 select @d_kl=D_klass from Voditelj
	 where Pozyvnoi=@Drnum
	 
	 if @d_kl=0 BEGIN
   
		 select @order_count=COUNT(*) from Zakaz ord
		 where ord.Pozyvnoi_ustan=@Drnum AND 
		 ord.Nachalo_zakaza_data>=@start_date AND
		 ord.Arhivnyi=0 and ord.Zavershyon=1 AND
		 ord.Soobsheno_voditelyu=0;
	    
		 select @order_fixed=ovo.Kolich_vyd_benzina from Objekt_vyborki_otchyotnosti ovo
		 where ovo.Tip_objekta='for_drivers';

		 SET @res=@order_fixed*@order_count;
     
     end
     
   END  

   RETURN(@res)
END




GO
/****** Object:  UserDefinedFunction [dbo].[GetDrTakePercent]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetDrTakePercent]  (@Drnum int, @daily_percent decimal(18, 5))
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE @percent decimal(28, 10),
           @all_percent decimal(28, 10),
           @dr_count int,
           @res decimal(28, 10)
   
   SET @percent=0
   SET @all_percent=0
   SET @dr_count=0
   
   select @dr_count=COUNT(*) from Voditelj
   where Pozyvnoi=@Drnum 
   
   IF @dr_count=0 BEGIN
     SET @res=0
   END
    ELSE
   BEGIN
     select @percent=dr.Individ_procent from Voditelj dr
     where Pozyvnoi=@Drnum
     
     if @percent>0 begin
		SET @res=@percent
	 end
	 else
	 begin
		IF @daily_percent > 0 BEGIN
			SET @res=@daily_percent
		END ELSE BEGIN
			select @res=ovo.Procent_otchisleniya from Objekt_vyborki_otchyotnosti ovo
			where ovo.Tip_objekta='for_drivers';
		END;
	 end
     
   END  

   RETURN(@res)
END


GO
/****** Object:  UserDefinedFunction [dbo].[GetDrTariffPlanId]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE FUNCTION [dbo].[GetDrTariffPlanId]  (@driver_id int)
RETURNS int
AS
BEGIN
	DECLARE @tplan_id int, @gr_tplan_id int
   
	SET @tplan_id=-1
	SET @gr_tplan_id=-1
   
	select @tplan_id=ISNULL(PR_POLICY_ID,-1)  
	from Voditelj where BOLD_ID=@driver_id;
	
	SELECT @gr_tplan_id=ISNULL(gr.PR_POLICY_ID,-1) 
	FROM Voditelj dr, Gruppa_voditelei gr 
	WHERE dr.otnositsya_k_gruppe=gr.BOLD_ID AND
	dr.BOLD_ID=@driver_id;
   
	IF @tplan_id<=0 BEGIN
		SET @tplan_id=@gr_tplan_id
	END
	IF @tplan_id<=0 BEGIN
		SET @tplan_id=-1
	END 

	RETURN(@tplan_id)
END



GO
/****** Object:  UserDefinedFunction [dbo].[GetDrTaxTariff]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetDrTaxTariff]  (@dr_id int)
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE @percent decimal(28, 10),
           @dr_count int,
           @res decimal(28, 10)
   
   SET @percent=0
   SET @dr_count=0
   
   select @dr_count=COUNT(*) from Voditelj
   where BOLD_ID=@dr_id 
   
   IF @dr_count=0 BEGIN
     SET @res=0
   END
    ELSE
   BEGIN
     select @percent=dr.tmeter_tariff from Voditelj dr
     where BOLD_ID=@dr_id
     
     if @percent>0 begin
		SET @res=@percent
	 end
	 else
	 begin
		select @res=ovo.tmeter_tariff from Objekt_vyborki_otchyotnosti ovo
		where ovo.Tip_objekta='for_drivers'
	 end
     
   END  

   RETURN(@res)
END


GO
/****** Object:  UserDefinedFunction [dbo].[GetDrTimeTariff]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetDrTimeTariff]  (@dr_id int)
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE @percent decimal(28, 10),
           @dr_count int,
           @res decimal(28, 10)
   
   SET @percent=0
   SET @dr_count=0
   
   select @dr_count=COUNT(*) from Voditelj
   where BOLD_ID=@dr_id 
   
   IF @dr_count=0 BEGIN
     SET @res=0
   END
    ELSE
   BEGIN
     select @percent=dr.ftime_tariff from Voditelj dr
     where BOLD_ID=@dr_id
     
     if @percent>0 begin
		SET @res=@percent
	 end
	 else
	 begin
		select @res=ovo.ftime_tariff from Objekt_vyborki_otchyotnosti ovo
		where ovo.Tip_objekta='for_drivers'
	 end
     
   END  

   RETURN(@res)
END


GO
/****** Object:  UserDefinedFunction [dbo].[GetDrUseDynBByNum]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetDrUseDynBByNum]  ( @dr_num int)
RETURNS int
AS
BEGIN
   declare @res smallint
   
   SET @res=0
   
   if (@dr_num>0)
   begin
	select @res=use_dyn_balance   
	from Voditelj where 
		Pozyvnoi=@dr_num 
   end

   SET @res=ISNULL(@res,0);

   RETURN(@res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetDrUseDynBByNumWithSettParam]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetDrUseDynBByNumWithSettParam]  ( @dr_num int)
RETURNS int
AS
BEGIN
   declare @res smallint, @use_dr_bcounter int;
   
   SET @res=0
   
   SELECT @use_dr_bcounter=use_dr_balance_counter 
   FROM Objekt_vyborki_otchyotnosti 
   WHERE Tip_objekta='for_drivers';  

   SET @use_dr_bcounter=ISNULL(@use_dr_bcounter,0)
   
   if (@dr_num>0)
   begin
	select @res=use_dyn_balance   
	from Voditelj where 
		Pozyvnoi=@dr_num 
   end

   SET @res=ISNULL(@res,0);
   
   IF((@use_dr_bcounter=1) AND (@res=1))
   BEGIN
		SET @res=1;
   END
   ELSE
   BEGIN
		SET @res=0;
   END;

   RETURN(@res)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetDrWorkSumm]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetDrWorkSumm]  (@driver_id int)
RETURNS decimal(28, 10)
AS
BEGIN
	DECLARE @dr_summ decimal(28, 10),
		@stdt DATETIME, @enddt DATETIME,
		@tm DATETIME, @tm_str VARCHAR(255);

	SET @dr_summ=0;
	
	SELECT TOP 1 @tm_str=ISNULL(Cvet_nachavshihsya,'08:00:00') 
		FROM dbo.Objekt_vyborki_otchyotnosti
		WHERE Tip_objekta='for_drivers';

	SET @tm=CAST(@tm_str as DATETIME);

   
	IF ((CAST(CAST(GETDATE() AS INTEGER) AS DATETIME)+@tm)<GETDATE()) 
	BEGIN
		SET @stdt=CAST(CAST(CURRENT_TIMESTAMP AS INTEGER) AS DATETIME)+@tm;
		SET @enddt = CAST(CAST(DATEADD(DAY,1,
			CURRENT_TIMESTAMP) AS INTEGER) AS DATETIME) + @tm;
	END
	ELSE
	BEGIN
		SET @enddt=CAST(CAST(CURRENT_TIMESTAMP AS INTEGER) AS DATETIME)+@tm;
		SET @stdt = CAST(CAST(DATEADD(DAY,-1,
			CURRENT_TIMESTAMP) AS INTEGER) AS DATETIME) +@tm;
	END;

	select @dr_summ=SUM(Uslovn_stoim) from dbo.Zakaz
	where Zavershyon<>0 AND vypolnyaetsya_voditelem=@driver_id
	AND Konec_zakaza_data>=@stdt AND Konec_zakaza_data<=@enddt;

	--END TRY
	--BEGIN CATCH
	--	SET @dr_summ=0;
	--END CATCH;

	RETURN(ISNULL(@dr_summ,0))
END



GO
/****** Object:  UserDefinedFunction [dbo].[GetEndSector]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetEndSector]  ( @cust_num decimal)
RETURNS varchar(255)
AS
BEGIN 
   declare @ccount int, @res varchar(255)

    select @ccount=COUNT(*) from Zakaz c, Sektor_raboty s where 
     (c.nomer_zakaza=@cust_num) AND
     (c.konechnyi_sektor_raboty=s.BOLD_ID)
 
   if (@ccount>0) begin
       select @res=s.Podskazka_na_sektore from Zakaz c, Sektor_raboty s where 
         (c.nomer_zakaza=@cust_num) AND
         (c.konechnyi_sektor_raboty=s.BOLD_ID)
   end
   else begin
      SET @res='Не определён конеч. сектор'
   end

   RETURN(@res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetEndSectorNameByID]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetEndSectorNameByID]  ( @s_id int)
RETURNS varchar(255)
AS
BEGIN
   declare @res varchar(255)
   
  select @res=Naimenovanie   
   from Spravochnik where 
     BOLD_ID=@s_id  

   if @res=NULL begin
       SET @res='Не установлен сектор'
   end  

   RETURN(@res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetIntervalDrClientSuccessSMSCount]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO



CREATE FUNCTION [dbo].[GetIntervalDrClientSuccessSMSCount]  (@dr_num int, @start_dt datetime, @end_dt datetime)
RETURNS int
AS
BEGIN
  declare @res int

  SET @res=0;
 
   if (@dr_num>0) AND (@start_dt<@end_dt) begin
  
		select @res=COUNT(*) from Zakaz ord  
			where ord.Nachalo_zakaza_data>=@start_dt AND 
			ord.Konec_zakaza_data<=@end_dt AND 
			ord.CLIENT_SMS_SEND_STATE=2 AND 
			ord.Pozyvnoi_ustan=@dr_num;
   end

   RETURN(@res)
END



GO
/****** Object:  UserDefinedFunction [dbo].[GetIntervalDriverSuccessSMSCount]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE FUNCTION [dbo].[GetIntervalDriverSuccessSMSCount]  (@dr_num int, @start_dt datetime, @end_dt datetime)
RETURNS int
AS
BEGIN
  declare @res int

  SET @res=0;
 
   if (@dr_num>0) AND (@start_dt<@end_dt) begin
  
		select @res=COUNT(*) from Zakaz ord  
			where ord.Nachalo_zakaza_data>=@start_dt AND 
			ord.Konec_zakaza_data<=@end_dt AND 
			ord.DRIVER_SMS_SEND_STATE=2 AND 
			ord.Pozyvnoi_ustan=@dr_num;
   end

   RETURN(@res)
END


GO
/****** Object:  UserDefinedFunction [dbo].[GetJSONCompanyTOList]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetJSONCompanyTOList] (@company_id int)
RETURNS varchar(max)
AS
BEGIN
	declare @res varchar(max);
	DECLARE @CURSOR cursor;
	DECLARE @sid int, @scount int,
		@sname varchar(255), @counter int,
		@timetr decimal(28,10), @tmetrtr decimal(28,10),
		@os_coeff decimal(28,10), @os_comp decimal(28,10),
		@tplan_id int, @short_name varchar(20), 
		@miss_every_nkm int;
   
	SET @res=',"t_cnt":"';
	SET @counter = 0;
	
	SELECT @scount=COUNT(*)  
	FROM ORDER_TARIF ot INNER JOIN PRICE_POLICY pp ON 
	ot.PR_POLICY_ID = pp.id 
	WHERE pp.company_id = @company_id ;
	
	DECLARE @fmt_str1 varchar(50), @fmt_str2 varchar(50), 
		@fmt_str3 varchar(50), @fmt_str4 varchar(50), 
		@dist_part int, @dpart_tarif decimal(28, 10), 
		@stop_tarif decimal(28, 10), @dist_start int,
		@otarid int, @otplid int, @miss_every_nkm_json varchar(100);
	
	IF (@scount>0)
	BEGIN
	
	SET @res=@res+CAST(@scount as varchar(20))+'"';
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT ot.ID, ot.TARIF_NAME, ot.TIME_TARIF, ot.TMETER_TARIF, ot.PR_POLICY_ID, ot.SHORT_NAME, 
	ot.DISTANCE_PART, ot.DPART_TARIF, ot.STOP_TARIF, ot.DISTANCE_START, ot.outher_tarid, 
	ot.outher_tplid, ot.miss_every_nkm  
	FROM ORDER_TARIF ot INNER JOIN PRICE_POLICY pp 
	ON ot.PR_POLICY_ID = pp.id 
	WHERE pp.company_id = @company_id 
	ORDER BY ot.ID ASC;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @sid, @sname, @timetr, @tmetrtr, @tplan_id, @short_name, @dist_part, @dpart_tarif, @stop_tarif, @dist_start, @otarid, @otplid, @miss_every_nkm
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN

        
        IF (CHARINDEX('.',CAST(@tmetrtr as varchar(20)))+2<=
			LEN(CAST(@tmetrtr as varchar(20))))
		BEGIN
			SET @fmt_str1=LEFT(CAST(@tmetrtr as varchar(20)),
				CHARINDEX('.',CAST(@tmetrtr as varchar(20)))+2);
		END
		ELSE
		BEGIN
			SET @fmt_str1=CAST(@tmetrtr as varchar(20));
		END
		
		IF (CHARINDEX('.',CAST(@timetr as varchar(20)))+2<=
			LEN(CAST(@timetr as varchar(20))))
		BEGIN
			SET @fmt_str2=LEFT(CAST(@timetr as varchar(20)),
				CHARINDEX('.',CAST(@timetr as varchar(20)))+2);
		END
		ELSE
		BEGIN
			SET @fmt_str2=CAST(@timetr as varchar(20));
		END
		
		IF (CHARINDEX('.',CAST(@dpart_tarif as varchar(20)))+2<=
			LEN(CAST(@dpart_tarif as varchar(20))))
		BEGIN
			SET @fmt_str3=LEFT(CAST(@dpart_tarif as varchar(20)),
				CHARINDEX('.',CAST(@dpart_tarif as varchar(20)))+2);
		END
		ELSE
		BEGIN
			SET @fmt_str3=CAST(@dpart_tarif as varchar(20));
		END
		
		IF (CHARINDEX('.',CAST(@stop_tarif as varchar(20)))+2<=
			LEN(CAST(@stop_tarif as varchar(20))))
		BEGIN
			SET @fmt_str4=LEFT(CAST(@stop_tarif as varchar(20)),
				CHARINDEX('.',CAST(@stop_tarif as varchar(20)))+2);
		END
		ELSE
		BEGIN
			SET @fmt_str4=CAST(@stop_tarif as varchar(20));
		END

		SET @miss_every_nkm_json = ''
		IF @miss_every_nkm > 0 BEGIN
			SET @miss_every_nkm_json = '","mek'+
				CAST(@counter as varchar(20))+'":"'+
				CAST(@miss_every_nkm as varchar(20));
		END
		
        SET @res=@res+',"tid'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@sid as varchar(20))+'","tn'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@sname,'"',' '),'''',' ')+'","tmt'+
			CAST(@counter as varchar(20))+'":"'+
			@fmt_str2+'","txt'+
			CAST(@counter as varchar(20))+'":"'+
			@fmt_str1+'","ttpi'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@tplan_id as varchar(20))+'","tdip'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@dist_part as varchar(20))+'","tstds'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@dist_start as varchar(20))+'","tdpt'+
			CAST(@counter as varchar(20))+'":"'+
			@fmt_str3+'","tspt'+
			CAST(@counter as varchar(20))+'":"'+
			@fmt_str4+'","tshn'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@short_name,'"',' '),'''',' ')+'","otarid'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@otarid as varchar(20))+'","otplid'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@otplid as varchar(20)) + @miss_every_nkm_json + '"'+
			dbo.GetTarifAreaCoords(@sid, @counter);
        SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @sid, @sname, @timetr, @tmetrtr, @tplan_id, @short_name, @dist_part, @dpart_tarif, @stop_tarif, @dist_start, @otarid, @otplid, @miss_every_nkm
	END
	CLOSE @CURSOR
	
	END
	ELSE
	BEGIN
		SET @res=@res+'0"';	
	END;
	
	SELECT @scount=COUNT(*)  
	FROM ORDER_OPTION oo INNER JOIN PRICE_POLICY pp 
	ON oo.PR_POLICY_ID = pp.id 
	WHERE pp.company_id = @company_id ;
	
	SET @res=@res+',"op_cnt":"';
	SET @counter = 0;
	
	IF (@scount>0)
	BEGIN
	
	SET @res=@res+CAST(@scount as varchar(20))+'"';
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT oo.ID, oo.OPTION_NAME, oo.OSUMM_COEFF, oo.OS_COMPOSED, oo.PR_POLICY_ID, oo.SHORT_NAME  
	FROM ORDER_OPTION oo INNER JOIN PRICE_POLICY pp 
	ON oo.PR_POLICY_ID = pp.id 
	WHERE pp.company_id = @company_id  
	ORDER BY oo.ID ASC;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @sid, @sname, @os_coeff, @os_comp, @tplan_id, @short_name
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN

        IF (CHARINDEX('.',CAST(@os_coeff as varchar(20)))+2<=
			LEN(CAST(@os_coeff as varchar(20))))
		BEGIN
			SET @fmt_str1=LEFT(CAST(@os_coeff as varchar(20)),
				CHARINDEX('.',CAST(@os_coeff as varchar(20)))+2);
		END
		ELSE
		BEGIN
			SET @fmt_str1=CAST(@os_coeff as varchar(20));
		END
		IF (CHARINDEX('.',CAST(@os_comp as varchar(20)))+2<=
			LEN(CAST(@os_comp as varchar(20))))
		BEGIN
			SET @fmt_str2=LEFT(CAST(@os_comp as varchar(20)),
				CHARINDEX('.',CAST(@os_comp as varchar(20)))+2);
		END
		ELSE
		BEGIN
			SET @fmt_str2=CAST(@os_comp as varchar(20));
		END
        
        SET @res=@res+',"oid'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@sid as varchar(20))+'","on'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@sname,'"',' '),'''',' ')+'","oscf'+
			CAST(@counter as varchar(20))+'":"'+
			@fmt_str1+'","oscm'+
			CAST(@counter as varchar(20))+'":"'+
			@fmt_str2+'","otpi'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@tplan_id as varchar(20))+'","oshn'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@short_name,'"',' '),'''',' ')+'"';
        SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @sid, @sname, @os_coeff, @os_comp, @tplan_id, @short_name
	END
	CLOSE @CURSOR
	
	END
	ELSE
	BEGIN
		SET @res=@res+'0"';	
	END;
	
	-----------------------
	SELECT @scount=COUNT(*)  
	FROM PRICE_POLICY WHERE company_id = @company_id;
	
	SET @res=@res+',"tpl_cnt":"';
	SET @counter = 0;
	
	IF (@scount>0)
	BEGIN
	
	SET @res=@res+CAST(@scount as varchar(20))+'"';
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT ID, POLICY_NAME, SHORT_NAME  
	FROM PRICE_POLICY WHERE company_id = @company_id ORDER BY ID ASC;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @sid, @sname, @short_name
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN

        SET @res=@res+',"tpid'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@sid as varchar(20))+'","tpn'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@sname,'"',' '),'''',' ')+'","tpshn'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@short_name,'"',' '),'''',' ')+'"';
        SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @sid, @sname, @short_name
	END
	CLOSE @CURSOR
	
	END
	ELSE
	BEGIN
		SET @res=@res+'0"';	
	END;

	RETURN(@res)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetJSONDriverEarlyOrders]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetJSONDriverEarlyOrders] (@driver_id int)
RETURNS varchar(max)
AS
BEGIN
	DECLARE @res varchar(max);
	DECLARE @CURSOR cursor;
	DECLARE @sid int, @scount int,
		@sname varchar(255), @counter int, 
		@show_region_in_addr smallint,
		@show_phone_in_orders smallint,
		@send_wait_info smallint, @sector_id int, 
		@dr_count int, @sector_name varchar(255),
		@order_id int, @order_data varchar(255),
		@order_count int, @on_launch int, @busy int,
		@dr_status varchar(255), @rsync int, 
		@waiting int, @order_sort_dr_assign smallint,
		@tarif_id int, @opt_comb varchar(255), @tplan_id int, 
		@prev_price decimal(28,10), @cargo_desc varchar(5000), 
		@end_adres varchar(1000), @client_name varchar(500), 
		@prev_distance decimal(28,10), @prev_date datetime,
		@on_place smallint, @bonus_use decimal(28,10),
		@last_order_time datetime, @position int, @rclient_id int,
		@cl_comment varchar(255), @client_dist [decimal](18, 5),
		@current_time [int], @client_time [int], @client_prev_sum [decimal](18, 5),
		@cl_name varchar(255), @client_rate [decimal](18, 5), @client_rate_count [int],
        @dest_lat [decimal](18, 5), @dest_lon [decimal](18, 5),
        @first_stop_adr [varchar](255), @first_stop_lat [decimal](18, 5),
        @first_stop_lon [decimal](18, 5), @second_stop_adr [varchar](255),
        @second_stop_lat [decimal](18, 5), @second_stop_lon [decimal](18, 5),
        @rclient_lat varchar(50), @rclient_lon varchar(50);
   
	SET @res='{"command":"erlo"';
	SET @counter = 0;

	SELECT TOP 1 @show_phone_in_orders=ISNULL(show_phone_in_orders,0),
	@show_region_in_addr = show_region_in_addr,
	@send_wait_info=ISNULL(send_wait_info,0)
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT ord.BOLD_ID, ((CASE WHEN (@show_region_in_addr = 1 AND ISNULL(ds.name, '') <> '') THEN ('(' + ds.name + ') ') ELSE '' END) + ord.Telefon_klienta+
	':'+ ord.Adres_vyzova_vvodim + (CASE WHEN (ord.is_early = 1) THEN (' (' + CAST(ord.early_date as varchar(50)) + ') ') ELSE '' END)) as order_data,
	ord.REMOTE_SYNC, ord.WAITING, ord.TARIFF_ID, ord.OPT_COMB_STR, ord.PR_POLICY_ID,
	ord.prev_price, ord.cargo_desc, ord.end_adres, ord.client_name, ord.prev_distance,
	ord.Data_predvariteljnaya, ord.on_place, ord.bonus_use, ord.rclient_id, 
	ord.comment, ord.client_dist,
	ord.[current_time], ord.client_time, ord.client_prev_sum,
	ISNULL(rc.name, ''), ISNULL(rc.rate, 0), ISNULL(rc.rate_count, 0),
    ord.rclient_lat, ord.rclient_lon, ord.dest_lat, ord.dest_lon,
    ord.first_stop_adr, ord.first_stop_lat, ord.first_stop_lon,
    ord.second_stop_adr, ord.second_stop_lat, ord.second_stop_lon   
	FROM Zakaz ord LEFT JOIN DISTRICTS ds ON ord.district_id = ds.id
	LEFT JOIN REMOTE_CLIENTS rc ON ord.rclient_id = rc.id WHERE 
	ord.vypolnyaetsya_voditelem=@driver_id AND
	ord.Arhivnyi=0 AND ord.Soobsheno_voditelyu=0
	AND ord.Zavershyon=0 AND ord.NO_TRANSMITTING=0 
	AND ord.REMOTE_SET NOT IN(0,16,26,100) 
	AND ord.is_early = 1 AND ord.is_started_early = 0 
	--AND ord.REMOTE_SYNC = 0
	ORDER BY ISNULL(ord.early_date,GETDATE()) ASC;	/*Открываем курсор*/
	OPEN @CURSOR

	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @order_id, @order_data, @rsync, @waiting, @tarif_id, 
        @opt_comb, @tplan_id, @prev_price, @cargo_desc, @end_adres, @client_name, 
        @prev_distance, @prev_date, @on_place, @bonus_use, @rclient_id, @cl_comment, 
		@client_dist, @current_time, @client_time, @client_prev_sum,
		@cl_name, @client_rate, @client_rate_count,
        @rclient_lat, @rclient_lon, @dest_lat, @dest_lon,
        @first_stop_adr, @first_stop_lat, @first_stop_lon,
        @second_stop_adr, @second_stop_lat, @second_stop_lon;
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN

		SET @rclient_lat = ISNULL(@rclient_lat, '');
        	SET @rclient_lon = ISNULL(@rclient_lon, '');

		SET @res=@res+',"oid'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@order_id as varchar(20))+'","odt'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@order_data,'"',' '),'''',' ')+'"';
		IF (@rsync<>0)
		BEGIN
			SET @res=@res+',"sn'+
			CAST(@counter as varchar(20))+'":"y"';
		END;
		IF (@send_wait_info=1)
		BEGIN
			SET @res=@res+',"wtr'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@waiting as varchar(20))+'"';
		END;
		IF (@tarif_id<>0)
		BEGIN
			SET @res=@res+',"tar'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@tarif_id as varchar(20))+'"';
		END;

		SET @opt_comb=ISNULL(@opt_comb,'-');
		IF (@opt_comb='')
		BEGIN
			SET @opt_comb='-';
		END;

		SET @res=@res+',"oo'+
		CAST(@counter as varchar(20))+'":"'+
		@opt_comb+'"';

		IF (@tplan_id>=0)
		BEGIN
			SET @res=@res+',"otpid'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@tplan_id as varchar(20))+'"';
		END;

		IF (@prev_price>0)
		BEGIN
			SET @res=@res+',"oppr'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@prev_price))+'"';
		END;

		IF (@prev_distance>0)
		BEGIN
			SET @res=@res+',"opdn'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@prev_distance))+'"';
		END;

		IF (@bonus_use>0)
		BEGIN
			SET @res=@res+',"obus'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@bonus_use))+'"';
		END;

		IF (@cargo_desc<>'')
		BEGIN
			SET @res=@res+',"ocrd'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@cargo_desc,'"',' '),'''',' ')+'"';
		END;

		IF (ISNULL(@end_adres,'')<>'')
		BEGIN
			SET @res=@res+',"oena'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(ISNULL(@end_adres,''),'"',' '),'''',' ')+'"';
		END;

		IF (ISNULL(@client_name,'')<>'')
		BEGIN
			SET @res=@res+',"ocln'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(ISNULL(@client_name,''),'"',' '),'''',' ')+'"';
		END;

		SET @res=@res+',"oprd'+
		CAST(@counter as varchar(20))+'":"'+
		CAST(DATEDIFF(second,{d '1970-01-01'},@prev_date) AS varchar(100))+'"';

		SET @res = @res + ',"dopl' +
			CAST(@counter as varchar(20)) + '":"' +
			CAST(@on_place as varchar(20)) + '"';

        SET @res = @res + ',"rcid' +
			CAST(@counter as varchar(20)) + '":"' +
			CAST(@rclient_id as varchar(20)) + '"';

		SET @res=@res+',"cldst'+
		CAST(@counter as varchar(20))+'":"'+
		convert(varchar,convert(decimal(18,5),@client_dist))+'"';

		SET @res=@res+',"clpsm'+
		CAST(@counter as varchar(20))+'":"'+
		convert(varchar,convert(decimal(18,5),@client_prev_sum))+'"';

		SET @res=@res+',"clcmm'+
		CAST(@counter as varchar(20))+'":"'+
		@cl_comment+'"';

		SET @res=@res+',"crrtm'+
		CAST(@counter as varchar(20))+'":"'+
		CAST(@current_time as varchar(20))+'"';

		SET @res=@res+',"cltm'+
		CAST(@counter as varchar(20))+'":"'+
		CAST(@client_time as varchar(20))+'"';

		SET @res=@res+',"rclnm'+
		CAST(@counter as varchar(20))+'":"'+
		REPLACE(REPLACE(@cl_name,'"',' '),'''',' ')+'"';

		SET @res=@res+',"clrat'+
		CAST(@counter as varchar(20))+'":"'+
		convert(varchar,convert(decimal(18,5),@client_rate))+'"';

        SET @res=@res+',"stlat'+
			CAST(@counter as varchar(20))+'":"'+
			@rclient_lat+'"';

            SET @res=@res+',"stlon'+
			CAST(@counter as varchar(20))+'":"'+
			@rclient_lon+'"';

            SET @res=@res+',"dlat'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(18,5),@dest_lat))+'"';

            SET @res=@res+',"dlon'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(18,5),@dest_lon))+'"';

            SET @res=@res+',"fsadr'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(ISNULL(@first_stop_adr,''),'"',' '),'''',' ')+'"';

            SET @res=@res+',"fslat'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(18,5),@first_stop_lat))+'"';

            SET @res=@res+',"fslon'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(18,5),@first_stop_lon))+'"';

            SET @res=@res+',"ssadr'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(ISNULL(@second_stop_adr,''),'"',' '),'''',' ')+'"';

            SET @res=@res+',"sslat'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(18,5),@second_stop_lat))+'"';

            SET @res=@res+',"sslon'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(18,5),@second_stop_lon))+'"';

		SET @res=@res+',"crcnt'+
		CAST(@counter as varchar(20))+'":"'+
		CAST(@client_rate_count as varchar(20))+'"';
			
		SET @counter=@counter+1;
			/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @order_id, @order_data, @rsync, @waiting, @tarif_id, 
            @opt_comb, @tplan_id, @prev_price, @cargo_desc, @end_adres, @client_name, 
            @prev_distance, @prev_date, @on_place, @bonus_use, @rclient_id, @cl_comment, 
			@client_dist, @current_time, @client_time, @client_prev_sum,
			@cl_name, @client_rate, @client_rate_count,
            @rclient_lat, @rclient_lon, @dest_lat, @dest_lon,
            @first_stop_adr, @first_stop_lat, @first_stop_lon,
            @second_stop_adr, @second_stop_lat, @second_stop_lon;
	END
	CLOSE @CURSOR
	

	SET @res = @res + ',"cn":"' + CAST(@counter as varchar(20)) + 
		'","msg_end":"ok"}';

	RETURN(@res)
END


GO
/****** Object:  UserDefinedFunction [dbo].[GetJSONDriverOrdersBCasts]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetJSONDriverOrdersBCasts] (@driver_id int)
RETURNS varchar(max)
AS
BEGIN
	declare @res varchar(max);
	DECLARE @CURSOR cursor;
	DECLARE @order_id int, @order_adres varchar(255), @end_sect int,
		@counter int, @prev_price decimal(28,10), @cargo_desc varchar(5000), 
		@end_adres varchar(1000), @client_name varchar(500), 
		@prev_distance decimal(28,10), @prev_date datetime, 
		@rating_bonus decimal(18, 5), @for_all_sectors smallint,
		@company_id int, @show_region_in_addr smallint,
		@cl_name varchar(255), @client_rate [decimal](18, 5), @client_rate_count [int];

	SET @show_region_in_addr = 0;

	SELECT TOP 1 @show_region_in_addr = show_region_in_addr
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
   
	SET @res='{"command":"ford"';
	SET @counter = 0;
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT ord.BOLD_ID, ((CASE WHEN (@show_region_in_addr = 1 AND ISNULL(ds.name, '') <> '') THEN ('(' + ds.name + ') ') ELSE '' END) + 
	ord.Adres_vyzova_vvodim + (CASE WHEN (ord.is_early = 1) THEN (' (' + CAST(ord.early_date as varchar(50)) + ') ') ELSE '' END)) as Adres_vyzova_vvodim, ord.SECTOR_ID,
	ord.prev_price, ord.cargo_desc, ord.end_adres, ord.client_name, 
	ord.prev_distance, ord.Data_predvariteljnaya, ord.driver_rating_diff,
	ord.for_all_sectors, ISNULL(ds.company_id, 0) as company_id,
	ISNULL(rc.name, ''), ISNULL(rc.rate, 0), ISNULL(rc.rate_count, 0)  FROM Zakaz ord
	INNER JOIN DR_ORD_PRIORITY dop ON ord.BOLD_ID=dop.order_id 
	LEFT JOIN DISTRICTS ds ON ord.district_id = ds.id
	LEFT JOIN REMOTE_CLIENTS rc ON ord.rclient_id = rc.id
	WHERE ord.Zavershyon=0 AND ord.REMOTE_SET>0 AND ord.REMOTE_SET<8 
	AND dop.priority<=0 AND dop.driver_id=@driver_id;
	--AND dop.priority>=-1
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @order_id, @order_adres, @end_sect, @prev_price, @cargo_desc, 
	@end_adres, @client_name, @prev_distance, @prev_date, @rating_bonus, @for_all_sectors, 
	@company_id, @cl_name, @client_rate, @client_rate_count
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN
        SET @res=@res+',"id'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@order_id as varchar(20))+'","oad'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@order_adres,'"',' '),'''',' ')+'","oes'+
			CAST(@counter as varchar(20))+'":"'+CAST(@end_sect as varchar(20))+'"';

		IF (@rating_bonus>0)
			BEGIN
			SET @res=@res+',"orb'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@rating_bonus))+'"';
			END;

		IF (@for_all_sectors>0)
			BEGIN
			SET @res=@res+',"fas'+
			CAST(@counter as varchar(20))+'":"1"';
			END;

		IF (@company_id>0)
			BEGIN
			SET @res=@res+',"cmp'+
			CAST(@counter as varchar(20))+'":"' + 
			CAST(@company_id as varchar(20)) + '"';
			END;
        
		IF (@prev_price>0)
			BEGIN
			SET @res=@res+',"oppr'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@prev_price))+'"';
			END;

			IF (@prev_distance>0)
			BEGIN
			SET @res=@res+',"opdn'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@prev_distance))+'"';
			END;

			IF (@cargo_desc<>'')
			BEGIN
			SET @res=@res+',"ocrd'+
			CAST(@counter as varchar(20))+'":"'+
			@cargo_desc+'"';
			END;

			IF (ISNULL(@end_adres,'')<>'')
			BEGIN
			SET @res=@res+',"oena'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(ISNULL(@end_adres,''),'"',' '),'''',' ')+'"';
			END;

			IF (ISNULL(@client_name,'')<>'')
			BEGIN
			SET @res=@res+',"ocln'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(ISNULL(@client_name,''),'"',' '),'''',' ')+'"';
			END;

			SET @res=@res+',"oprd'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(DATEDIFF(second,{d '1970-01-01'},@prev_date) AS varchar(100))+'"';

			SET @res=@res+',"rclnm'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@cl_name,'"',' '),'''',' ')+'"';

			SET @res=@res+',"clrat'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(18,5),@client_rate))+'"';

			SET @res=@res+',"crcnt'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@client_rate_count as varchar(20))+'"';
		
		SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @order_id, @order_adres, @end_sect, @prev_price, @cargo_desc, 
		@end_adres, @client_name, @prev_distance, @prev_date, @rating_bonus, @for_all_sectors, 
		@company_id, @cl_name, @client_rate, @client_rate_count
	END
	CLOSE @CURSOR
	
	SET @res=@res+',"ocnt":"'+
		CAST(@counter as varchar(20))+'","msg_end":"ok"}';

	IF @counter = 0 
	BEGIN
		SET @res = '';
	END

	RETURN(@res)
END


GO
/****** Object:  UserDefinedFunction [dbo].[GetJSONDriverSettings]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetJSONDriverSettings]  ( @driver_id int)
RETURNS varchar(max)
AS
BEGIN
	declare @en_moving int, @use_gps smallint,
		@gtss_acct_id varchar(50), @gtss_dev_id varchar(50), 
		@reqgps smallint;
	DECLARE @curr_mver INT, @min_mver int, @mand_upd int, 
		@addit_rparams varchar(4000), @dr_addit_rparams varchar(500), @gps_srv_adr varchar(255),
		@gps_instr varchar(1000), @ftime_tariff decimal(28,10), 
		@tmeter_tariff decimal(28,10), @use_tmeter smallint,
		@use_nlocserv smallint, @use_bloc smallint, 
		@tmetr_instr varchar(1000), @tplan_id int, @gr_tplan_id int,
		@curr_sh varchar(50), @lock_free_orders_info smallint,
		@auto_detect_driver_sector smallint, @company_id int,
		@use_opengts_monitoring smallint, @on_gps_signaling smallint,
		@dnts_wait_oth_company smallint, @dnts_wait_wtout_company smallint,
		@auto_show_wait_dialog smallint, @wait_dlg_with_sectors smallint,
		@alart_order_confirm smallint, @confirm_lineout_on_exit smallint,
		@hide_other_sect_wait_orders smallint, @dont_wait_in_busy_state smallint,
		@show_all_sectwait_manual smallint, @taxm_block_wtout_onplace smallint,
		@start_free_distance int, @start_free_time int, 
		@dispatcher_phone varchar(50), @reserved_ip varchar(50),
        @load_driver_data_with_wsocket smallint,
        @prev_summ_over_taxometr smallint, @taxometr_over_small_prev_summ smallint,
        @dont_minimize_calc_price smallint, @disable_taxometr_report_edit smallint,
        @max_order_price int;
	
	SELECT TOP 1 @curr_mver=ISNULL(curr_mob_version,2102),
	@min_mver=ISNULL(min_mob_version,2102),
	@mand_upd=ISNULL(mandatory_update,0),
	@addit_rparams=ISNULL(addit_rem_params,''),
	@gps_srv_adr=ISNULL(GPS_SRV_ADR,''),
	@curr_sh=ISNULL(currency_short,''),
	@lock_free_orders_info = lock_free_orders_info,
	@auto_detect_driver_sector = auto_detect_driver_sector,
	@use_opengts_monitoring = use_opengts_monitoring, 
	@on_gps_signaling = on_gps_signaling,
	@dnts_wait_oth_company = dnts_wait_oth_company, 
	@dnts_wait_wtout_company = dnts_wait_wtout_company,
	@auto_show_wait_dialog = auto_show_wait_dialog, 
	@wait_dlg_with_sectors = wait_dlg_with_sectors,
	@alart_order_confirm = alart_order_confirm, 
	@confirm_lineout_on_exit = confirm_lineout_on_exit,
	@hide_other_sect_wait_orders = hide_other_sect_wait_orders, 
	@dont_wait_in_busy_state = dont_wait_in_busy_state,
	@show_all_sectwait_manual = show_all_sectwait_manual, 
	@taxm_block_wtout_onplace = taxm_block_wtout_onplace,
	@start_free_distance = start_free_distance, 
	@start_free_time = start_free_time, 
	@dispatcher_phone = dispatcher_phone, 
	@reserved_ip = reserved_ip,
    @load_driver_data_with_wsocket = load_driver_data_with_wsocket,
    @prev_summ_over_taxometr = prev_summ_over_taxometr, 
    @taxometr_over_small_prev_summ = taxometr_over_small_prev_summ,
    @dont_minimize_calc_price = dont_minimize_calc_price, 
    @disable_taxometr_report_edit = disable_taxometr_report_edit,
    @max_order_price = max_order_price
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
   
	SET @en_moving=0;
   
	select @en_moving=ISNULL(EN_MOVING,0),
		@use_gps=ISNULL(USE_GPS,0),
		@gtss_acct_id=ISNULL(GTSS_ACCT_ID,''),
		@gtss_dev_id=ISNULL(GTSS_DEV_ID,''),
		@use_tmeter=ISNULL(use_tmeter,-1), 
		@use_nlocserv=ISNULL(use_nlocserv,-1),
		@use_bloc=ISNULL(use_bloc,-1),
		@tplan_id=PR_POLICY_ID,
		@dr_addit_rparams=ISNULL(addit_rem_params,''),
		@reqgps=require_gps,
		@company_id = ISNULL(otnositsya_k_gruppe, 0)   
	from Voditelj where BOLD_ID=@driver_id;
	
	SELECT @gr_tplan_id=gr.PR_POLICY_ID 
	FROM Voditelj dr, Gruppa_voditelei gr 
	WHERE dr.otnositsya_k_gruppe=gr.BOLD_ID AND
	dr.BOLD_ID=@driver_id;
	
	SET @tplan_id=ISNULL(@tplan_id, -1);
	SET @gr_tplan_id=ISNULL(@gr_tplan_id, -1);
	SET @reqgps=ISNULL(@reqgps, 0);
	
	SET @tmetr_instr='';
	if(@use_tmeter=0)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"iuse_tm":"no",';
	END;
	if(@use_tmeter=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"iuse_tm":"yes",';
	END;
	if(@use_nlocserv=0)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"iuse_nls":"no",';
	END;
	if(@use_nlocserv=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"iuse_nls":"yes",';
	END;
	if(@use_bloc=0)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"iuse_bl":"no",';
	END;
	if(@use_bloc=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"iuse_bl":"yes",';
	END;
	
	if(@reqgps=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"reqgps":"yes",';
	END;

	if(@use_opengts_monitoring=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"use_gps":"yes",';
	END
	ELSE
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"use_gps":"no",';
	END; 
	
	if(@on_gps_signaling=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"SCCR":"yes",';
	END
	ELSE
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"SCCR":"no",';
	END;
		
	if(@dnts_wait_oth_company=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"DWOC":"yes",';
	END
	ELSE
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"DWOC":"no",';
	END; 
	
	if(@dnts_wait_wtout_company=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"DWWC":"yes",';
	END
	ELSE
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"DWWC":"no",';
	END;
		
	if(@auto_show_wait_dialog=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"WDLGA":"yes",';
	END
	ELSE
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"WDLGA":"no",';
	END; 
	
	if(@wait_dlg_with_sectors=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"WDLWS":"yes",';
	END
	ELSE
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"WDLWS":"no",';
	END;
		
	if(@alart_order_confirm=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"ALOC":"yes",';
	END
	ELSE
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"ALOC":"no",';
	END;
	
	if(@confirm_lineout_on_exit=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"cloe":"yes",';
	END
	ELSE
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"cloe":"no",';
	END;
		
	if(@hide_other_sect_wait_orders=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"HOSWO":"yes",';
	END
	ELSE
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"HOSWO":"no",';
	END;
	
	if(@dont_wait_in_busy_state=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"DWIBS":"yes",';
	END
	ELSE 
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"DWIBS":"no",';
	END;
		
	if(@show_all_sectwait_manual=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"SASWM":"yes",';
	END
	ELSE 
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"SASWM":"no",';
	END;
	
	if(@taxm_block_wtout_onplace=1)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"TBWOP":"yes",';
	END
	ELSE 
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"TBWOP":"no",';
	END;

    IF @load_driver_data_with_wsocket = 1 BEGIN
		SET @tmetr_instr=@tmetr_instr+'"ldfs":"yes",';
	END
	ELSE 
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"ldfs":"no",';
	END;
        
    IF @prev_summ_over_taxometr = 1 BEGIN
    	SET @tmetr_instr=@tmetr_instr+'"psot":"yes",';
	END
	ELSE 
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"psot":"no",';
	END;

    IF @taxometr_over_small_prev_summ = 1 BEGIN
    	SET @tmetr_instr=@tmetr_instr+'"tosp":"yes",';
	END
	ELSE 
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"tosp":"no",';
	END;

    IF @dont_minimize_calc_price = 1 BEGIN
    	SET @tmetr_instr=@tmetr_instr+'"dmcp":"yes",';
	END
	ELSE 
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"dmcp":"no",';
	END;

    IF @disable_taxometr_report_edit = 1 BEGIN
    	SET @tmetr_instr=@tmetr_instr+'"dtre":"1",';
	END
	ELSE 
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"dtre":"0",';
	END;

    SET @tmetr_instr=@tmetr_instr+'"MOPR":"' + 
        CAST(@max_order_price as varchar(20)) + '",';
		
	if(@start_free_distance > 0)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"stbdist":"' + CAST(@start_free_distance as varchar(20)) + '",';
	END; 
	
	if(@start_free_time > 0)
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"stbctm":"' + CAST(@start_free_time as varchar(20)) + '",';
	END; 
		
	if(@dispatcher_phone <> '')
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"DSPH":"' + @dispatcher_phone + '",';
	END; 
	
	if(@reserved_ip <> '')
	BEGIN
		SET @tmetr_instr=@tmetr_instr+'"ip2":"' + @reserved_ip + '",';
	END;

	if (@lock_free_orders_info = 1)
	BEGIN
		SET @tmetr_instr = @tmetr_instr+'"LCFOI":"yes",';
	END
	ELSE BEGIN
		SET @tmetr_instr = @tmetr_instr+'"LCFOI":"no",';
	END;

	if (@auto_detect_driver_sector = 1)
	BEGIN
		SET @tmetr_instr = @tmetr_instr+'"ADS":"yes",';
	END
	ELSE BEGIN
		SET @tmetr_instr = @tmetr_instr+'"ADS":"no",';
	END;

	SET @tmetr_instr = @tmetr_instr+'"cmpi":"' + CAST(@company_id as varchar(20)) + '",';
	
	SELECT @ftime_tariff=ISNULL(dbo.GetDrTimeTariff(@driver_id),0);
	SELECT @tmeter_tariff=ISNULL(dbo.GetDrTaxTariff(@driver_id),0);
	
	SET @gps_instr='"use_gps":"no",';
	if (@use_gps=1)
	BEGIN
		SET @gps_instr='"use_gps":"yes",';
		if (ISNULL(@gps_srv_adr,'')<>'')
		BEGIN
			SET @gps_instr=@gps_instr+
				'"gps_srv_adr":"'+@gps_srv_adr+'",';
		END;
		if ((ISNULL(@gtss_acct_id,'')<>'') AND 
			(ISNULL(@gtss_acct_id,'')<>'demo'))
		BEGIN
			SET @gps_instr=@gps_instr+
				'"gps_acc_id":"'+@gtss_acct_id+'",';
		END;
		if ((ISNULL(@gtss_dev_id,'')<>'') AND 
			(ISNULL(@gtss_dev_id,'')<>'demo'))
		BEGIN
			SET @gps_instr=@gps_instr+
				'"gps_dev_id":"'+@gtss_dev_id+'",';
		END;
	END;  

	RETURN('{"command":"sets","en_moving":"'+
		CAST(@en_moving as varchar(20))+'","curr_mver":"'+
		CAST(@curr_mver as varchar(20))+'","min_mver":"'+
		CAST(@min_mver as varchar(20))+'","mand_upd":"'+
		CAST(@mand_upd as varchar(20))+'","fttar":"'+
		CAST(@ftime_tariff as varchar(20))+'","txtar":"'+
		CAST(@tmeter_tariff as varchar(20))+'","tplid":"'+
		CAST(@tplan_id as varchar(20))+'","cur_shr":"'+
		CAST(@curr_sh as varchar(20))+'","grtpi":"'+
		CAST(@gr_tplan_id as varchar(20))+'",'+
		@tmetr_instr+@gps_instr+@addit_rparams+@dr_addit_rparams+
		'"msg_end":"ok"}')
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetJSONDriversList]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetJSONDriversList] ()
RETURNS varchar(max)
AS
BEGIN
	declare @res varchar(max);
	DECLARE @CURSOR cursor;
	DECLARE @sector_id int, @sector_count int,
		@sector_name varchar(255), @counter INT,
		@online_dr_count INT, @busy_dr_count INT,
		@onlaunch_count int;
   
	SET @res='{"command":"s_lst","s_cnt":"';
	SET @counter = 0;
	
	SELECT @online_dr_count=COUNT(*) FROM
	Voditelj WHERE V_rabote>0;
	
	SELECT @busy_dr_count=COUNT(*) FROM
	Voditelj WHERE V_rabote>0 AND Zanyat_drugim_disp>0;
	
	SELECT @busy_dr_count=COUNT(*) FROM
	Voditelj WHERE V_rabote>0 AND Zanyat_drugim_disp>0;
	
	SELECT @sector_count=COUNT(*)  
	FROM Sektor_raboty ws JOIN Spravochnik dict 
	ON ws.BOLD_ID=dict.BOLD_ID;
	
	IF (@sector_count>0)
	BEGIN
	
	SET @res=@res+CAST(@sector_count as varchar(20))+'"';
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT ws.BOLD_ID, dict.Naimenovanie  
	FROM Sektor_raboty ws JOIN Spravochnik dict 
	ON ws.BOLD_ID=dict.BOLD_ID;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @sector_id, @sector_name
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN

        SET @res=@res+',"id'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@sector_id as varchar(20))+'","nm'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@sector_name,'"',' '),'''',' ')+'"';
        SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @sector_id, @sector_name
	END
	CLOSE @CURSOR
	
	SET @res=@res+',"msg_end":"ok"}';
	
	END
	ELSE
	BEGIN
		SET @res=@res+'0","msg_end":"ok"}';	
	END;

	RETURN(@res)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetJSONOrdersBCasts]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetJSONOrdersBCasts] ()
RETURNS varchar(max)
AS
BEGIN
	declare @res varchar(max);
	DECLARE @CURSOR cursor;
	DECLARE @order_id int, @order_adres varchar(255), @end_sect int,
		@counter int, @prev_price decimal(28,10), @cargo_desc varchar(5000), 
		@end_adres varchar(1000), @client_name varchar(500), 
		@prev_distance decimal(28,10), @prev_date datetime,
		@rating_bonus decimal(18, 5), @for_all_sectors smallint,
		@company_id int, @show_region_in_addr smallint,
		@cl_comment varchar(255), @client_dist [decimal](18, 5),
		@current_time [int], @client_time [int], @client_prev_sum [decimal](18, 5),
		@cl_name varchar(255), @client_rate [decimal](18, 5), @client_rate_count [int],
        @dest_lat [decimal](18, 5), @dest_lon [decimal](18, 5),
        @first_stop_adr [varchar](255), @first_stop_lat [decimal](18, 5),
        @first_stop_lon [decimal](18, 5), @second_stop_adr [varchar](255),
        @second_stop_lat [decimal](18, 5), @second_stop_lon [decimal](18, 5),
        @rclient_lat varchar(50), @rclient_lon varchar(50);

	SET @show_region_in_addr = 0;

	SELECT TOP 1 @show_region_in_addr = show_region_in_addr
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
   
	SET @res='{"command":"ford"';
	SET @counter = 0;
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT ord.BOLD_ID, ((CASE WHEN (@show_region_in_addr = 1 AND ISNULL(ds.name, '') <> '') THEN ('(' + ds.name + ') ') ELSE '' END) + 
	ord.Adres_vyzova_vvodim + (CASE WHEN (ord.is_early = 1) THEN (' (' + CAST(ord.early_date as varchar(50)) + ') ') ELSE '' END)) as Adres_vyzova_vvodim, ord.SECTOR_ID,
	ord.prev_price, ord.cargo_desc, ord.end_adres, ord.client_name, ord.prev_distance,
	ord.Data_predvariteljnaya, ord.driver_rating_diff, ord.for_all_sectors,
	ISNULL(ds.company_id, 0) as company_id, 
	ord.comment, ord.client_dist,
	ord.[current_time], ord.client_time, ord.client_prev_sum,
	ISNULL(rc.name, ''), ISNULL(rc.rate, 0), ISNULL(rc.rate_count, 0),
    ord.rclient_lat, ord.rclient_lon, ord.dest_lat, ord.dest_lon,
    ord.first_stop_adr, ord.first_stop_lat, ord.first_stop_lon,
    ord.second_stop_adr, ord.second_stop_lat, ord.second_stop_lon  
    FROM Zakaz ord
	LEFT JOIN DISTRICTS ds ON ord.district_id = ds.id 
	LEFT JOIN REMOTE_CLIENTS rc ON ord.rclient_id = rc.id
	WHERE Zavershyon=0 AND REMOTE_SET>0 AND REMOTE_SET<8;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @order_id, @order_adres, @end_sect, @prev_price, @cargo_desc, 
	@end_adres, @client_name, @prev_distance, @prev_date, @rating_bonus, @for_all_sectors, 
	@company_id, @cl_comment, @client_dist, @current_time, @client_time, @client_prev_sum,
	@cl_name, @client_rate, @client_rate_count,
    @rclient_lat, @rclient_lon, @dest_lat, @dest_lon,
    @first_stop_adr, @first_stop_lat, @first_stop_lon,
    @second_stop_adr, @second_stop_lat, @second_stop_lon
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN

	SET @rclient_lat = ISNULL(@rclient_lat, '');
        SET @rclient_lon = ISNULL(@rclient_lon, '');

        SET @res=@res+',"id'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@order_id as varchar(20))+'","oad'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@order_adres,'"',' '),'''',' ')+'","oes'+
			CAST(@counter as varchar(20))+'":"'+CAST(@end_sect as varchar(20))+'"';
        
		IF (@rating_bonus>0)
			BEGIN
			SET @res=@res+',"orb'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@rating_bonus))+'"';
			END;

		IF (@for_all_sectors>0)
			BEGIN
			SET @res=@res+',"fas'+
			CAST(@counter as varchar(20))+'":"1"';
			END;

		IF (@company_id>0)
			BEGIN
			SET @res=@res+',"cmp'+
			CAST(@counter as varchar(20))+'":"' + 
			CAST(@company_id as varchar(20)) + '"';
			END;

		IF (@prev_price>0)
			BEGIN
			SET @res=@res+',"oppr'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@prev_price))+'"';
			END;

			IF (@prev_distance>0)
			BEGIN
			SET @res=@res+',"opdn'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(8,2),@prev_distance))+'"';
			END;

			IF (@cargo_desc<>'')
			BEGIN
			SET @res=@res+',"ocrd'+
			CAST(@counter as varchar(20))+'":"'+
			@cargo_desc+'"';
			END;

			IF (ISNULL(@end_adres,'')<>'')
			BEGIN
			SET @res=@res+',"oena'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(ISNULL(@end_adres,''),'"',' '),'''',' ')+'"';
			END;

			IF (ISNULL(@client_name,'')<>'')
			BEGIN
			SET @res=@res+',"ocln'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(ISNULL(@client_name,''),'"',' '),'''',' ')+'"';
			END;

			SET @res=@res+',"cldst'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(18,5),@client_dist))+'"';

			SET @res=@res+',"clpsm'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(18,5),@client_prev_sum))+'"';

			SET @res=@res+',"clcmm'+
			CAST(@counter as varchar(20))+'":"'+
			@cl_comment+'"';

			SET @res=@res+',"crrtm'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@current_time as varchar(20))+'"';

			SET @res=@res+',"cltm'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@client_time as varchar(20))+'"';

			SET @res=@res+',"rclnm'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@cl_name,'"',' '),'''',' ')+'"';

			SET @res=@res+',"clrat'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(18,5),@client_rate))+'"';

			SET @res=@res+',"crcnt'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@client_rate_count as varchar(20))+'"';

            SET @res=@res+',"stlat'+
			CAST(@counter as varchar(20))+'":"'+
			@rclient_lat+'"';

            SET @res=@res+',"stlon'+
			CAST(@counter as varchar(20))+'":"'+
			@rclient_lon+'"';

            SET @res=@res+',"dlat'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(18,5),@dest_lat))+'"';

            SET @res=@res+',"dlon'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(18,5),@dest_lon))+'"';

            SET @res=@res+',"fsadr'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(ISNULL(@first_stop_adr,''),'"',' '),'''',' ')+'"';

            SET @res=@res+',"fslat'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(18,5),@first_stop_lat))+'"';

            SET @res=@res+',"fslon'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(18,5),@first_stop_lon))+'"';

            SET @res=@res+',"ssadr'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(ISNULL(@second_stop_adr,''),'"',' '),'''',' ')+'"';

            SET @res=@res+',"sslat'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(18,5),@second_stop_lat))+'"';

            SET @res=@res+',"sslon'+
			CAST(@counter as varchar(20))+'":"'+
			convert(varchar,convert(decimal(18,5),@second_stop_lon))+'"';

			SET @res=@res+',"oprd'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(DATEDIFF(second,{d '1970-01-01'},@prev_date) AS varchar(100))+'"';
		
		SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @order_id, @order_adres, @end_sect, @prev_price, 
		@cargo_desc, @end_adres, @client_name, @prev_distance, @prev_date, @rating_bonus, 
		@for_all_sectors, @company_id, @cl_comment, 
		@client_dist, @current_time, @client_time, @client_prev_sum,
		@cl_name, @client_rate, @client_rate_count,
        @rclient_lat, @rclient_lon, @dest_lat, @dest_lon,
        @first_stop_adr, @first_stop_lat, @first_stop_lon,
        @second_stop_adr, @second_stop_lat, @second_stop_lon
	END
	CLOSE @CURSOR
	
	SET @res=@res+',"ocnt":"'+
		CAST(@counter as varchar(20))+'","msg_end":"ok"}';

	RETURN(@res)
END


GO
/****** Object:  UserDefinedFunction [dbo].[GetJSONSectorList]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetJSONSectorList] (@driver_id int)
RETURNS varchar(max)
AS
BEGIN
	declare @res varchar(max);
	DECLARE @CURSOR cursor;
	DECLARE @company_id int, @sector_id int, @sector_count int,
		@sector_name varchar(255), @counter int, @for_all smallint, 
		@scompany_id int;
   
	SET @res='{"command":"s_lst","s_cnt":"';
	SET @counter = 0;

	SELECT @company_id=otnositsya_k_gruppe  
	FROM Voditelj
	WHERE BOLD_ID = @driver_id;

	SET @company_id = ISNULL(@company_id, 0);
	
	SELECT @sector_count=COUNT(*)  
	FROM Sektor_raboty ws JOIN Spravochnik dict 
	ON ws.BOLD_ID=dict.BOLD_ID
	WHERE ws.company_id = @company_id OR ws.company_id < 0;

	IF (@sector_count>0)
	BEGIN
	
	SET @res=@res+CAST(@sector_count as varchar(20))+'"';
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT ws.BOLD_ID, dict.Naimenovanie, ws.for_all, ws.company_id  
	FROM Sektor_raboty ws JOIN Spravochnik dict 
	ON ws.BOLD_ID=dict.BOLD_ID
	WHERE ws.company_id = @company_id OR ws.company_id < 0;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @sector_id, @sector_name, @for_all, @scompany_id
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN

        SET @res=@res+',"id'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@sector_id as varchar(20));

		IF (@for_all = 1) BEGIN
		SET @res=@res + '","fal'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@for_all as varchar(20));
		END;

		IF (@scompany_id > 0) BEGIN
		SET @res=@res + '","cm'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@scompany_id as varchar(20));
		END;

		SET @res=@res + '","nm'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@sector_name,'"',' '),'''',' ')+'"'+
			dbo.GetSectorAreaCoords(@sector_id, @counter);
        SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @sector_id, @sector_name, @for_all, @scompany_id
	END
	CLOSE @CURSOR
	
	SET @res=@res+',"msg_end":"ok"}';
	
	END
	ELSE
	BEGIN
		SET @res=@res+'0","msg_end":"ok"}';	
	END;

	RETURN(@res)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetJSONSectorsStatus]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetJSONSectorsStatus] ()
RETURNS varchar(max)
AS
BEGIN
	declare @res varchar(max);
	DECLARE @CURSOR cursor;
	DECLARE @sector_id int, @sector_count int,
		@counter int;
   
	SET @res='{"command":"s_st","s_cnt":"';
	SET @counter = 0;
	
	SELECT @sector_count=COUNT(*)  
	FROM Sektor_raboty;
	
	IF (@sector_count>0)
	BEGIN
	
	SET @res=@res+CAST(@sector_count as varchar(20))+'"';
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT ws.BOLD_ID, dbo.GetSectorDrCount(ws.BOLD_ID)  
	FROM Sektor_raboty ws;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @sector_id, @sector_count
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN

        SET @res=@res+',"id'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@sector_id as varchar(20))+'","dc'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@sector_count as varchar(20))+'"';
        SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @sector_id, @sector_count
	END
	CLOSE @CURSOR
	
	SET @res=@res+',"msg_end":"ok"}';
	
	END
	ELSE
	BEGIN
		SET @res=@res+'0","msg_end":"ok"}';	
	END;

	RETURN(@res)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetJSONTarifAndOptionsList]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetJSONTarifAndOptionsList] (@driver_id int)
RETURNS varchar(max)
AS
BEGIN
	declare @res varchar(max);
	DECLARE @company_id int;
   
	SET @res='{"command":"to_lst"';
	--SET @counter = 0;
	--SET @policy_id = -1;

	SELECT @company_id = gv.BOLD_ID --@policy_id = gv.PR_POLICY_ID, 
	FROM Voditelj dr INNER JOIN Gruppa_voditelei gv ON dr.otnositsya_k_gruppe = gv.BOLD_ID
	WHERE dr.BOLD_ID = @driver_id;

	IF @@ROWCOUNT = 1 BEGIN
		--SET @policy_id = -1;
		--SET @company_id = -1;

		SET @res = @res + dbo.GetJSONCompanyTOList(@company_id);
		--SELECT @policy_id = dr.PR_POLICY_ID
		--FROM Voditelj dr
		--WHERE dr.BOLD_ID = @driver_id;

		--IF @@ROWCOUNT <= 0 BEGIN
		--	SET @policy_id = -1;
		--END;
	END;
	------------------------------
	
	SET @res = @res + ',"msg_end":"ok"}';

	RETURN(@res)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetJSONWaitTimesList]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE FUNCTION [dbo].[GetJSONWaitTimesList] ()
RETURNS varchar(max)
AS
BEGIN
	declare @res varchar(max);
	DECLARE @CURSOR cursor;
	DECLARE @wid int, @tval smallint, @wcount int,
		@sector_name varchar(255), @counter int, @for_all smallint, 
		@scompany_id int;
   
	SET @res='"wc":"';
	SET @counter = 0;
	
	SELECT @wcount=COUNT(*)  
	FROM WAIT_TIMES;

	IF (@wcount>0)
	BEGIN
	
	SET @res=@res+CAST(@wcount as varchar(20))+'",';
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT wt.id, wt.tval  
	FROM WAIT_TIMES wt;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @wid, @tval
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN

        SET @res=@res+'"id'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@wid as varchar(20));

		SET @res=@res + '","tv'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@tval as varchar(20)) + '",';

        SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @wid, @tval
	END
	CLOSE @CURSOR
	
	END
	ELSE
	BEGIN
		SET @res=@res+'0",';	
	END;

	RETURN(@res)
END


GO
/****** Object:  UserDefinedFunction [dbo].[GetNearestBeginEndDate]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE FUNCTION [dbo].[GetNearestBeginEndDate]  (@dr_num int, @start_date datetime)
RETURNS datetime
AS
BEGIN
   declare @ccount int, @res datetime,  @order_type varchar(255)

  SET @order_type=NULL
  SET @res=@start_date
   
   select TOP 1 @order_type=ord.Adres_vyzova_vvodim, 
   @res=ord.Nachalo_zakaza_data from Zakaz ord 
   where (ord.Telefon_klienta = 'Фиктивная') AND
   ord.Pozyvnoi_ustan=@dr_num AND 
   (ord.Nachalo_zakaza_data>@start_date) AND 
   ((ord.Adres_vyzova_vvodim = 'Постановка на линию') or
   (ord.Adres_vyzova_vvodim = 'Снятие с линии'))
	ORDER BY ord.Nachalo_zakaza_data ASC 
   --nomer_zakaza=@cust_num
 
   if ((@order_type <> 'Снятие с линии') or (@order_type=NULL)) begin
	 SET @res=@start_date	
   end

   RETURN(@res)
END


GO
/****** Object:  UserDefinedFunction [dbo].[GetOrderAMICommand]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetOrderAMICommand]  ( @oid int)
RETURNS varchar(2000)
AS
BEGIN
   declare @res varchar(2000), @dr_id int, @clphone varchar(255),
	@avar1 smallint, @avar2 smallint, @avar3 smallint, @avar4 smallint,
	@avar5 smallint, @avar6 smallint, @avar7 smallint, @avar8 smallint,
	@avar9 smallint, @avar10 smallint, @test_phone varchar(50), @disp_phone varchar(50),
	@manager_phone varchar(50), @call_demon_locsip_name varchar(50),
	@call_demon_netsip_name varchar(50), @demon_call_ctx varchar(50),
	@demon_call_virtext varchar(50), @demon_call_priority varchar(20),
	@demon_call_timeout varchar(20), @demon_callerid varchar(50),
	@waiting int, @state_phone_code varchar(50);
   
   select @call_demon_locsip_name=call_demon_locsip_name,
		@demon_call_ctx=demon_call_ctx, @demon_call_virtext=demon_call_virtext,
		@demon_call_priority=demon_call_priority, @demon_call_timeout=demon_call_timeout,
		@demon_callerid=demon_callerid, @state_phone_code = state_phone_code
   from Objekt_vyborki_otchyotnosti where Tip_objekta='for_drivers'

   SET @state_phone_code = ISNULL(@state_phone_code, '+7');
   
   IF (@@ROWCOUNT>0) BEGIN
   SELECT @clphone=Telefon_klienta, @dr_id=vypolnyaetsya_voditelem,
   @waiting = WAITING 
   FROM Zakaz WHERE BOLD_ID=@oid;
   
   IF (@@ROWCOUNT>0) BEGIN
   SELECT @avar1=avar1, @avar2=avar2, @avar3=avar3, @avar4=avar4,
   @avar5=avar5, @avar6=avar6, @avar7=avar7, @avar8=avar8, @avar9=avar9, @avar10=avar10 
   FROM Voditelj WHERE BOLD_ID=@dr_id;
   
   SET @res = ISNULL(@res, 'NONE');
   IF (@@ROWCOUNT > 0 AND ISNULL(@avar1, 0) > 0) BEGIN

		IF @avar9 > 0 BEGIN
			SET @avar9 = 6;
		END;
		IF @waiting = 1 
		BEGIN
			SET @avar9 = 1;
		END;
		IF @waiting = 5 
		BEGIN
			SET @avar9 = 2;
		END;
		IF @waiting = 10 
		BEGIN
			SET @avar9 = 3;
		END;
		IF @waiting = 15 
		BEGIN
			SET @avar9 = 4;
		END;
		IF @waiting = 20 
		BEGIN
			SET @avar9 = 5;
		END;

		SET @res = 'Action: Originate***___CRLF'+
		'Channel: SIP/'+@call_demon_locsip_name + '/' + @state_phone_code + @clphone+'***___CRLF'+
		'Context: '+@demon_call_ctx+'***___CRLF'+
		'Exten: '+@demon_call_virtext+'***___CRLFPriority: '+
		@demon_call_priority+'***___CRLF'+
		'Callerid: '+@demon_callerid+'***___CRLFTimeout: '+
		@demon_call_timeout+'***___CRLF'+
		'Variable: v1='+CAST(@avar1 as varchar(50))+
		'***___CRLFVariable: v2='+CAST(@avar2 as varchar(50))+'***___CRLF'+
		'Variable: v3='+CAST(@avar3 as varchar(50))+
		'***___CRLFVariable: v4='+CAST(@avar4 as varchar(50))+'***___CRLF'+
		'Variable: v5='+CAST(@avar5 as varchar(50))+
		'***___CRLFVariable: v6='+CAST(@avar6 as varchar(50))+'***___CRLF'+
		'Variable: v7='+CAST(@avar7 as varchar(50))+
		'***___CRLFVariable: v8='+CAST(@avar8 as varchar(50))+'***___CRLF'+
		'Variable: v9='+CAST(@avar9 as varchar(50))+
		'***___CRLFVariable: v10='+CAST(@avar10 as varchar(50))+'***___CRLF***___CRLF'
   END
   END
   END

   if @res=NULL begin
       SET @res='NONE'
   end  

   RETURN(@res)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetOrderINumComment]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetOrderINumComment]  ( @inum varchar(255))
RETURNS varchar(255)
AS
BEGIN
   declare @res varchar(255), @pres1 int, @pres2 int, @pres3 int
   
   select @pres1=Prizovoe_kolichestvo_1 from Objekt_vyborki_otchyotnosti where
    Tip_objekta='for_drivers' 
  
  if @pres1>0 begin
  select @res=('Абонент: '+Familiya+' '+Imya+' '+Otchestvo+
  ', приз. накопл. -'+CAST((dom%@pres1) as VARCHAR)+', '+
   'рез.-'+CAST(RESERVED_PRESENTS as VARCHAR)+'.')  
   from Persona where 
     CAST(korpus as varchar(255))=@inum  
  end
 else
  begin
    select @res=('Абонент: '+Familiya+' '+Imya+' '+Otchestvo+
    ', выз. всего-'+CAST(dom as VARCHAR)+', '+
    'рез.-'+CAST(RESERVED_PRESENTS as VARCHAR)+'.')  
   from Persona where 
     CAST(korpus as varchar(255))=@inum
  end

   if @res=NULL begin
       SET @res='Нет данных по абонентскому номеру '
   end  

   RETURN(@res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetOrderOnPlaceAMICommand]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE FUNCTION [dbo].[GetOrderOnPlaceAMICommand]  ( @oid int)
RETURNS varchar(2000)
AS
BEGIN
   declare @res varchar(2000), @dr_id int, @clphone varchar(255),
	@avar1 smallint, @avar2 smallint, @avar3 smallint, @avar4 smallint,
	@avar5 smallint, @avar6 smallint, @avar7 smallint, @avar8 smallint,
	@avar9 smallint, @avar10 smallint, @test_phone varchar(50), @disp_phone varchar(50),
	@manager_phone varchar(50), @call_demon_locsip_name varchar(50),
	@call_demon_netsip_name varchar(50), @demon_call_ctx varchar(50),
	@demon_call_virtext varchar(50), @demon_call_priority varchar(20),
	@demon_call_timeout varchar(20), @demon_callerid varchar(50),
	@onplace_first_song_code int, @state_phone_code varchar(50);
   
   select @call_demon_locsip_name=call_demon_locsip_name,
		@demon_call_ctx=demon_call_ctx, @demon_call_virtext=demon_call_virtext,
		@demon_call_priority=demon_call_priority, @demon_call_timeout=demon_call_timeout,
		@demon_callerid=demon_callerid, 
		@onplace_first_song_code = onplace_first_song_code, 
		@state_phone_code = state_phone_code
   from Objekt_vyborki_otchyotnosti where Tip_objekta='for_drivers'

   SET @state_phone_code = ISNULL(@state_phone_code, '+7');
   
   IF (@@ROWCOUNT>0) BEGIN
   SELECT @clphone=Telefon_klienta, @dr_id=vypolnyaetsya_voditelem 
   FROM Zakaz WHERE BOLD_ID=@oid;
   
   IF (@@ROWCOUNT>0) BEGIN
   SELECT @avar1=avar1, @avar2=avar2, @avar3=avar3, @avar4=avar4,
   @avar5=avar5, @avar6=avar6, @avar7=avar7, @avar8=avar8, @avar9=avar9, @avar10=avar10 
   FROM Voditelj WHERE BOLD_ID=@dr_id;
   
   SET @res = ISNULL(@res, 'NONE');
   IF (@@ROWCOUNT > 0 AND ISNULL(@avar2, 0) > 0) BEGIN
		SET @res = 'Action: Originate***___CRLF'+
		'Channel: SIP/'+@call_demon_locsip_name + '/' + @state_phone_code + @clphone+'***___CRLF'+
		'Context: '+@demon_call_ctx+'***___CRLF'+
		'Exten: '+@demon_call_virtext+'***___CRLFPriority: '+
		@demon_call_priority+'***___CRLF'+
		'Callerid: '+@demon_callerid+'***___CRLFTimeout: '+
		@demon_call_timeout+'***___CRLF'+
		'Variable: v1='+CAST(@onplace_first_song_code as varchar(50))+
		'***___CRLFVariable: v2='+CAST(@avar2 as varchar(50))+'***___CRLF'+
		'Variable: v3='+CAST(@avar3 as varchar(50))+
		'***___CRLFVariable: v4='+CAST(@avar4 as varchar(50))+'***___CRLF'+
		'Variable: v5='+CAST(@avar5 as varchar(50))+
		'***___CRLFVariable: v6='+CAST(@avar6 as varchar(50))+'***___CRLF'+
		'Variable: v7='+CAST(@avar7 as varchar(50))+'***___CRLF***___CRLF'
   END
   END
   END

   if @res=NULL begin
       SET @res='NONE'
   end  

   RETURN(@res)
END


GO
/****** Object:  UserDefinedFunction [dbo].[GetOrdOptsStrByOComb]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetOrdOptsStrByOComb]  (@ocomb bigint)
RETURNS varchar(1000)
AS
BEGIN
	DECLARE @res varchar(1000), @option_name varchar(255), 
		@mod2 int, @counter int;
	DECLARE @CURSOR cursor;
   
	SET @res='';
	SET @counter=0;
   
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT OPTION_NAME   
	FROM ORDER_OPTION  
    ORDER BY ID ASC;
    
    OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @option_name
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @mod2=@ocomb % 2;
		if(@mod2<>0)
		BEGIN
		    if(@counter>0)
		    BEGIN
				SET @res=@res+' ,';
		    END
			SET @res=@res+@option_name;
			SET @counter=@counter+1;
		END;
		SET @ocomb=@ocomb/2;
		FETCH NEXT FROM @CURSOR INTO @option_name
	END
	CLOSE @CURSOR
    
    SET @res=ISNULL(@res,'');
    if(@res='') 
    BEGIN
		SET @res='Нет опций';
    END 

	RETURN(@res)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetOrdTarifNameByTId]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetOrdTarifNameByTId]  ( @tid int)
RETURNS varchar(255)
AS
BEGIN
	declare @res varchar(255)
   
	SET @res='Не указан';
   
	SELECT @res=TARIF_NAME   
	FROM ORDER_TARIF WHERE 
    ID=@tid;
    
    SET @res=ISNULL(@res,'Не указан'); 

	RETURN(@res)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetPrevCustComment]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetPrevCustComment]  ( @cust_num decimal)
RETURNS varchar(255)
AS
BEGIN
   declare @ccount int, @res varchar(255),  @prev int

    select @ccount=COUNT(*) from Zakaz where 
   nomer_zakaza=@cust_num
 
   if (@ccount>0) begin
      select @prev=Predvariteljnyi from Zakaz where 
         nomer_zakaza=@cust_num
      if @prev=1 begin
        select @res='Дата предв. заявки '+CAST(Data_predvariteljnaya as VARCHAR) from Zakaz where 
         nomer_zakaza=@cust_num
      end
      else begin
         SET @res='Заявка не является предварительной'
      end
   end
   else begin
      SET @res='Заявка не найдена в базе'
   end

   RETURN(@res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetRemoteCustComment]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetRemoteCustComment]  ( @REMOTE_SET int, 
@REMOTE_INCOURSE int, @REMOTE_ACCEPTED int, @REMOTE_DRNUM int)
RETURNS varchar(255)
AS
BEGIN
   declare @res varchar(255)

   SET @res='НЕТ ДАННЫХ'
   
 
   if (@REMOTE_SET<>0) begin
  
      if (@REMOTE_INCOURSE<>0)  begin
        SET @res='Передана, уведомлен '+CAST( @REMOTE_DRNUM AS CHAR(10))
      end
      else
       begin
        SET @res='Передана, не уведомлен '+CAST( @REMOTE_DRNUM AS CHAR(10))
       end

       if (@REMOTE_ACCEPTED=-1)  begin
        SET @res='ОТКАЗ '+CAST( @REMOTE_DRNUM AS CHAR(10))
       end 

       if (@REMOTE_ACCEPTED=1)  begin
        SET @res='Принял '+CAST( @REMOTE_DRNUM AS CHAR(10))
       end 

       if (@REMOTE_SET=-1)  begin
        SET @res='Отмена диспетчером для '+CAST( @REMOTE_DRNUM AS CHAR(10))
       end 

       if (@REMOTE_SET=-2)  begin
        SET @res='Отмена водителем '+CAST( @REMOTE_DRNUM AS CHAR(10))
       end 

       if (@REMOTE_SET=-3)  begin
        SET @res='Отмена принята водителем '+CAST( @REMOTE_DRNUM AS CHAR(10))
       end

   end
   else begin
     set @res='Не передана'
     if (@REMOTE_ACCEPTED<>0)  begin
        SET @res='Не передана, ОТКАЗ '+CAST( @REMOTE_DRNUM AS CHAR(10))
       end
   end

   RETURN(@res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetRemoteOrderStatusInfo]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetRemoteOrderStatusInfo]  ( @REMOTE_SET int, @WAITING int, @on_place smallint)
RETURNS varchar(255)
AS
BEGIN
   declare @res varchar(255), @waiting_msg varchar(50);

   SET @waiting_msg = '';
   IF @WAITING > 0 AND @on_place = 0 BEGIN
	SET @waiting_msg = '(' + CAST(@WAITING as varchar(20)) + ' мин.)'
   END;

   SET @res='.....'
   
   if (@REMOTE_SET<>0) begin
       if (@REMOTE_SET=-1)  begin
        SET @res='Отмена диспетчером для '
       end 

       else if (@REMOTE_SET=-2)  begin
        SET @res='Отмена водителем '
       end 

       else if (@REMOTE_SET=-3)  begin
        SET @res='Отмена принята водителем '
       end

	   else if (@REMOTE_SET=1)  begin
        SET @res='Рассыл одному, можно назначить'
       end 

       else if (@REMOTE_SET = 2)  begin
        SET @res='Рассыл сектору, можно назначить'
       end 

	   else if (@REMOTE_SET = 3)  begin
        SET @res='Рассыл всем, можно назначить'
       end 

	   else if (@REMOTE_SET = 4)  begin
        SET @res='Рассыл завершен, назначьте'
       end 

	   else if (@REMOTE_SET = 5)  begin
        SET @res='Есть претенденты, назначьте'
       end 

	   else if (@REMOTE_SET = 6)  begin
        SET @res='Есть претенденты, назначьте'
       end 

	   else if (@REMOTE_SET = 7)  begin
        SET @res='Дано разрешение'
       end 

	   else if (@REMOTE_SET = 8)  begin
        SET @res= 'На исполнении'
       end 

	   else if (@REMOTE_SET = 9)  begin
        SET @res='Дано разрешение с руки'
       end 

	   else if (@REMOTE_SET = 10)  begin
        SET @res='На исполнении'
       end 

	   else if (@REMOTE_SET = 11)  begin
        SET @res='Диспетчер отменяет'
       end 

	   else if (@REMOTE_SET = 12)  begin
        SET @res='Вод. подтв. отмену дисп.'
       end 

	   else if (@REMOTE_SET = 13)  begin
        SET @res='Водитель отменяет'
       end 

	   else if (@REMOTE_SET = 14)  begin
        SET @res='Дисп. подтв. отмену вод.'
       end 

	   else if (@REMOTE_SET = 15)  begin
        SET @res='Водитель отчитался'
       end 

	   else if (@REMOTE_SET = 16)  begin
        SET @res='Отчет принят, ждем...'
       end 

	   else if (@REMOTE_SET = 17)  begin
        SET @res='Дано разрешение, ждем'
       end 

	   else if (@REMOTE_SET = 18)  begin
        SET @res='Дано разрешение с руки, ждем'
       end 

	   else if (@REMOTE_SET = 19)  begin
        SET @res='Диспетчер отменил, ждем'
       end 

	   else if (@REMOTE_SET = 20)  begin
        SET @res='Ошибка отчета'
       end 

	   else if (@REMOTE_SET = 21)  begin
        SET @res='Отмена водителем не принята'
       end 

	   else if (@REMOTE_SET = 23)  begin
        SET @res='Просят с руки'
       end 

	   else if (@REMOTE_SET = 24)  begin
        SET @res='Отказано с руки'
       end 

	   else if (@REMOTE_SET = 25)  begin
        SET @res='Просят с руки'
       end 

	   else if (@REMOTE_SET = 26)  begin
        SET @res='Дан отчет'
       end 

	   else if (@REMOTE_SET = 27)  begin
        SET @res='Отчет принят, закрытие...'
       end 

	   else if (@REMOTE_SET = 100)  begin
        SET @res='Заявка закрыта'
       end 

   end

   RETURN(@waiting_msg + @res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetSDSumm]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetSDSumm]  ( @sd varchar(10))
RETURNS decimal(28,10)
AS
BEGIN
   declare @res decimal(28,10)

   select @res=COUNT(*) from Zakaz where 
   @sd=(CAST(DATEPART(yyyy, nachalo_zakaza_data)as varchar(4))+'.'+
CAST(DATEPART(mm, nachalo_zakaza_data)as varchar(2))+'.'+
CAST(DATEPART(dd, nachalo_zakaza_data)as varchar(2)))

   RETURN(@res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetSectorAreaCoords]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE FUNCTION [dbo].[GetSectorAreaCoords] (@sector_id int, @torder_num int)
RETURNS varchar(5000)
AS
BEGIN
	declare @res varchar(5000);
	DECLARE @CURSOR cursor;
	DECLARE @scount int, @counter int,
		@lat decimal(28,10), @lon decimal(28,10),
		@order_num int;
   
	SET @res=',"ccn'+CAST(@torder_num as varchar(20))+'":"';
	SET @counter = 0;
	
	SELECT @scount=COUNT(*)  
	FROM AREA_LINES WHERE sector_id = @sector_id;
	
	DECLARE @fmt_str1 varchar(50), @fmt_str2 varchar(50);
	
	IF (@scount>0)
	BEGIN
	
	SET @res=@res+CAST(@scount as varchar(20))+'"';
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT order_num, lat, lon  
	FROM AREA_LINES
	WHERE sector_id = @sector_id  
	ORDER BY order_num ASC;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @order_num, @lat, @lon
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN

        
        IF (CHARINDEX('.',CAST(@lat as varchar(20)))+5<=
			LEN(CAST(@lat as varchar(20))))
		BEGIN
			SET @fmt_str1=LEFT(CAST(@lat as varchar(20)),
				CHARINDEX('.',CAST(@lat as varchar(20)))+5);
		END
		ELSE
		BEGIN
			SET @fmt_str1=CAST(@lat as varchar(20));
		END
		
		IF (CHARINDEX('.',CAST(@lon as varchar(20)))+5<=
			LEN(CAST(@lon as varchar(20))))
		BEGIN
			SET @fmt_str2=LEFT(CAST(@lon as varchar(20)),
				CHARINDEX('.',CAST(@lon as varchar(20)))+5);
		END
		ELSE
		BEGIN
			SET @fmt_str2=CAST(@lon as varchar(20));
		END
		
        SET @res=@res+',"la'+CAST(@torder_num as varchar(20))+'_'+
			CAST(@counter as varchar(20))+'":"'+
			@fmt_str1+'","lo'+CAST(@torder_num as varchar(20))+'_'+
			CAST(@counter as varchar(20))+'":"'+
			@fmt_str2+'"';
        SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @order_num, @lat, @lon
	END
	CLOSE @CURSOR
	
	END
	ELSE
	BEGIN
		SET @res=@res+'0"';	
	END;

	RETURN(@res)
END


GO
/****** Object:  UserDefinedFunction [dbo].[GetSectorDrCount]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetSectorDrCount]  (@sector_id int)
RETURNS int
AS
BEGIN
   DECLARE @dr_count int;
   SET @dr_count=0;
   
   SELECT @dr_count=COUNT(*) FROM Voditelj
   WHERE rabotaet_na_sektore=@sector_id and V_rabote=1 and S_klass=0
   AND Pozyvnoi>0 and Zanyat_drugim_disp=0 and Na_pereryve=0;  

   RETURN(@dr_count)
END



GO
/****** Object:  UserDefinedFunction [dbo].[GetSendSMSCustComment]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetSendSMSCustComment]  ( @DRIVER_SMS_SEND_STATE int, 
@CLIENT_SMS_SEND_STATE int, @SMS_SEND_DRNUM varchar(50), 
@SMS_SEND_CLPHONE varchar(50))
RETURNS varchar(255)
AS
BEGIN
	declare @dr_res varchar(255), @cl_res varchar(255)

	SET @dr_res=''
	SET @cl_res=''
   
 
	if (@DRIVER_SMS_SEND_STATE=0) begin
		SET @dr_res='-'
	end

	if (@DRIVER_SMS_SEND_STATE=1) begin
		SET @dr_res='ЗАПРОС SMS ВОД. '+ @SMS_SEND_DRNUM
	end

	if (@DRIVER_SMS_SEND_STATE=2) begin
		SET @dr_res='ОТПРАВЛЕНО SMS ВОД. '+ @SMS_SEND_DRNUM
	end

	if (@DRIVER_SMS_SEND_STATE=-1) begin
		SET @dr_res='ОШИБКА SMS ВОД. '+ @SMS_SEND_DRNUM
	end

	if (@CLIENT_SMS_SEND_STATE=0) begin
		SET @cl_res='-'
	end

	if (@CLIENT_SMS_SEND_STATE=1) begin
		SET @cl_res='ЗАПРОС SMS КЛ. '+ @SMS_SEND_CLPHONE
	end

	if (@CLIENT_SMS_SEND_STATE=2) begin
		SET @cl_res='ОТПРАВЛЕНО SMS КЛ. '+ @SMS_SEND_CLPHONE
	end

	if (@CLIENT_SMS_SEND_STATE=-1) begin
		SET @cl_res='ОШИБКА SMS КЛ. '+ @SMS_SEND_CLPHONE
	end

	RETURN(@dr_res+' '+@cl_res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetSetManualAddrChange]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetSetManualAddrChange]  ()
RETURNS smallint
AS
BEGIN
	DECLARE @set_manual_addr_change int;

	SELECT TOP 1 @set_manual_addr_change=ISNULL(set_manual_addr_change,0) 
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';

	SET @set_manual_addr_change=ISNULL(@set_manual_addr_change,0)

	RETURN(@set_manual_addr_change)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetSpecCustComment]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetSpecCustComment]  ( @cust_num decimal)
RETURNS varchar(255)
AS
BEGIN
   declare @ccount int, @res varchar(255),  @spec int

    select @ccount=COUNT(*) from Zakaz where 
   nomer_zakaza=@cust_num
 
   if (@ccount>0) begin
       select @spec=Slugebnyi from Zakaz where 
         nomer_zakaza=@cust_num
           if @spec=1 begin
             SET @res='Явл. служебной'
           end
           else begin
              SET @res='Не явл. служебной'
           end
   end
   else begin
      SET @res='Заявка не найдена в базе'
   end

   RETURN(@res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetStartSector]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetStartSector]  ( @cust_num decimal)
RETURNS varchar(255)
AS
BEGIN 
   declare @ccount int, @res varchar(255)

    select @ccount=COUNT(*) from Zakaz c, Sektor_raboty s where 
     (c.nomer_zakaza=@cust_num) AND
     (c.adres_sektora=s.BOLD_ID)
 
   if (@ccount>0) begin
       select @res=s.Podskazka_na_sektore from Zakaz c, Sektor_raboty s where 
         (c.nomer_zakaza=@cust_num) AND
         (c.adres_sektora=s.BOLD_ID)
   end
   else begin
      SET @res='Не определён нач. сектор'
   end

   RETURN(@res)
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetTarifAreaCoords]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetTarifAreaCoords] (@tarif_id int, @torder_num int)
RETURNS varchar(5000)
AS
BEGIN
	declare @res varchar(5000);
	DECLARE @CURSOR cursor;
	DECLARE @scount int, @counter int,
		@lat decimal(28,10), @lon decimal(28,10),
		@order_num int;
   
	SET @res=',"trarcnt'+CAST(@torder_num as varchar(20))+'":"';
	SET @counter = 0;
	
	SELECT @scount=COUNT(*)  
	FROM AREA_LINES WHERE tarif_id=@tarif_id;
	
	DECLARE @fmt_str1 varchar(50), @fmt_str2 varchar(50);
	
	IF (@scount>0)
	BEGIN
	
	SET @res=@res+CAST(@scount as varchar(20))+'"';
	
	SET @CURSOR  = CURSOR SCROLL
	FOR
	SELECT order_num, lat, lon  
	FROM AREA_LINES
	WHERE tarif_id=@tarif_id  
	ORDER BY order_num ASC;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @order_num, @lat, @lon
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN

        
        IF (CHARINDEX('.',CAST(@lat as varchar(20)))+5<=
			LEN(CAST(@lat as varchar(20))))
		BEGIN
			SET @fmt_str1=LEFT(CAST(@lat as varchar(20)),
				CHARINDEX('.',CAST(@lat as varchar(20)))+5);
		END
		ELSE
		BEGIN
			SET @fmt_str1=CAST(@lat as varchar(20));
		END
		
		IF (CHARINDEX('.',CAST(@lon as varchar(20)))+5<=
			LEN(CAST(@lon as varchar(20))))
		BEGIN
			SET @fmt_str2=LEFT(CAST(@lon as varchar(20)),
				CHARINDEX('.',CAST(@lon as varchar(20)))+5);
		END
		ELSE
		BEGIN
			SET @fmt_str2=CAST(@lon as varchar(20));
		END
		
        SET @res=@res+',"tralat'+CAST(@torder_num as varchar(20))+'_'+
			CAST(@counter as varchar(20))+'":"'+
			@fmt_str1+'","tralon'+CAST(@torder_num as varchar(20))+'_'+
			CAST(@counter as varchar(20))+'":"'+
			@fmt_str2+'"';
        SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @order_num, @lat, @lon
	END
	CLOSE @CURSOR
	
	END
	ELSE
	BEGIN
		SET @res=@res+'0"';	
	END;

	RETURN(@res)
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetTarTaxTariff]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE FUNCTION [dbo].[GetTarTaxTariff]  (@tar_id int)
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE  @res decimal(28, 10)
   
   SET @res=0
   
   select @res=ISNULL(ot.TMETER_TARIF,0) from ORDER_TARIF ot
   where ot.ID=@tar_id 
   
   SET @res=ISNULL(@res,0);  

   RETURN(@res)
END



GO
/****** Object:  UserDefinedFunction [dbo].[GetTarTimeTariff]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE FUNCTION [dbo].[GetTarTimeTariff]  (@tar_id int)
RETURNS decimal(28, 10)
AS
BEGIN
   DECLARE  @res decimal(28, 10)
   
   SET @res=0
   
   select @res=ISNULL(ot.TIME_TARIF,0) from ORDER_TARIF ot
   where ot.ID=@tar_id 
   
   SET @res=ISNULL(@res,0);  

   RETURN(@res)
END



GO
/****** Object:  UserDefinedFunction [dbo].[GetUseDrBCounter]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetUseDrBCounter] ()
RETURNS int
AS
BEGIN
   DECLARE @use_dr_bcounter int
   
   SELECT @use_dr_bcounter=use_dr_balance_counter FROM Objekt_vyborki_otchyotnosti WHERE Tip_objekta='for_drivers';  

   SET @use_dr_bcounter=ISNULL(@use_dr_bcounter,0);

   RETURN(@use_dr_bcounter)
END

GO
/****** Object:  UserDefinedFunction [dbo].[isCallTimeExpired]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO



CREATE FUNCTION [dbo].[isCallTimeExpired]  ()
RETURNS smallint
AS
BEGIN      

	DECLARE @db_version INT, @use_call_robot int,
		@sip1_robot_active_time datetime, 
		@robot_active_time_interval int,
		@res smallint;
	
	SELECT TOP 1 @use_call_robot=use_call_robot,
	@sip1_robot_active_time = sip1_robot_active_time, 
	@robot_active_time_interval = robot_active_time_interval
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
   
	SET @res=1;
	IF @use_call_robot = 1 BEGIN
		IF (ABS(DATEDIFF(SECOND, @sip1_robot_active_time, 
			GETDATE())) < @robot_active_time_interval)  
		BEGIN
			SET @res=0;
		END;
	END;

   RETURN(@res)
END




GO
/****** Object:  UserDefinedFunction [dbo].[isSMSWithCallRaplace]    Script Date: 09.05.2019 23:45:49 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE FUNCTION [dbo].[isSMSWithCallRaplace]  ()
RETURNS smallint
AS
BEGIN      

	DECLARE @db_version INT, @replace_sms_with_robot int,
		@sip1_robot_active_time datetime, 
		@robot_active_time_interval int,
		@res smallint;
	
	SELECT TOP 1 @replace_sms_with_robot=replace_sms_with_robot,
	@sip1_robot_active_time = sip1_robot_active_time, 
	@robot_active_time_interval = robot_active_time_interval
	FROM Objekt_vyborki_otchyotnosti
	WHERE Tip_objekta='for_drivers';
   
	SET @res=1;
	IF @replace_sms_with_robot = 1 BEGIN
		IF (ABS(DATEDIFF(SECOND, @sip1_robot_active_time, 
			GETDATE())) < @robot_active_time_interval)  
		BEGIN
			SET @res=0;
		END;
	END;

   RETURN(@res)
END



GO

SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetJSONCompanyDriversList] (@company_id int)
RETURNS varchar(max)
AS
BEGIN
	declare @res varchar(max);
	DECLARE @CURSOR cursor;
	DECLARE @driver_id int, @drivers_count int,
		@driver_num int, @counter INT,
		@online_dr_count INT, @busy_dr_count INT,
		@onlaunch_count int, @driver_class varchar(255),
        @driver_name varchar(500), @mark_auto varchar(255),
        @driver_rating float, @last_lat varchar(50), 
        @last_lon varchar(50), @reg_num varchar(255),
        @rate_count int;
   
	SET @res='{"command":"drivers_list","dcnt":"';
	SET @counter = 0; 
	
	SELECT @online_dr_count=COUNT(BOLD_ID) FROM
	Voditelj WHERE V_rabote>0;
	
	SELECT @busy_dr_count=COUNT(BOLD_ID) FROM
	Voditelj WHERE V_rabote>0 AND Zanyat_drugim_disp>0;
	
    IF @company_id>0 BEGIN
	    SELECT @drivers_count=COUNT(BOLD_ID) FROM Voditelj
        WHERE otnositsya_k_gruppe = @company_id;
    END ELSE BEGIN
        SELECT @drivers_count=COUNT(BOLD_ID) FROM Voditelj;
    END;
	
	IF (@drivers_count>0)
	BEGIN
	
	SET @res=@res+CAST(@drivers_count as varchar(20))+'"';
	
    IF @company_id>0 BEGIN
        SET @CURSOR  = CURSOR SCROLL
        FOR
        SELECT dr.BOLD_ID, dr.full_name, ac.name as driver_class,
        dr.Marka_avtomobilya, dr.rate, dr.last_lat, dr.last_lon,
        dr.Gos_nomernoi_znak, dr.rate_count
        FROM Voditelj dr LEFT JOIN AUTO_CLASS ac 
        ON dr.auto_class_id = ac.id
        WHERE dr.otnositsya_k_gruppe = @company_id;
    END ELSE BEGIN
        SET @CURSOR  = CURSOR SCROLL
        FOR
        SELECT dr.BOLD_ID, dr.full_name, ac.name as driver_class,
        dr.Marka_avtomobilya, dr.rate, dr.last_lat, dr.last_lon,
        dr.Gos_nomernoi_znak, dr.rate_count
        FROM Voditelj dr LEFT JOIN AUTO_CLASS ac 
        ON dr.auto_class_id = ac.id;
    END;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @driver_id, @driver_name, @driver_class, @mark_auto, 
        @driver_rating, @last_lat, @last_lon, @reg_num, @rate_count
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN

        SET @driver_class = ISNULL(@driver_class, '');
        SET @mark_auto = ISNULL(@mark_auto, '');
		SET @last_lat = ISNULL(@last_lat, '');
		SET @last_lon = ISNULL(@last_lon, '');
		SET @driver_name = ISNULL(@driver_name, '');

        SET @res=@res+',"id'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@driver_id as varchar(20))+'","nm'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@driver_name,'"',' '),'''',' ')+'","cls'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@driver_class,'"',' '),'''',' ')+'","mrk'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@mark_auto,'"',' '),'''',' ')+'","rgn'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@reg_num,'"',' '),'''',' ')+'","rtc'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@rate_count as varchar(20))+'","rat'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@driver_rating as varchar(20))+'","lat'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@last_lat,'"',' '),'''',' ')+'","lon'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@last_lon,'"',' '),'''',' ')+'"';
        SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @driver_id, @driver_name, @driver_class, @mark_auto, 
            @driver_rating, @last_lat, @last_lon, @reg_num, @rate_count
	END
	CLOSE @CURSOR
	
	SET @res=@res+',"msg_end":"ok"}';
	
	END
	ELSE
	BEGIN
		SET @res=@res+'0","msg_end":"ok"}';	
	END;

	RETURN(@res)
END



GO

SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetJSONClientInfo] (@client_id int)
RETURNS varchar(max)
AS
BEGIN
	declare @res varchar(max);
	DECLARE @client_data varchar(2000),
		@client_count INT;
   
	SET @res='{"client_cnt":"';
	
	SELECT @client_count = COUNT(*)  
	FROM REMOTE_CLIENTS
    WHERE id = @client_id;
	
	IF (@client_count = 1)
	BEGIN
	
    SELECT @client_data = '1","phone":"' + rc.phone + '","name":"' 
     + rc.name + '","rate":"' + CAST(rc.rate as [varchar](255)) + '","bonus":"' + 
     CAST(ISNULL(sp.bonus_summ, 0) as [varchar](255)) + '",'
	FROM REMOTE_CLIENTS rc LEFT JOIN Sootvetstvie_parametrov_zakaza sp
    ON rc.phone = sp.Telefon_klienta
    WHERE rc.id = @client_id;
	
	SET @res=@res + @client_data + '"msg_end":"ok"}';
	
	END
	ELSE
	BEGIN
		SET @res=@res+'0","msg_end":"ok"}';	
	END;

	RETURN(@res)
END

GO

SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE FUNCTION [dbo].[GetDriverOrderOptionIncluded]  (@driver_id int, @option_id int, @last_days int)
RETURNS int
AS
BEGIN
	DECLARE @order_count int, @length_with_comma int, 
    @left_option_str varchar(255), @rigth_option_str varchar(255);

    SET @left_option_str = CAST(@option_id as [varchar](255)) + ','
    SET @rigth_option_str = ',' + CAST(@option_id as [varchar](255))
    SET @length_with_comma = LEN(@left_option_str)


    SELECT @order_count = COUNT(BOLD_ID) FROM Zakaz ord
    WHERE (ord.OPT_COMB_STR = CAST(@option_id as [varchar](255)) OR
    ord.OPT_COMB_STR LIKE ('%,' + CAST(@option_id as [varchar](255)) + ',%') OR 
    (LEN(ord.OPT_COMB_STR) > @length_with_comma AND 
    LEFT(ord.OPT_COMB_STR, @length_with_comma) = @left_option_str) OR 
    (LEN(ord.OPT_COMB_STR) > @length_with_comma AND 
    RIGHT(ord.OPT_COMB_STR, @length_with_comma) = @rigth_option_str) )
    AND ord.vypolnyaetsya_voditelem = @driver_id
    AND (@last_days = 0 OR ord.Nachalo_zakaza_data > DATEADD(day, -@last_days, GETDATE()))
   
	RETURN(@order_count)
END




GO

SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE FUNCTION [dbo].[GetSectorMediumAreaCoords] (@sector_id int, @oth_sector_id int)
RETURNS varchar(5000)
AS
BEGIN
	declare @res decimal(28,10);
	DECLARE @lat decimal(28,10), @lon decimal(28,10),
        @oth_lat decimal(28,10), @oth_lon decimal(28,10);

    SET @res = 0;

    EXECUTE [dbo].[GetSectorMediumCoords] 
        @sector_id
        ,@lat OUTPUT
        ,@lon OUTPUT

    EXECUTE [dbo].[GetSectorMediumCoords] 
        @oth_sector_id
        ,@oth_lat OUTPUT
        ,@oth_lon OUTPUT

    IF @lat <> 0 AND @lon <> 0 AND @oth_lat <> 0 AND @oth_lon <> 0
    BEGIN
        SET @res = SQRT(POWER(ABS(@lat - @oth_lat),2) + 
            POWER(ABS(@lon - @oth_lon),2))
    END;

	RETURN(@res)
END


GO

SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetFirstQueueNearSectDriverId]  ( @sector_id int)
RETURNS int
AS
BEGIN
    declare @res int
   
    SET @res=-1
   
    select TOP 1 @res=BOLD_ID   
    from Voditelj where 
    rabotaet_na_sektore = @sector_id AND Zanyat_drugim_disp = 0
    AND V_rabote = 1
    ORDER BY Vremya_poslednei_zayavki ASC

    IF @@ROWCOUNT = 0 BEGIN
        select TOP 1 @res = dr.BOLD_ID   
        from Voditelj dr, Sektor_raboty sr where 
        dr.rabotaet_na_sektore <> @sector_id AND dr.Zanyat_drugim_disp = 0
        AND dr.V_rabote = 1 AND dr.rabotaet_na_sektore = sr.BOLD_ID
        ORDER BY [dbo].[GetSectorMediumAreaCoords](@sector_id, sr.BOLD_ID) ASC, 
        dr.Vremya_poslednei_zayavki ASC 
    END;

    SET @res = ISNULL(@res, -1) 

    RETURN(@res)
END
GO

SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GetDrNumByDrId]  ( @driver_id int)
RETURNS int
AS
BEGIN
   declare @res int
   
   SET @res=0
   
  select @res=Pozyvnoi   
   from Voditelj where 
     BOLD_ID=@driver_id 

   SET @res = ISNULL(@res, 0)

   RETURN(@res)
END
GO

SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE FUNCTION [dbo].[GetJSONCompanyDriversListInRadius] (@company_id int, 
    @only_active smallint, @raduis float, @lat decimal(28, 10), @lon decimal(28, 10))
RETURNS varchar(max)
AS
BEGIN
	declare @res varchar(max);
	DECLARE @CURSOR cursor;
	DECLARE @driver_id int, @drivers_count int,
		@driver_num int, @counter INT,
		@online_dr_count INT, @busy_dr_count INT,
		@onlaunch_count int, @driver_class varchar(255),
        @driver_name varchar(500), @mark_auto varchar(255),
        @driver_rating float, @last_lat varchar(50), 
        @last_lon varchar(50), @reg_num varchar(255),
        @rate_count int, @busy int;
   
	SET @res='{"command":"drivers_list","dcnt":"';
	SET @counter = 0; 
	
	SELECT @online_dr_count=COUNT(BOLD_ID) FROM
	Voditelj WHERE V_rabote>0;
	
	SELECT @busy_dr_count=COUNT(BOLD_ID) FROM
	Voditelj WHERE V_rabote>0 AND Zanyat_drugim_disp>0;
	
    IF @company_id>0 BEGIN
	    SELECT @drivers_count=COUNT(BOLD_ID) FROM Voditelj
        WHERE otnositsya_k_gruppe = @company_id;
    END ELSE BEGIN
        SELECT @drivers_count=COUNT(BOLD_ID) FROM Voditelj;
    END;
	
	IF (@drivers_count>0)
	BEGIN
	
	SET @res=@res+CAST(@drivers_count as varchar(20))+'"';
	
    IF @company_id>0 BEGIN
        SET @CURSOR  = CURSOR SCROLL
        FOR
        SELECT dr.BOLD_ID, dr.full_name, ac.name as driver_class,
        dr.Marka_avtomobilya, dr.rate, dr.last_lat, dr.last_lon,
        dr.Gos_nomernoi_znak, dr.rate_count, dr.Zanyat_drugim_disp
        FROM Voditelj dr LEFT JOIN AUTO_CLASS ac 
        ON dr.auto_class_id = ac.id
        WHERE dr.otnositsya_k_gruppe = @company_id
        AND (ISNULL(dr.last_lat, '') <> '') AND (ISNULL(dr.last_lon, '') <> '') AND 
            (@raduis = 0 OR @raduis >= dbo.DistanceBetweenTwoCoords(@lat, @lon, 
            CAST(dr.last_lat as decimal(28, 10)), CAST(dr.last_lon as decimal(28, 10))))
        AND (@only_active = 0 OR dr.V_rabote = 1);
    END ELSE BEGIN
        SET @CURSOR  = CURSOR SCROLL
        FOR
        SELECT dr.BOLD_ID, dr.full_name, ac.name as driver_class,
        dr.Marka_avtomobilya, dr.rate, dr.last_lat, dr.last_lon,
        dr.Gos_nomernoi_znak, dr.rate_count, dr.Zanyat_drugim_disp
        FROM Voditelj dr LEFT JOIN AUTO_CLASS ac 
        ON dr.auto_class_id = ac.id
        WHERE (ISNULL(dr.last_lat, '') <> '') AND (ISNULL(dr.last_lon, '') <> '') AND 
            (@raduis = 0 OR @raduis >= dbo.DistanceBetweenTwoCoords(@lat, @lon, 
            CAST(dr.last_lat as decimal(28, 10)), CAST(dr.last_lon as decimal(28, 10))))
        AND (@only_active = 0 OR dr.V_rabote = 1);
    END;
	/*Открываем курсор*/
	OPEN @CURSOR
	/*Выбираем первую строку*/
	FETCH NEXT FROM @CURSOR INTO @driver_id, @driver_name, @driver_class, @mark_auto, 
        @driver_rating, @last_lat, @last_lon, @reg_num, @rate_count, @busy
	/*Выполняем в цикле перебор строк*/
	WHILE @@FETCH_STATUS = 0
	BEGIN

        SET @driver_class = ISNULL(@driver_class, '');
        SET @mark_auto = ISNULL(@mark_auto, '');
		SET @last_lat = ISNULL(@last_lat, '');
		SET @last_lon = ISNULL(@last_lon, '');
		SET @driver_name = ISNULL(@driver_name, '');

        SET @res=@res+',"id'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@driver_id as varchar(20))+'","nm'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@driver_name,'"',' '),'''',' ')+'","cls'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@driver_class,'"',' '),'''',' ')+'","mrk'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@mark_auto,'"',' '),'''',' ')+'","rgn'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@reg_num,'"',' '),'''',' ')+'","bsy'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@busy as varchar(20))+'","rtc'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@rate_count as varchar(20))+'","rat'+
			CAST(@counter as varchar(20))+'":"'+
			CAST(@driver_rating as varchar(20))+'","lat'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@last_lat,'"',' '),'''',' ')+'","lon'+
			CAST(@counter as varchar(20))+'":"'+
			REPLACE(REPLACE(@last_lon,'"',' '),'''',' ')+'"';
        SET @counter=@counter+1;
		/*Выбираем следующую строку*/
		FETCH NEXT FROM @CURSOR INTO @driver_id, @driver_name, @driver_class, @mark_auto, 
            @driver_rating, @last_lat, @last_lon, @reg_num, @rate_count, @busy
	END
	CLOSE @CURSOR
	
	SET @res=@res+',"msg_end":"ok"}';
	
	END
	ELSE
	BEGIN
		SET @res=@res+'0","msg_end":"ok"}';	
	END;

	RETURN(@res)
END



GO


