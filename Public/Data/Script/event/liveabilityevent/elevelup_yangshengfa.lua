--ÑøÉú·¨¼¼ÄÜÉıc¤p

--½Å±¾ºÅ
x713587_g_ScriptId = 713587

x713587_g_AbilityID = ABILITY_YANGSHENGFA
--´Ënpc¿ÉÒÔÉıµ½toÕ ğµ ×î¸ßµÈc¤p
x713587_g_nMaxLevel = 30

x713587_g_AbilityName = "DßŞng sinh pháp"

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x713587_OnDefaultEvent( sceneId, selfId, targetId, nNum, npcScriptId, bid )
	--Íæ¼Ò¼¼ÄÜtoÕ ğµ µÈc¤p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, ABILITY_YANGSHENGFA)
	--Íæ¼Ò¼Ó¹¤¼¼ÄÜtoÕ ğµ ÊìÁ·¶È
	ExpPoint = GetAbilityExp(sceneId, selfId, ABILITY_YANGSHENGFA)
	--ÈÎÎñÅĞ¶Ï

	--Èç¹û»¹Ã»ÓĞÑ§»á¸ÃÉú»î¼¼ÄÜ
	if AbilityLevel < 1	then
		BeginEvent(sceneId)
			strText = "Ngß½i vçn chßa h÷c kÛ nång dßŞng sinh pháp"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	--Èç¹ûĞúngTÕi Thành ph¯ ÖĞÉıc¤p
	if bid then
		--¼ì²éThành ph¯ Ğúng·ñ´¦ÓÚµÍÎ¬»¤×´Ì¬
		if CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "CheckCityStatus",sceneId, selfId,targetId) < 0 then
			return
		end
		local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713587_g_AbilityID, bid, 2)
		if ret > 0 then
			CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, x713587_g_AbilityID, bid, 2)
		end
		return
	end
	--Èç¹ûÉú»î¼¼ÄÜµÈc¤pÒÑ¾­³¬³ö¸ÃnpcËùÄÜ½ÌtoÕ ğµ ·¶Î§
	if AbilityLevel >= x713587_g_nMaxLevel then
		BeginEvent(sceneId)
			strText = "Ta chï có th¬ dÕy ngß½i 1-"..x713587_g_nMaxLevel.."KÛ nång dßŞng sinh pháp cao c¤p, xin t¾i bang hµi ğ¬ h÷c"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		--DispatchAbilityInfo(sceneId, selfId, targetId,x713587_g_ScriptId, ABILITY_YANGSHENGFA, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].Money, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].HumanExp, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].AbilityExpLimitShow,LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].HumanLevelLimit)
		local tempScriptId = x713587_g_ScriptId;
		local tempAbilityId = ABILITY_YANGSHENGFA;
		local tempAbilityLevel = AbilityLevel + 1;
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(tempAbilityId, tempAbilityLevel);
		if ret and ret == 1 then
			DispatchAbilityInfo(sceneId, selfId, targetId,tempScriptId, tempAbilityId, demandMoney, demandExp, limitAbilityExpShow, limitLevel);
		end
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x713587_OnEnumerate( sceneId, selfId, targetId, bid )
		if bid then
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713587_g_AbilityID, bid, 6)
			if ret > 0 then AddNumText(sceneId,x713587_g_ScriptId,"Thång c¤p"..x713587_g_AbilityName.." kÛ nång", 12, 1) end
			return
		end
		--Èç¹û²»µ½µÈc¤pÔò²»ÏÔÊ¾Ñ¡Ïî
		if 1 then
			AddNumText(sceneId,x713587_g_ScriptId,"Thång c¤p dßŞng sinh pháp", 12, 1)
		end
		return
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x713587_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x713587_OnAccept( sceneId, selfId, ABILITY_YANGSHENGFA )
end
