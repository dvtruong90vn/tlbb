-- Thành ph¯ ÄÚÕşÖ®·¢Õ¹ÈÎÎñÖ÷ÊÂ¼ş½Å±¾
-- ½Å±¾ºÅ
x600007_g_ScriptId = 600007

-- ÈÎÎñºÅ
x600007_g_MissionId = 1106

-- Møc tiêu nhi®m vønpc
x600007_g_Name = "Chu Thª Hæu"

-- ÈÎÎñÎÄ±¾ÃèÊö
x600007_g_MissionName = "Nhi®m vø phát tri¬n"
x600007_g_MissionInfo = "Nµi chính thành th¸ - nhi®m vø phát tri¬n"			--ÈÎÎñÃèÊö
x600007_g_MissionTarget = "Hoàn thành nhi®m vø Châu Thª Hæu "			--Møc tiêu nhi®m vø
x600007_g_ContinueInfo = "    Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"	--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x600007_g_MissionComplete = "Cám ½n các hÕ nhi«u"				--Hoàn t¤t nhi®m vønpcËµtoÕ ğµ »°

x600007_g_MissionParam_SubId = 1

-- Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600007_g_CityMissionScript = 600001

-- ×ÓÈÎÎñ±í
x600007_g_SubMissionScriptList = { 600008, 600009, 600010, 600011 }

-- ÈÎÎñ½±Àø
x600007_g_ItemAwardIndexOffset = 10						-- ÎïÆ·½±ÀøËùTÕi ±í¸ñÖĞtoÕ ğµ ÁĞÆ«ÒÆ

x600007_g_MissionRound = MD_CITY_DEVELOPMENT_ROUND		-- »·Êı
x600007_g_MissionAbandonTime = MD_CITY_DEVELOPMENT_TIME	-- ·ÅÆúÊ±¼ä

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x600007_OnDefaultEvent( sceneId, selfId, targetId )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	if GetName( sceneId, targetId ) ~= x600007_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	local rand = random( getn(x600007_g_SubMissionScriptList) )
	CallScriptFunction( x600007_g_CityMissionScript, "DoDefaultEvent", sceneId, selfId, targetId, x600007_g_MissionId, x600007_g_SubMissionScriptList[rand] )
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x600007_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600007_g_Name then								--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	--Èç¹ûÒÑ½ÓÈÎÎñ»òThöa mãnÈÎÎñ½ÓÊÕÌõ¼ş,ÔòÁĞ³öÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600007_g_MissionId ) > 0 then
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600007_g_MissionId )
		local subMissionScriptId = GetMissionParam( sceneId, selfId, misIndex, x600007_g_MissionParam_SubId )

		CallScriptFunction( subMissionScriptId, "OnEnumerate", sceneId, selfId, targetId )
	elseif x600007_CheckAccept( sceneId, selfId ) > 0 then
		AddNumText( sceneId, x600007_g_ScriptId, x600007_g_MissionName,4,-1 )
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş,Ò²¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x600007_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600007_g_CityMissionScript, "DoCheckAccept", sceneId, selfId, x600007_g_MissionId, x600007_g_MissionAbandonTime )
	return ret
end

--**********************************
--Tiªp thø,½ö¹©×ÓÈÎÎñµ÷ÓÃÉèÖÃ¹«¹²²ÎÊı
--**********************************
function x600007_OnAccept( sceneId, selfId, targetId, scriptId )
	if GetName( sceneId, targetId ) ~= x600007_g_Name then								--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	CallScriptFunction( x600007_g_CityMissionScript, "DoAccept", sceneId, selfId, scriptId, x600007_g_MissionId, x600007_g_MissionRound )
end

--**********************************
--·ÅÆú,½ö¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x600007_OnAbandon( sceneId, selfId )
	CallScriptFunction( x600007_g_CityMissionScript, "DoAbandon", sceneId, selfId, x600007_g_MissionId, x600007_g_MissionAbandonTime, x600007_g_MissionRound )
end

--**********************************
--¼ÌĞø
--**********************************
function x600007_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600007_CheckSubmit( sceneId, selfId )
	local ret = CallScriptFunction( x600007_g_CityMissionScript, "DoCheckSubmit", sceneId, selfId, x600007_g_MissionId )
	return ret
end

--**********************************
--Ìá½»,½ö¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x600007_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x600007_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600007_g_CityMissionScript, "DoSubmit", sceneId, selfId, x600007_g_MissionId, x600007_g_MissionRound )

		-- Kinh nghi®m½±Àø
		local ExpBonus = CallScriptFunction( x600007_g_CityMissionScript, "CalcExpBonus", sceneId, selfId, x600007_g_MissionRound )
		AddExp( sceneId, selfId, ExpBonus )

		-- °ï»á¹±Ï×¶È½±Àø
		local ContribBonus = CallScriptFunction( x600007_g_CityMissionScript, "CalcContribBonus", sceneId, selfId, x600007_g_MissionRound )
		-- print(ContribBonus)
		if ContribBonus > 0 then
			CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, ContribBonus )
		end

		-- ×¨Òµ½±Àø
		local SpecBonus = CallScriptFunction( x600007_g_CityMissionScript, "CalcSpecBonus", sceneId, selfId, x600007_g_MissionRound )
		-- print(SpecBonus)
		if SpecBonus > 0 then
			CityChangeAttr( sceneId, selfId, GUILD_AGR_LEVEL, SpecBonus )
		end

		-- ÎïÆ·½±Àø
		CallScriptFunction( x600007_g_CityMissionScript, "RandomItemAward", sceneId, selfId,
			x600007_g_MissionRound, x600007_g_ItemAwardIndexOffset )
			
			-- ÈÛÁ¶·û½±Àø
		CallScriptFunction( x600007_g_CityMissionScript, "RandomItemMeltingAward", sceneId, selfId,
			x600007_g_MissionRound )

		-- Í³¼ÆĞÅÏ¢
		LuaFnAuditQuest(sceneId, selfId, x600007_g_MissionName)

		-- ¼ÇÂ¼Íæ¼ÒÍê³ÉÁËmµt cáiÈÎÎñ
		CallScriptFunction( x600007_g_CityMissionScript, "MissionComplete", sceneId, selfId)
	end
end

--**********************************
-- ÅĞ¶ÏÄ³cáiÊÂ¼şºÅĞúng·ñ´æTÕi ÓÚµ±Ç°ÊÂ¼şÁĞ±í
--**********************************
function x600007_IsInEventList( sceneId, selfId, eventId )
	local i = 1
	local findId = 0

	for i, findId in x600007_g_SubMissionScriptList do
		if eventId == findId then
			return 1
		end
	end

	return 0
end

