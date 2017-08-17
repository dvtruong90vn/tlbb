-- Thành ph¯ ÄÚÕşÖ®¹¤³ÌÈÎÎñÖ÷ÊÂ¼ş½Å±¾
-- ½Å±¾ºÅ
x600030_g_ScriptId = 600030

-- ÈÎÎñºÅ
x600030_g_MissionId = 1109

-- Møc tiêu nhi®m vønpc
x600030_g_Name = "Võ ĞÕi Uy"

-- ÈÎÎñÎÄ±¾ÃèÊö
x600030_g_MissionName = "Nhi®m vø qu¯c phòng"
x600030_g_MissionInfo = "Nhi®m vø qu¯c phòng"			--ÈÎÎñÃèÊö
x600030_g_MissionTarget = "  Hoàn thành nhi®m vø Võ ĞÕi Uy"			--Møc tiêu nhi®m vø
x600030_g_ContinueInfo = "  Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"	--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x600030_g_MissionComplete = "  Làm t¯t l¡m, cám ½n các hÕ r¤t nhi«u. "				--Hoàn t¤t nhi®m vønpcËµtoÕ ğµ »°

x600030_g_MissionParam_SubId = 1

-- Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600030_g_CityMissionScript = 600001

-- ×ÓÈÎÎñ±í
x600030_g_SubMissionScriptList = { 600031, 600032, 600033, 600034, 600044 }

-- ÈÎÎñ½±Àø
x600030_g_ItemAwardIndexOffset = 28						-- ÎïÆ·½±ÀøËùTÕi ±í¸ñÖĞtoÕ ğµ ÁĞÆ«ÒÆ, need to modify
x600030_g_MissionRound = MD_CITY_MILITARY_ROUND			-- Thành ph¯ ÄÚÕş¹ú·ÀÈÎÎñ
x600030_g_MissionAbandonTime = MD_CITY_MILITARY_TIME		-- Thành ph¯ ÄÚÕş¹ú·ÀÈÎÎñ·ÅÆúÈÎÎñtoÕ ğµ Ê±¼ä

x600030_g_ContribType = GUILD_CONTRIB_POINT

x600030_g_SpecType = GUILD_DEF_LEVEL

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x600030_OnDefaultEvent( sceneId, selfId, targetId )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾

	if GetName( sceneId, targetId ) ~= x600030_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	local rand = random( getn(x600030_g_SubMissionScriptList) )
	CallScriptFunction( x600030_g_CityMissionScript, "DoDefaultEvent", sceneId, selfId, targetId, x600030_g_MissionId, x600030_g_SubMissionScriptList[rand] )
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x600030_OnEnumerate( sceneId, selfId, targetId )

	if GetLevel(sceneId, selfId) < 40  then
		return
	end

	if GetName( sceneId, targetId ) ~= x600030_g_Name then								--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	--Èç¹ûÒÑ½ÓÈÎÎñ»òThöa mãnÈÎÎñ½ÓÊÕÌõ¼ş,ÔòÁĞ³öÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600030_g_MissionId ) > 0 then
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600030_g_MissionId )
		local subMissionScriptId = GetMissionParam( sceneId, selfId, misIndex, x600030_g_MissionParam_SubId )

		CallScriptFunction( subMissionScriptId, "OnEnumerate", sceneId, selfId, targetId )
	elseif x600030_CheckAccept( sceneId, selfId ) > 0 then
		AddNumText( sceneId, x600030_g_ScriptId, x600030_g_MissionName, 1 )
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş,Ò²¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x600030_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600030_g_CityMissionScript, "DoCheckAccept", sceneId, selfId, x600030_g_MissionId, x600030_g_MissionAbandonTime )

	if GetLevel(sceneId, selfId) < 40  then
		ret = 0
	end

	return ret
end

--**********************************
--Tiªp thø,½ö¹©×ÓÈÎÎñµ÷ÓÃÉèÖÃ¹«¹²²ÎÊı
--**********************************
function x600030_OnAccept( sceneId, selfId, targetId, scriptId )
	if GetName( sceneId, targetId ) ~= x600030_g_Name then								--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	CallScriptFunction( x600030_g_CityMissionScript, "DoAccept", sceneId, selfId, scriptId, x600030_g_MissionId, x600030_g_MissionRound )
end

--**********************************
--·ÅÆú,½ö¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x600030_OnAbandon( sceneId, selfId )
	CallScriptFunction( x600030_g_CityMissionScript, "DoAbandon", sceneId, selfId, x600030_g_MissionId, x600030_g_MissionAbandonTime, x600030_g_MissionRound )
end

--**********************************
--¼ÌĞø
--**********************************
function x600030_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600030_CheckSubmit( sceneId, selfId )
	local ret = CallScriptFunction( x600030_g_CityMissionScript, "DoCheckSubmit", sceneId, selfId, x600030_g_MissionId )
	return ret
end

--**********************************
--Ìá½»,½ö¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x600030_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x600030_CheckSubmit( sceneId, selfId ) == 1 then

		CallScriptFunction( x600030_g_CityMissionScript, "DoSubmit", sceneId, selfId, x600030_g_MissionId, x600030_g_MissionRound )

		-- Kinh nghi®m½±Àø
		local ExpBonus = CallScriptFunction( x600030_g_CityMissionScript, "CalcExpBonus", sceneId, selfId, x600030_g_MissionRound )
		AddExp( sceneId, selfId, ExpBonus )

		-- °ï»á¹±Ï×¶È½±Àø
		local ContribBonus = CallScriptFunction( x600030_g_CityMissionScript, "CalcContribBonus", sceneId, selfId, x600030_g_MissionRound )
		-- print(ContribBonus)
		if ContribBonus > 0 then
			CityChangeAttr( sceneId, selfId, x600030_g_ContribType, ContribBonus )
		end

		-- ×¨Òµ½±Àø
		local SpecBonus = CallScriptFunction( x600030_g_CityMissionScript, "CalcSpecBonus", sceneId, selfId, x600030_g_MissionRound )
		-- print(SpecBonus)
		if SpecBonus > 0 then
		--	CityGetAttr( sceneId, selfId, x600030_g_SpecRate )
			CityChangeAttr( sceneId, selfId, x600030_g_SpecType, SpecBonus )
		end

		-- ÎïÆ·½±Àø
		CallScriptFunction( x600030_g_CityMissionScript, "RandomItemAward", sceneId, selfId,
			x600030_g_MissionRound, x600030_g_ItemAwardIndexOffset )

		-- Í³¼ÆĞÅÏ¢
		LuaFnAuditQuest(sceneId, selfId, x600030_g_MissionName)

		-- ¼ÇÂ¼Íæ¼ÒÍê³ÉÁËmµt cáiÈÎÎñ
		CallScriptFunction( x600030_g_CityMissionScript, "MissionComplete", sceneId, selfId )

	end

end

--**********************************
-- ÅĞ¶ÏÄ³cáiÊÂ¼şºÅĞúng·ñ´æTÕi ÓÚµ±Ç°ÊÂ¼şÁĞ±í
--**********************************
function x600030_IsInEventList( sceneId, selfId, eventId )
	local i = 1
	local findId = 0

	for i, findId in x600030_g_SubMissionScriptList do
		if eventId == findId then
			return 1
		end
	end

	return 0
end

