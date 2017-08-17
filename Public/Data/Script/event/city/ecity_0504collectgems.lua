-- ÊÕ¼¯±¦Ê¯
--MisDescBegin
-- ½Å±¾ºÅ
x600027_g_ScriptId = 600027

--ÈÎÎñºÅ
x600027_g_MissionId = 1110

--Møc tiêu nhi®m vønpc
x600027_g_Name = "Ðông Phù Dung"

--ÈÎÎñ¹éÀà
x600027_g_MissionKind = 50

--ÐÆng c¤p nhi®m vø 
x600027_g_MissionLevel = 10000

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x600027_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîÐúng¶¯Ì¬ÏÔÊ¾toÕ ðµ ÄÚÈÝ,ÓÃÓÚTÕi ÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
x600027_g_IsMissionOkFail			=0	--0 Nhi®m vø hoàn thành±ê¼Ç[Öµ²»ÄÜ±ä]
x600027_g_MissionParam_SubId		=1	--1 ×ÓÈÎÎñ½Å±¾ºÅ´æ·ÅÎ»ÖÃ[Öµ²»ÄÜ±ä]
x600027_g_GemCount					=2	--2 C¥n toÕ ðµ ±¦Ê¯ÊýÁ¿
x600027_g_GemSerialNum				=3	--3 C¥n toÕ ðµ ±¦Ê¯

--ÒÔÉÏÐúng¶¯Ì¬**************************************************************

--ÈÎÎñ±äÁ¿µÚmµt Î»ÓÃÀ´´æ´¢Ëæ»ú ði¬mµ½toÕ ðµ ½Å±¾ºÅ

--ÈÎÎñÎÄ±¾ÃèÊö
x600027_g_MissionName = "Nhi®m vø khuªch trß½ng"
x600027_g_MissionInfo = ""			--ÈÎÎñÃèÊö
x600027_g_MissionTarget = "    Tìm %s cái %i ðßa cho b±n bang Ð°ng Phù Dung (148, 96). "	--Møc tiêu nhi®m vø
x600027_g_ContinueInfo = "    Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"					--Î´Hoàn t¤t nhi®m vøtoÕ ðµ npc¶Ô»°
x600027_g_SubmitInfo = "    Sñ tình tiªn tri¬n nhß thª nào r°i?"							--Íê³ÉÎ´Ìá½»Ê±toÕ ðµ npc¶Ô»°
x600027_g_MissionComplete = "     R¤t t¯t r¤t t¯t. "							--Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°

x600027_g_Parameter_Item_AllRandom = { { id = 3, num = 2 } }

x600027_g_StrForePart = 2
x600027_g_Offset = 35													-- Suppose to ?, ±íÀïµÚ¼¸cáiÎïÆ·ÁÐtoÕ ðµ Æ«ÒÆÁ¿

x600027_g_MissionRound = 55

-- Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600027_g_CityMissionScript = 600001
x600027_g_ExpandScript = 600023

x600027_g_StrList = { " 0 ", " 1 ", " 2 ", " 3 ", " 4 ", " 5 ", " 6 ", " 7 ", " 8 ", " 9 ", " 10 " }

--ÈÎÎñ½±Àø


--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x600027_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	if GetName( sceneId, targetId ) ~= x600027_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600027_g_MissionId ) > 0 then
		--·¢ËÍÈÎÎñÐèÇótoÕ ðµ ÐÅÏ¢
		local bDone = x600027_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600027_g_SubmitInfo
		else
			strText = x600027_g_ContinueInfo
		end

		--·¢ËÍÈÎÎñÐèÇótoÕ ðµ ÐÅÏ¢
		BeginEvent( sceneId )
			AddText( sceneId, x600027_g_MissionName )
			AddText( sceneId, strText )
		EndEvent( )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600027_g_ScriptId, x600027_g_MissionId, bDone )
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x600027_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600027_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600027_OnAccept( sceneId, selfId, targetId )
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x600027_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600027_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

   --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600027_g_MissionId ) > 0 then
		AddNumText( sceneId, x600027_g_ScriptId, x600027_g_MissionName,3,-1 )
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x600027_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600027_g_ExpandScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--¸ù¾ÝÏàÓ¦½¨Öþ ði¬mµ½¶ÔÓ¦MissionItem_HashTable.txtÖÐtoÕ ðµ µ¥ÔªË÷Òý
--**********************************
function x600027_GetMissionItemIndex( sceneId, selfId )
	local nBuildingLevel = CityGetBuildingLevel( sceneId, selfId, sceneId, CITY_BUILDING_XIANYA )
	local nPos

	if nBuildingLevel == 0 then								-- 1
		nPos = x600027_g_Offset
	elseif nBuildingLevel == 1 then							-- 2
		nPos = x600027_g_Offset + 1
	elseif nBuildingLevel == 2 then							-- 3
		nPos = x600027_g_Offset + 2
	elseif nBuildingLevel == 3 then							-- 4
		nPos = x600027_g_Offset + 3
	else													-- 5
		nPos = 161
	end

	return nPos
end

--**********************************
--¸ù¾ÝÍæ¼ÒµÈc¤p ði¬mµ½C¥n ÕÒÑ°toÕ ðµ ±¦Ê¯ÊýÁ¿
--**********************************
function x600027_GetMissionItemCount( sceneId, selfId )
	local nPlayerLevel = GetLevel( sceneId, selfId )
	local nCount

	if nPlayerLevel < 55 then								-- 40 ~ 54
		nCount = 1
	elseif nPlayerLevel < 70 then							-- 55 ~ 69
		nCount = random(2)
	elseif nPlayerLevel < 85 then							-- 70 ~ 84
		nCount = random(2)
	else													-- 85 ~ 100
		nCount = random(3)
	end

	return nCount
end

--**********************************
--Tiªp thø
--**********************************
function x600027_OnAccept( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600027_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

	if GetLevel( sceneId, selfId ) < 40 then
		CallScriptFunction( x600027_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Không ðü ðÆng c¤p" )
		return
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId, selfId, x600027_g_MissionId, x600027_g_ScriptId, 0, 0, 1 )	-- kill¡¢area¡¢item
	if IsHaveMission( sceneId, selfId, x600027_g_MissionId ) <= 0 then
		return
	end

	CallScriptFunction( x600027_g_ExpandScript, "OnAccept", sceneId, selfId, targetId, x600027_g_ScriptId )

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600027_g_MissionId )
	local nitemId, strItemName, _ = GetOneMissionItem( x600027_GetMissionItemIndex( sceneId, selfId ) )
	local nCount = x600027_GetMissionItemCount( sceneId, selfId )

	SetMissionByIndex( sceneId, selfId, misIndex, x600027_g_GemSerialNum, nitemId )
	SetMissionByIndex( sceneId, selfId, misIndex, x600027_g_GemCount, nCount )

	--ÏÔÊ¾ÄÚÈÝ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
	BeginEvent( sceneId )
		local missionInfo
		if random(2) == 1 then
			missionInfo = format( "    Bang ta vì mu¯n kªt giao giang h° hi®p khách, c¥n làm mµt s¯ ð° công ngh® ph¦m, các hÕ c¤p t¯c tìm %d %s hµ ta v«", nCount, strItemName )
		else
			missionInfo = format( "    Bang ta c¥n %d %s ð¬ kªt giao v¾i hào ki®t giang h°, nhi®m vø tìm %s ch¡c ch¡n chï có các hÕ chÑ không còn ai khác", nCount, strItemName, strItemName )
		end

		AddText( sceneId, missionInfo )
		AddText( sceneId, "#rCác hÕ ðã nh§n " .. x600027_g_MissionName )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

	-- ¼ì²âÉíÉÏÐúng·ñÒÑÓÐ´ËÎïÆ·
	if LuaFnGetAvailableItemCount( sceneId, selfId, nitemId ) > 0 then
		x600027_OnItemChanged( sceneId, selfId, nitemId )
	end
end

--**********************************
--·ÅÆú
--**********************************
function x600027_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
	CallScriptFunction( x600027_g_ExpandScript, "OnAbandon", sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x600027_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600027_g_MissionName )
		AddText( sceneId, x600027_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600027_g_ScriptId, x600027_g_MissionId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600027_CheckSubmit( sceneId, selfId )
	local ret = CallScriptFunction( x600027_g_ExpandScript, "CheckSubmit", sceneId, selfId )

	if ret == 1 then
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600027_g_MissionId )
		local demandItemId = GetMissionParam( sceneId, selfId, misIndex, x600027_g_GemSerialNum )
		local nCountNeeded = GetMissionParam( sceneId, selfId, misIndex, x600027_g_GemCount )
		local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, demandItemId )

		if nItemNum < nCountNeeded then
			ret = 0
		end
	end

	return ret
end

--**********************************
--Ìá½»
--**********************************
function x600027_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600027_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

	if x600027_CheckSubmit( sceneId, selfId ) == 1 then
		-- ¿Û¶«Î÷
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600027_g_MissionId )
		local demandItemId = GetMissionParam( sceneId, selfId, misIndex, x600027_g_GemSerialNum )
		local nCountNeeded = GetMissionParam( sceneId, selfId, misIndex, x600027_g_GemCount )
		local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, demandItemId )

		if nItemNum >= nCountNeeded then
			LuaFnDelAvailableItem( sceneId, selfId, demandItemId, nCountNeeded )
		else											-- Ö»×÷ÎªÈÝ´í,ÀíÂÛÉÏ²»¿ÉÄÜ·¢Éú
			SetMissionByIndex( sceneId, selfId, misIndex, x600027_g_IsMissionOkFail, 0 )
			return
		end

		CallScriptFunction( x600027_g_ExpandScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x600027_OnKillObject( sceneId, selfId, objdataId, objId )	--²ÎÊýÒâË¼: ³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎïobjId
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x600027_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x600027_OnItemChanged( sceneId, selfId, itemdataId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600027_g_MissionId )

	local _, strItemName, _ = GetItemInfoByItemId( itemdataId )
	local demandItemId = GetMissionParam( sceneId, selfId, misIndex, x600027_g_GemSerialNum )
	local nCountNeeded = GetMissionParam( sceneId, selfId, misIndex, x600027_g_GemCount )
	local _, strDemandItemName, _ = GetItemInfoByItemId( demandItemId )

	if strItemName == strDemandItemName then
		local nItemNum = GetItemCount( sceneId, selfId, itemdataId )
		local strText = format( "Có ðßþc %s %d/%d", strItemName, nItemNum, nCountNeeded )

		if nItemNum <= nCountNeeded then
			SetMissionByIndex( sceneId, selfId, misIndex, x600027_g_IsMissionOkFail, 0 )
		end

		if nItemNum >= nCountNeeded then
			SetMissionByIndex( sceneId, selfId, misIndex, x600027_g_IsMissionOkFail, 1 )
		end
		if (strText and nItemNum <= nCountNeeded) then
			CallScriptFunction( x600027_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, strText )
		end
	end
end
