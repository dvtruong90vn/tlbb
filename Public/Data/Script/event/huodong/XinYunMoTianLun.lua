--ÐÔ¸£Ä¦ÌìÂÖ
--Ð»ãp

x889055_g_ScriptId = 889055;

--»î¶¯M· ra ÈÕÆÚ 2009-4-8
x889055_g_BeginTime		= 20090408
x889055_g_EndTime		= 20090531
--x889055_g_ExchangeEndTime	= 20090531

--¶mµt »²¿¼þID
x889055_g_PartID		= 
{
	30504083,	--Çì
	30504082,	--Äê
	30504081,	--ÖÜ
	30504079,	--Ìì
	30504080,	--Áú
}

--¼ÍÄîÕÂ
x889055_g_ItemID		= 30504072

--¶mµt »BUFF
x889055_g_BuffID		= 20005

--ÎïÆ·µÈc¤pÏÞÖÆ
x889055_g_LimitLevel	= 10
--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x889055_OnEnumerate( sceneId, selfId, targetId )
	
	if x889055_IsInActTime( sceneId, selfId ) > 0 then
		AddNumText(sceneId, x889055_g_ScriptId, "#{XFMTL_20090319_20}", 6, 1);
	end
	
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x889055_OnDefaultEvent( sceneId, selfId, targetId )
	
	local opt = GetNumText();
	if opt == 1 then
		BeginEvent(sceneId)			
			AddText(sceneId, "#{XFMTL_20090319_06}");
			AddNumText(sceneId, x889055_g_ScriptId, "#{XFMTL_20090319_15}", 6, 11);		--Lînh ÐÒ¸£Ä¦ÌìÂÖ´ó½±
			AddNumText(sceneId, x889055_g_ScriptId, "#{XFMTL_20090319_16}", 6, 12);		--»»È¡Thiên LongÖÜÄÐúngìBUFF
			AddNumText(sceneId, x889055_g_ScriptId, "#{XFMTL_20090319_17}", 11, 13);		--ÐÒ¸£Ä¦ÌìÂÖ°ïÖú
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId)
	elseif opt == 11 then
		x889055_GivePrize( sceneId, selfId, targetId )
	elseif opt == 12 then
		BeginEvent(sceneId)			
			AddText(sceneId, "#{XFMTL_20090319_11}");
			AddNumText(sceneId, x889055_g_ScriptId, "#{XFMTL_20090319_18}", 6, 121);	--Tiªn hành ð±i
			AddNumText(sceneId, x889055_g_ScriptId, "#{XFMTL_20090319_19}", 6, 122);	--Chßa chu¦n b¸ t¯t
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId)
	elseif opt == 13 then
		x889055_ReturnDlg( sceneId, selfId, targetId, "#{XFMTL_20090319_14}" )
	elseif opt == 121 then
		x889055_AddBuff( sceneId, selfId, targetId )
	elseif opt == 122 then
		x889055_CloseDlg( sceneId, selfId, targetId )
	end
	
end

--**********************************
--Ðúng·ñTÕi »î¶¯Ê±¼äÄÚ,ÐúngÔòTr· v«µ±ÌìÈÕÆÚ,·ñÔòTr· v«0
--**********************************
function x889055_IsInActTime( sceneId, selfId )

	local curDate = GetTime2Day()
	if curDate >= x889055_g_BeginTime and curDate <= x889055_g_EndTime then
		return curDate
	else
		return 0
	end
	
end

--**********************************
--½±Àø
--**********************************
function x889055_GivePrize( sceneId, selfId, targetId )

	-- Ðúng·ñTÕi »î¶¯Ê±¼äÄÚ
	if x889055_IsInActTime( ) <= 0 then
		x889055_CloseDlg( sceneId, selfId, targetId )
		return
	end
	
	-- µÈc¤p´óÓÚ10
	local level = GetLevel( sceneId, selfId )
	if level < x889055_g_LimitLevel then
		x889055_ReturnDlg( sceneId, selfId, targetId, "#{XFMTL_20090319_07}" )
		return	
	end
	
	-- ÎïÆ·Ðúng·ñ¹»
	for i, partID in x889055_g_PartID do
		if LuaFnGetAvailableItemCount(sceneId, selfId, partID) < 1 then
			x889055_ReturnDlg( sceneId, selfId, targetId, "#{XFMTL_20090319_10}" )
			return
		end
	end
	
	-- ¼ì²é±³°ü¿Õ¼ä
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		x889055_ReturnDlg( sceneId, selfId, targetId, "#{XFMTL_20090319_08}" )
		return
	end
	
	-- É¾³ýÎïÆ·th¤t bÕi,Î´ÖªÔ­Òò,¹Ø±Õ¶Ô»°´°¿Ú
	for j, partID in x889055_g_PartID do
		if LuaFnDelAvailableItem(sceneId, selfId, partID, 1) < 1 then
			x889055_CloseDlg( sceneId, selfId, targetId )
			return
		end
	end
	
	-- ¸øÎïÆ·,¹Ø±Õ´°¿Ú
	TryRecieveItem( sceneId, selfId, x889055_g_ItemID, QUALITY_MUST_BE_CHANGE )
		
	x889055_ReturnDlg( sceneId, selfId, targetId, "#{XFMTL_20090319_09}" )
	
end

--**********************************
--¶mµt »BUFF
--**********************************
function x889055_AddBuff( sceneId, selfId, targetId )

	-- Ðúng·ñTÕi »î¶¯Ê±¼äÄÚ
	if x889055_IsInActTime( ) <= 0 then
		x889055_CloseDlg( sceneId, selfId, targetId )
		return
	end
	
	-- µÈc¤p´óÓÚ10
	local level = GetLevel( sceneId, selfId )
	if level < x889055_g_LimitLevel then
		x889055_ReturnDlg( sceneId, selfId, targetId, "#{XFMTL_20090319_12}" )
		return	
	end

	-- É¾³ýÎïÆ·¼ÓBUFF
	for i, partID in x889055_g_PartID do
		if LuaFnDelAvailableItem(sceneId, selfId, partID, 1) > 0 then
			
			--¼ÓBUFF
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x889055_g_BuffID, 0 )
			
			x889055_CloseDlg( sceneId, selfId, targetId )
			return
		end
	end
	
	x889055_ReturnDlg( sceneId, selfId, targetId, "#{XFMTL_20090319_13}" )
end

--**********************************
--¸øÍæ¼Ò·¢ÓÊ¼þ
--**********************************
function x889055_OnPlayerLogin( sceneId, selfId )
	
	-- Ðúng·ñTÕi »î¶¯Ê±¼äÄÚ
	local curDate = x889055_IsInActTime( )
	if curDate > 0 then
		local lastDate = GetMissionData( sceneId, selfId, MD_TW_XINGFUMOTIANLUN_LAST_MAIL_DATE )
		if lastDate < curDate then
			LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{XFMTL_20090319_01}" )
			SetMissionData(sceneId, selfId, MD_TW_XINGFUMOTIANLUN_LAST_MAIL_DATE, curDate)
		end
	end
	
end

--**********************************
--¹Ø±Õ¶Ô»°¿ò
--**********************************
function x889055_CloseDlg(sceneId, selfId, targetId)
	BeginUICommand( sceneId )
	UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )	
end

--**********************************
--Tr· v«¶Ô»°
--**********************************
function x889055_ReturnDlg(sceneId, selfId, targetId, msg)
	BeginEvent(sceneId)
		AddText(sceneId, msg);
	EndEvent()
	DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ReturnTips
--**********************************
function x889055_Tips(sceneId, selfId, msg)
	BeginEvent(sceneId)
		AddText(sceneId, msg);
	EndEvent()
	DispatchMissionTips(sceneId, selfId)
end

--**********************************
--Tiªp thø
--**********************************
function x889055_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x889055_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x889055_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x889055_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x889055_OnSubmit( sceneId, selfId, targetId,selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x889055_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x889055_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x889055_OnItemChanged( sceneId, selfId, itemdataId )
end

