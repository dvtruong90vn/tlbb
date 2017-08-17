-- Thành ph¯ ÄÚÕşÖ®¿Æ¼¼ÈÎÎñÖ÷ÊÂ¼ş½Å±¾
-- ½Å±¾ºÅ
x600012_g_ScriptId = 600012

-- ÈÎÎñºÅ
x600012_g_MissionId = 1107

-- Møc tiêu nhi®m vønpc
x600012_g_Name = "Hµi H÷a"

-- ÈÎÎñÎÄ±¾ÃèÊö
x600012_g_MissionName = "Nhi®m vø kÛ thu§t"
x600012_g_MissionInfo = "Nµi chính thành th¸ - Nhi®m vø khoa h÷c kÛ thu§t"			--ÈÎÎñÃèÊö
x600012_g_MissionTarget = "Hoàn thành nhi®m vø C¦u Tä"				--Møc tiêu nhi®m vø
x600012_g_ContinueInfo = "    Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"	--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x600012_g_MissionComplete = "Cám ½n các hÕ nhi«u"				--Hoàn t¤t nhi®m vønpcËµtoÕ ğµ »°

x600012_g_MissionParam_SubId = 1

-- Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600012_g_CityMissionScript = 600001

-- ×ÓÈÎÎñ±í
x600012_g_SubMissionScriptList = { 600013, 600014, 600015, 600016 }

-- ÈÎÎñ½±Àø
x600012_g_ItemAwardIndexOffset = 20						-- ÎïÆ·½±ÀøËùTÕi ±í¸ñÖĞtoÕ ğµ ÁĞÆ«ÒÆ

x600012_g_MissionRound = MD_CITY_SCITECH_ROUND			-- »·Êı
x600012_g_MissionAbandonTime = MD_CITY_SCITECH_TIME		-- ·ÅÆúÊ±¼ä

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x600012_OnDefaultEvent( sceneId, selfId, targetId )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	if GetName( sceneId, targetId ) ~= x600012_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	local rand = random( getn(x600012_g_SubMissionScriptList) )
	CallScriptFunction( x600012_g_CityMissionScript, "DoDefaultEvent", sceneId, selfId, targetId, x600012_g_MissionId, x600012_g_SubMissionScriptList[rand] )
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x600012_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600012_g_Name then								--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	--Èç¹ûÒÑ½ÓÈÎÎñ»òThöa mãnÈÎÎñ½ÓÊÕÌõ¼ş,ÔòÁĞ³öÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600012_g_MissionId ) > 0 then
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600012_g_MissionId )
		local subMissionScriptId = GetMissionParam( sceneId, selfId, misIndex, x600012_g_MissionParam_SubId )

		CallScriptFunction( subMissionScriptId, "OnEnumerate", sceneId, selfId, targetId )
	elseif x600012_CheckAccept( sceneId, selfId ) > 0 then
		AddNumText( sceneId, x600012_g_ScriptId, x600012_g_MissionName,4,-1 )
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş,Ò²¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x600012_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600012_g_CityMissionScript, "DoCheckAccept", sceneId, selfId, x600012_g_MissionId, x600012_g_MissionAbandonTime )
	return ret
end

--**********************************
--Tiªp thø,½ö¹©×ÓÈÎÎñµ÷ÓÃÉèÖÃ¹«¹²²ÎÊı
--**********************************
function x600012_OnAccept( sceneId, selfId, targetId, scriptId )
	if GetName( sceneId, targetId ) ~= x600012_g_Name then								--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	CallScriptFunction( x600012_g_CityMissionScript, "DoAccept", sceneId, selfId, scriptId, x600012_g_MissionId, x600012_g_MissionRound )
end

--**********************************
--·ÅÆú,½ö¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x600012_OnAbandon( sceneId, selfId )
	CallScriptFunction( x600012_g_CityMissionScript, "DoAbandon", sceneId, selfId, x600012_g_MissionId, x600012_g_MissionAbandonTime, x600012_g_MissionRound )
end

--**********************************
--¼ÌĞø
--**********************************
function x600012_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600012_CheckSubmit( sceneId, selfId )
	local ret = CallScriptFunction( x600012_g_CityMissionScript, "DoCheckSubmit", sceneId, selfId, x600012_g_MissionId )
	return ret
end

--**********************************
--Ìá½»,½ö¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x600012_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x600012_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600012_g_CityMissionScript, "DoSubmit", sceneId, selfId, x600012_g_MissionId, x600012_g_MissionRound )

		-- Kinh nghi®m½±Àø
		local ExpBonus = CallScriptFunction( x600012_g_CityMissionScript, "CalcExpBonus", sceneId, selfId, x600012_g_MissionRound )
		AddExp( sceneId, selfId, ExpBonus )

		-- °ï»á¹±Ï×¶È½±Àø
		local ContribBonus = CallScriptFunction( x600012_g_CityMissionScript, "CalcContribBonus", sceneId, selfId, x600012_g_MissionRound )
		-- print(ContribBonus)
		if ContribBonus > 0 then
			CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, ContribBonus )
		end

		-- ×¨Òµ½±Àø
		local SpecBonus = CallScriptFunction( x600012_g_CityMissionScript, "CalcSpecBonus", sceneId, selfId, x600012_g_MissionRound )
		-- print(SpecBonus)
		if SpecBonus > 0 then
			CityChangeAttr( sceneId, selfId, GUILD_TECH_LEVEL, SpecBonus )
		end

		-- ÎïÆ·½±Àø
		CallScriptFunction( x600012_g_CityMissionScript, "RandomItemAward", sceneId, selfId,
			x600012_g_MissionRound, x600012_g_ItemAwardIndexOffset )
		-- Í³¼ÆĞÅÏ¢
		LuaFnAuditQuest(sceneId, selfId, x600012_g_MissionName)

		-- ¼ÇÂ¼Íæ¼ÒÍê³ÉÁËmµt cáiÈÎÎñ
		CallScriptFunction( x600012_g_CityMissionScript, "MissionComplete", sceneId, selfId)
	end
end

--**********************************
-- ÅĞ¶ÏÄ³cáiÊÂ¼şºÅĞúng·ñ´æTÕi ÓÚµ±Ç°ÊÂ¼şÁĞ±í
--**********************************
function x600012_IsInEventList( sceneId, selfId, eventId )
	local i = 1
	local findId = 0

	for i, findId in x600012_g_SubMissionScriptList do
		if eventId == findId then
			return 1
		end
	end

	return 0
end

