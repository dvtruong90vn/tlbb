-- Thành ph¯ ÄÚÕşÖ®À©ÕÅÈÎÎñÖ÷ÊÂ¼ş½Å±¾
-- ½Å±¾ºÅ
x600023_g_ScriptId = 600023

-- ÈÎÎñºÅ
x600023_g_MissionId = 1110

-- Møc tiêu nhi®m vønpc
x600023_g_Name = "Ğông Phù Dung"

-- ÈÎÎñÎÄ±¾ÃèÊö
x600023_g_MissionName = "Nhi®m vø khuªch trß½ng"
x600023_g_MissionInfo = "Nµi chính thành th¸ - nhi®m vø m· rµng"			--ÈÎÎñÃèÊö
x600023_g_MissionTarget = "Hoàn thành nhi®m vø Ğ°ng Phù Dung"			--Møc tiêu nhi®m vø
x600023_g_ContinueInfo = "    Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"	--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x600023_g_MissionComplete = "Cám ½n các hÕ nhi«u"				--Hoàn t¤t nhi®m vønpcËµtoÕ ğµ »°

x600023_g_MissionParam_SubId = 1

-- Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600023_g_CityMissionScript = 600001

-- ×ÓÈÎÎñ±í
x600023_g_SubMissionScriptList = { 600024, 600025, 600026, 600027 }

-- ÈÎÎñ½±Àø
x600023_g_ItemAwardIndexOffset = 28						-- ÎïÆ·½±ÀøËùTÕi ±í¸ñÖĞtoÕ ğµ ÁĞÆ«ÒÆ
x600023_g_MissionRound = MD_CITY_EXPAND_ROUND			-- Thành ph¯ ÄÚÕşÀ©ÕÅÈÎÎñ
x600023_g_MissionAbandonTime = MD_CITY_EXPAND_TIME		-- Thành ph¯ ÄÚÕşÀ©ÕÅÈÎÎñ·ÅÆúÈÎÎñtoÕ ğµ Ê±¼ä
x600023_g_ContribType = GUILD_CONTRIB_POINT				-- °ï»á¹±Ï×¶È
x600023_g_SpecType = GUILD_AMBI_LEVEL					-- ×¨ÒµÖµ½±Àø
x600023_g_SpecRate = GUILD_AMBI_RATE					-- ×¨ÒµÂÉ

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x600023_OnDefaultEvent( sceneId, selfId, targetId )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	if GetName( sceneId, targetId ) ~= x600023_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	local rand = random( getn(x600023_g_SubMissionScriptList) )
	CallScriptFunction( x600023_g_CityMissionScript, "DoDefaultEvent", sceneId, selfId, targetId, x600023_g_MissionId, x600023_g_SubMissionScriptList[rand] )
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x600023_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600023_g_Name then								--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	--Èç¹ûÒÑ½ÓÈÎÎñ»òThöa mãnÈÎÎñ½ÓÊÕÌõ¼ş,ÔòÁĞ³öÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600023_g_MissionId ) > 0 then
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600023_g_MissionId )
		local subMissionScriptId = GetMissionParam( sceneId, selfId, misIndex, x600023_g_MissionParam_SubId )

		CallScriptFunction( subMissionScriptId, "OnEnumerate", sceneId, selfId, targetId )
	elseif x600023_CheckAccept( sceneId, selfId ) > 0 then
		AddNumText( sceneId, x600023_g_ScriptId, x600023_g_MissionName,4,-1 )
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş,Ò²¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x600023_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600023_g_CityMissionScript, "DoCheckAccept", sceneId, selfId, x600023_g_MissionId, x600023_g_MissionAbandonTime )
	return ret
end

--**********************************
--Tiªp thø,½ö¹©×ÓÈÎÎñµ÷ÓÃÉèÖÃ¹«¹²²ÎÊı
--**********************************
function x600023_OnAccept( sceneId, selfId, targetId, scriptId )
	if GetName( sceneId, targetId ) ~= x600023_g_Name then								--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	CallScriptFunction( x600023_g_CityMissionScript, "DoAccept", sceneId, selfId, scriptId, x600023_g_MissionId, x600023_g_MissionRound )
end

--**********************************
--·ÅÆú,½ö¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x600023_OnAbandon( sceneId, selfId )
	CallScriptFunction( x600023_g_CityMissionScript, "DoAbandon", sceneId, selfId, x600023_g_MissionId, x600023_g_MissionAbandonTime, x600023_g_MissionRound )
end

--**********************************
--¼ÌĞø
--**********************************
function x600023_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600023_CheckSubmit( sceneId, selfId )
	local ret = CallScriptFunction( x600023_g_CityMissionScript, "DoCheckSubmit", sceneId, selfId, x600023_g_MissionId )
	return ret
end

--**********************************
--Ìá½»,½ö¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x600023_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x600023_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600023_g_CityMissionScript, "DoSubmit", sceneId, selfId, x600023_g_MissionId, x600023_g_MissionRound )

		-- Kinh nghi®m½±Àø
		local ExpBonus = CallScriptFunction( x600023_g_CityMissionScript, "CalcExpBonus", sceneId, selfId, x600023_g_MissionRound )
		AddExp( sceneId, selfId, ExpBonus )

		-- °ï»á¹±Ï×¶È½±Àø
		local ContribBonus = CallScriptFunction( x600023_g_CityMissionScript, "CalcContribBonus", sceneId, selfId, x600023_g_MissionRound )
		-- print(ContribBonus)
		if ContribBonus > 0 then
			CityChangeAttr( sceneId, selfId, x600023_g_ContribType, ContribBonus )
		end

		-- ×¨Òµ½±Àø
		local SpecBonus = CallScriptFunction( x600023_g_CityMissionScript, "CalcSpecBonus", sceneId, selfId, x600023_g_MissionRound )
		-- print(SpecBonus)
		if SpecBonus > 0 then
		--	CityGetAttr( sceneId, selfId, x600023_g_SpecRate )
			CityChangeAttr( sceneId, selfId, x600023_g_SpecType, SpecBonus )
		end

		-- ÎïÆ·½±Àø
		CallScriptFunction( x600023_g_CityMissionScript, "RandomItemAward", sceneId, selfId,
			x600023_g_MissionRound, x600023_g_ItemAwardIndexOffset )

		-- Í³¼ÆĞÅÏ¢
		LuaFnAuditQuest(sceneId, selfId, x600023_g_MissionName)

		-- ¼ÇÂ¼Íæ¼ÒÍê³ÉÁËmµt cáiÈÎÎñ
		CallScriptFunction( x600023_g_CityMissionScript, "MissionComplete", sceneId, selfId)
	end
end

--**********************************
-- ÅĞ¶ÏÄ³cáiÊÂ¼şºÅĞúng·ñ´æTÕi ÓÚµ±Ç°ÊÂ¼şÁĞ±í
--**********************************
function x600023_IsInEventList( sceneId, selfId, eventId )
	local i = 1
	local findId = 0

	for i, findId in x600023_g_SubMissionScriptList do
		if eventId == findId then
			return 1
		end
	end

	return 0
end

