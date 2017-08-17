-- Thành ph¯ ÄÚÕşÖ®ÊĞ¼¯ÈÎÎñÖ÷ÊÂ¼ş½Å±¾
-- ½Å±¾ºÅ
x600017_g_ScriptId = 600017

-- ÈÎÎñºÅ
x600017_g_MissionId = 1108

-- Møc tiêu nhi®m vønpc
x600017_g_Name = "Mµc D¸ch"

-- ÈÎÎñÎÄ±¾ÃèÊö
x600017_g_MissionName = "Nhi®m vø thß½ng nghi®p"
x600017_g_MissionInfo = "Nµi chính thành th¸ - nhi®m vø th¸ t§p"			--ÈÎÎñÃèÊö
x600017_g_MissionTarget = "Hoàn thành nhi®m vø Mµc D¸ch"			--Møc tiêu nhi®m vø
x600017_g_ContinueInfo = "    Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"	--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x600017_g_MissionComplete = "Cám ½n các hÕ nhi«u"				--Hoàn t¤t nhi®m vønpcËµtoÕ ğµ »°

x600017_g_MissionParam_SubId = 1

-- Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600017_g_CityMissionScript = 600001

-- ×ÓÈÎÎñ±í
x600017_g_SubMissionScriptList = { 600018, 600019, 600020, 600021 }

-- ÈÎÎñ½±Àø
x600017_g_ItemAwardIndexOffset = 14						-- ÎïÆ·½±ÀøËùTÕi ±í¸ñÖĞtoÕ ğµ ÁĞÆ«ÒÆ

x600017_g_MissionRound = MD_CITY_MARKET_ROUND			-- »·Êı
x600017_g_MissionAbandonTime = MD_CITY_MARKET_TIME		-- ·ÅÆúÊ±¼ä

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x600017_OnDefaultEvent( sceneId, selfId, targetId )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	if GetName( sceneId, targetId ) ~= x600017_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	local rand = random( getn(x600017_g_SubMissionScriptList) )
	CallScriptFunction( x600017_g_CityMissionScript, "DoDefaultEvent", sceneId, selfId, targetId, x600017_g_MissionId, x600017_g_SubMissionScriptList[rand] )
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x600017_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600017_g_Name then								--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	--Èç¹ûÒÑ½ÓÈÎÎñ»òThöa mãnÈÎÎñ½ÓÊÕÌõ¼ş,ÔòÁĞ³öÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600017_g_MissionId ) > 0 then
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600017_g_MissionId )
		local subMissionScriptId = GetMissionParam( sceneId, selfId, misIndex, x600017_g_MissionParam_SubId )

		CallScriptFunction( subMissionScriptId, "OnEnumerate", sceneId, selfId, targetId )
	elseif x600017_CheckAccept( sceneId, selfId ) > 0 then
		AddNumText( sceneId, x600017_g_ScriptId, x600017_g_MissionName,4,-1 )
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş,Ò²¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x600017_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600017_g_CityMissionScript, "DoCheckAccept", sceneId, selfId, x600017_g_MissionId, x600017_g_MissionAbandonTime )
	return ret
end

--**********************************
--Tiªp thø,½ö¹©×ÓÈÎÎñµ÷ÓÃÉèÖÃ¹«¹²²ÎÊı
--**********************************
function x600017_OnAccept( sceneId, selfId, targetId, scriptId )
	if GetName( sceneId, targetId ) ~= x600017_g_Name then								--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	CallScriptFunction( x600017_g_CityMissionScript, "DoAccept", sceneId, selfId, scriptId, x600017_g_MissionId, x600017_g_MissionRound )
end

--**********************************
--·ÅÆú,½ö¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x600017_OnAbandon( sceneId, selfId )
	CallScriptFunction( x600017_g_CityMissionScript, "DoAbandon", sceneId, selfId, x600017_g_MissionId, x600017_g_MissionAbandonTime, x600017_g_MissionRound )
end

--**********************************
--¼ÌĞø
--**********************************
function x600017_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600017_CheckSubmit( sceneId, selfId )
	local ret = CallScriptFunction( x600017_g_CityMissionScript, "DoCheckSubmit", sceneId, selfId, x600017_g_MissionId )
	return ret
end

--**********************************
--Ìá½»,½ö¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x600017_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x600017_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600017_g_CityMissionScript, "DoSubmit", sceneId, selfId, x600017_g_MissionId, x600017_g_MissionRound )

		-- Kinh nghi®m½±Àø
		local ExpBonus = CallScriptFunction( x600017_g_CityMissionScript, "CalcExpBonus", sceneId, selfId, x600017_g_MissionRound )
		AddExp( sceneId, selfId, ExpBonus )

		-- °ï»á¹±Ï×¶È½±Àø
		local ContribBonus = CallScriptFunction( x600017_g_CityMissionScript, "CalcContribBonus", sceneId, selfId, x600017_g_MissionRound )
		-- print(ContribBonus)
		if ContribBonus > 0 then
			CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, ContribBonus )
		end

		-- ×¨Òµ½±Àø
		local SpecBonus = CallScriptFunction( x600017_g_CityMissionScript, "CalcSpecBonus", sceneId, selfId, x600017_g_MissionRound )
		-- print(SpecBonus)
		if SpecBonus > 0 then
			CityChangeAttr( sceneId, selfId, GUILD_COM_LEVEL, SpecBonus )
		end

		-- ÎïÆ·½±Àø
		CallScriptFunction( x600017_g_CityMissionScript, "RandomItemAward", sceneId, selfId,
			x600017_g_MissionRound, x600017_g_ItemAwardIndexOffset )
		
		-- ÈÛÁ¶·û½±Àø
		CallScriptFunction( x600017_g_CityMissionScript, "RandomItemMeltingAward", sceneId, selfId,
			x600017_g_MissionRound )

		-- Í³¼ÆĞÅÏ¢
		LuaFnAuditQuest(sceneId, selfId, x600017_g_MissionName)

		-- ¼ÇÂ¼Íæ¼ÒÍê³ÉÁËmµt cáiÈÎÎñ
		CallScriptFunction( x600017_g_CityMissionScript, "MissionComplete", sceneId, selfId)
	end
end

--**********************************
-- ÅĞ¶ÏÄ³cáiÊÂ¼şºÅĞúng·ñ´æTÕi ÓÚµ±Ç°ÊÂ¼şÁĞ±í
--**********************************
function x600017_IsInEventList( sceneId, selfId, eventId )
	local i = 1
	local findId = 0

	for i, findId in x600017_g_SubMissionScriptList do
		if eventId == findId then
			return 1
		end
	end

	return 0
end

