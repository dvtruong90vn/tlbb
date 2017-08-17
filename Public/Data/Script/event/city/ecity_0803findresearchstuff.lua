--¸±±¾ÈÎÎñ
--ÕÒµ½Ô­ÁÏ

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x600043_g_ScriptId	= 600043
--ÈÎÎñºÅ
x600043_g_MissionId	= 1113
--Ä¿±êNPC
x600043_g_Name			= "Tr¸nh Vô Danh"
--ÐÆng c¤p nhi®m vø 
x600043_g_MissionLevel					= 10000
--ÈÎÎñ¹éÀà
x600043_g_MissionKind						= 50
--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x600043_g_IfMissionElite				= 0

--********ÏÂÃæ¼¸ÏîÐúng¶¯Ì¬ÏÔÊ¾toÕ ðµ ÄÚÈÝ,ÓÃÓÚTÕi ÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
--½ÇÉ«Mission±äÁ¿Ë ði¬m÷
x600043_g_IsMissionOkFail				= 0	--0 Nhi®m vø hoàn thành±ê¼Ç
x600043_g_MissionParam_SubId		= 1	--1 ×ÓÈÎÎñ½Å±¾ºÅ´æ·ÅÎ»ÖÃ
x600043_g_MissionParam_Phase		= 2	--2 ½×¶ÎºÅ ´ËºÅÓÃÓÚÇø·Öµ±Ç°ÈÎÎñUItoÕ ðµ ÃèÊöÐÅÏ¢
x600043_g_MissionParam_NpcId		= 3	--3 ÈÎÎñ NPC toÕ ðµ  NPCId ºÅ
x600043_g_MissionParam_ItemId		= 4	--4 ÈÎÎñÎïÆ·toÕ ðµ ±àºÅ
x600043_g_MissionParam_MonsterId= 5	--5 ÈÎÎñ Monster toÕ ðµ  NPCId ºÅ
x600043_g_MissionParam_IsCarrier= 6	--6 Ðúng·ñÓÐËÍÐÅÈÎÎñ
--Ñ­»·ÈÎÎñtoÕ ðµ Êý¾ÝË÷Òý,ÀïÃæ´æ×ÅÒÑ×ötoÕ ðµ »·Êý
x600043_g_MissionRound					= 61
--**********************************ÒÔÉÏÐúng¶¯Ì¬****************************

--ÈÎÎñÎÄ±¾ÃèÊö
x600043_g_MissionName			= "Nghiên cÑu nhi®m vø"
x600043_g_MissionInfo			= "Nµi chính thành th¸ - nhi®m vø nghiên cÑu"									--ÈÎÎñÃèÊö
x600043_g_MissionTarget		= "%f"																	--Møc tiêu nhi®m vø
x600043_g_ContinueInfo		= "    Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"					--Î´Hoàn t¤t nhi®m vøtoÕ ðµ npc¶Ô»°
x600043_g_SubmitInfo			= "    Sñ tình tiªn tri¬n nhß thª nào r°i?"								--Íê³ÉÎ´Ìá½»Ê±toÕ ðµ npc¶Ô»°
x600043_g_MissionComplete	= "    R¤t t¯t r¤t t¯t, tiªn ðµ nghiên cÑu tång nhanh không ít. "--Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°

x600043_g_Parameter_Item_IDRandom = { { id = 4, num = 1 } }

x600043_g_StrForePart			= 2

--ÓÃÀ´±£´æ×Ö·û´®¸ñÊ½»¯toÕ ðµ Êý¾Ý
x600043_g_FormatList			= {
	"",
	"    Tìm th¤y %2i, giao cho bang hµi ÐÕi chü quän. ",	--1 Ñ°ÕÒËùÐèÎïÆ·
	"    T× %2i giao trä lÕi cho bang hµi ÐÕi chü quän. "			--2 ËÍ»¹
}

--Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600043_g_CityMissionScript	= 600001
x600043_g_ConstructionScript= 600040

--ÈÎÎñ½±Àø

--MisDescEnd
--************************************************************************

x600043_g_ItemOffset			= 31	--±íÀïµÚ¼¸cáiÎïÆ·ÁÐtoÕ ðµ Æ«ÒÆÁ¿

--½×¶ÎÈÎÎñ
x600043_g_PhaseKey				= {}
x600043_g_PhaseKey["fnd"]	= 1		--Ñ°ÕÒËùÐèÎïÆ·
x600043_g_PhaseKey["end"]	= 2		--ËÍ»¹

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x600043_OnDefaultEvent( sceneId, selfId, targetId )

	--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
	if GetName( sceneId, targetId ) ~= x600043_g_Name then
		return
	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600043_g_MissionId ) > 0 then
		local bDone = x600043_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600043_g_SubmitInfo
		else
			strText = x600043_g_ContinueInfo
		end

		BeginEvent( sceneId )
			AddText( sceneId, x600043_g_MissionName )
			AddText( sceneId, strText )
		EndEvent( )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600043_g_ScriptId, x600043_g_MissionId, bDone )

	--Î´½Ó´ËÈÎÎñ,ÇÒThöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x600043_CheckAccept( sceneId, selfId ) > 0 then
		x600043_OnAccept( sceneId, selfId, targetId )
	end

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x600043_OnEnumerate( sceneId, selfId, targetId )

	--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
	if GetName( sceneId, targetId ) ~= x600043_g_Name then
		return
	end

   --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600043_g_MissionId ) > 0 then
		AddNumText( sceneId, x600043_g_ScriptId, x600043_g_MissionName,3,-1 )
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x600043_CheckAccept( sceneId, selfId )

	local	ret	= CallScriptFunction( x600043_g_ConstructionScript, "CheckAccept", sceneId, selfId )
	return ret

end

--**********************************
--¸ù¾ÝÏàÓ¦½¨Öþ ði¬mµ½¶ÔÓ¦MissionItem_HashTable.txtÖÐtoÕ ðµ µ¥ÔªË÷Òý
--**********************************
function x600043_GetMissionItemIndex( sceneId, selfId )
	local nBuildingLevel = CityGetBuildingLevel( sceneId, selfId, sceneId, CITY_BUILDING_SHUFANG )
	local nPos

	if nBuildingLevel == 0 then								-- 1
		nPos = x600043_g_ItemOffset
	elseif nBuildingLevel == 1 then							-- 2
		nPos = x600043_g_ItemOffset + 1
	elseif nBuildingLevel == 2 then							-- 3
		nPos = x600043_g_ItemOffset + 2
	elseif nBuildingLevel == 3 then							-- 4
		nPos = x600043_g_ItemOffset + 3
	else													-- 5
		nPos = 160
	end

	return nPos
end

--**********************************
--Tiªp thø
--**********************************
function x600043_OnAccept( sceneId, selfId, targetId )

	--Ã»ÓÐÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
	if IsHaveMission( sceneId, selfId, x600043_g_MissionId ) == 0 then
		if GetLevel( sceneId, selfId ) < 10 then
			x600043_NotifyFailTips( sceneId, selfId, "Không ðü ðÆng c¤p" )
			return
		end

		--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
		--LuaFnAddMission²ÎÊýË ði¬m÷: 
		--sceneId, selfId, misId(ÈÎÎñ±àºÅ), scriptId, k(Ðúng·ñ»Øµ÷x600043_OnKillObject), e(Ðúng·ñ»Øµ÷OnEnterArea), i(Ðúng·ñ»Øµ÷OnItemChange)
		--¹¦ÄÜË ði¬m÷: TÕi Íæ¼ÒÉíÉÏÌí¼ÓmisId±àºÅtoÕ ðµ ÈÎÎñ,³É¹¦Tr· v«1
		AddMission( sceneId, selfId, x600043_g_MissionId, x600043_g_ScriptId, 0, 0, 1 )	-- kill¡¢area¡¢item
		if IsHaveMission( sceneId, selfId, x600043_g_MissionId ) <= 0 then
			return
		end

		--ÐÞ¸ÄÍæ¼ÒÉíÉÏmisId±àºÅtoÕ ðµ ÈÎÎñÏàÓ¦ÊÂ¼þ
		--eventId: µ÷ÓÃ½Å±¾±àºÅ,0 KillObj, 1 EnterArea, 2 ItemChanged, 3 PetChanged, 4 LockedTarget
		--×¢²á OnLockedTarget ÊÂ¼þ
--	SetMissionEvent( sceneId, selfId, x600043_g_MissionId, 4 )
		CallScriptFunction( x600043_g_ConstructionScript, "OnAccept", sceneId, selfId, targetId, x600043_g_ScriptId )
		local misIndex	= GetMissionIndexByID( sceneId, selfId, x600043_g_MissionId )

		local nitemId, strItemName = GetOneMissionItem( x600043_GetMissionItemIndex( sceneId, selfId ) )

		SetMissionByIndex( sceneId, selfId, misIndex, x600043_g_MissionParam_Phase, x600043_g_PhaseKey["fnd"] )
		SetMissionByIndex( sceneId, selfId, misIndex, x600043_g_MissionParam_ItemId, nitemId )
		--Ðúng·ñÓÐËÍÐÅÈÎÎñ
		--Èç¹ûÐúng,¹ÖÎï»á²»¶ÏµôÂä"ÊÕÌõÊéÐÅ",´ËÊ±ÒªÇóÍæ¼Ò±ØÐëÍê³Émµt ´Î¸ÃÈÎÎñ
		SetMissionByIndex( sceneId, selfId, misIndex, x600043_g_MissionParam_IsCarrier, 0 )

		--ÏÔÊ¾ÄÚÈÝ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
		local	missionInfo	= format( "    Bang chúng ta trong quá trình nghiên cÑu ðã g£p phäi r¡c r¯i, r¤t c¥n %s làm nguyên li®u, nhi®m vø l¥n này lÕi phi«n các hÕ tìm giúp cho ta",
				strItemName )
		BeginEvent( sceneId )
			AddText( sceneId, x600043_g_MissionName )
			AddText( sceneId, missionInfo )
			AddText( sceneId, "#r    Các hÕ ðã nh§n " .. x600043_g_MissionName )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

		-- ¼ì²âÉíÉÏÐúng·ñÒÑÓÐ´ËÎïÆ·
		if LuaFnGetAvailableItemCount( sceneId, selfId, nitemId ) > 0 then
			x600043_OnItemChanged( sceneId, selfId, nitemId )
		end
	end

end

--**********************************
--·ÅÆú
--**********************************
function x600043_OnAbandon( sceneId, selfId )

	if IsHaveMission( sceneId, selfId, x600043_g_MissionId ) <= 0 then
		return
	end

	--ÆÕÍ¨ÎïÆ·²»C¥n É¾³ý

	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
	CallScriptFunction( x600043_g_ConstructionScript, "OnAbandon", sceneId, selfId )

end

--**********************************
--¼ÌÐø
--**********************************
function x600043_OnContinue( sceneId, selfId, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, x600043_g_MissionName )
		AddText( sceneId, x600043_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600043_g_ScriptId, x600043_g_MissionId )

end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600043_CheckSubmit( sceneId, selfId, selectRadioId )

	--ÅÐ¶ÏÈÎÎñÐúng·ñÒÑ¾­Íê³É
	local ret = CallScriptFunction( x600043_g_ConstructionScript, "CheckSubmit", sceneId, selfId )
	return ret

end

--**********************************
--Ìá½»
--**********************************
function x600043_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
	if GetName( sceneId, targetId ) ~= x600043_g_Name then
		return
	end

	if x600043_CheckSubmit( sceneId, selfId ) == 1 then
		--¿Û¶«Î÷
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600043_g_MissionId )
		local demandItemId = GetMissionParam( sceneId, selfId, misIndex, x600043_g_MissionParam_ItemId )
		local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, demandItemId )

		if nItemNum > 0 then	--³É¹¦Ìá½»
			if LuaFnDelAvailableItem( sceneId, selfId, demandItemId, 1 ) < 1 then
				return
			end
		else									--Ö»×÷ÎªÈÝ´í,ÀíÂÛÉÏ²»¿ÉÄÜ·¢Éú
			SetMissionByIndex( sceneId, selfId, misIndex, x600043_g_IsMissionOkFail, 0 )
			x600043_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi" )
			return
		end

		CallScriptFunction( x600043_g_ConstructionScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x600043_OnKillObject( sceneId, selfId, objdataId, objId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x600043_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x600043_OnItemChanged( sceneId, selfId, itemdataId )

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600043_g_MissionId )
	local _, strItemName = GetItemInfoByItemId( itemdataId )
	local demandItemId = GetMissionParam( sceneId, selfId, misIndex, x600043_g_MissionParam_ItemId )
	local _, strDemandItemName = GetItemInfoByItemId( demandItemId )

	if itemdataId ~= demandItemId then
		return
	end

	local nItemNum	= GetItemCount( sceneId, selfId, itemdataId )
	local strText		= nil
	if nItemNum > 0 then
		strText = format( "L¤y ðßþc %s", strItemName )
		SetMissionByIndex( sceneId, selfId, misIndex, x600043_g_IsMissionOkFail, 1 )
		SetMissionByIndex( sceneId, selfId, misIndex, x600043_g_MissionParam_Phase, x600043_g_PhaseKey["end"] )
	else
		strText = format( "M¤t ði %s", strItemName )
		SetMissionByIndex( sceneId, selfId, misIndex, x600043_g_IsMissionOkFail, 0 )
	end

	if strText ~= nil then
		x600043_NotifyFailTips( sceneId, selfId, strText )
	end

end

--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x600043_NotifyFailTips( sceneId, selfId, Tip )

	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
