--Ò©Àí¼¼ÄÜÉıc¤p

--½Å±¾ºÅ
x713586_g_ScriptId = 713586

--´Ënpc¿ÉÒÔÉıµ½toÕ ğµ ×î¸ßµÈc¤p
x713586_g_nMaxLevel = 30

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x713586_OnDefaultEvent( sceneId, selfId, targetId, nNum, npcScriptId, bid )
	--Íæ¼Ò¼¼ÄÜtoÕ ğµ µÈc¤p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, ABILITY_YAOLI)
	--Íæ¼Ò¼Ó¹¤¼¼ÄÜtoÕ ğµ ÊìÁ·¶È
	ExpPoint = GetAbilityExp(sceneId, selfId, ABILITY_YAOLI)
	--ÈÎÎñÅĞ¶Ï

	--Èç¹û»¹Ã»ÓĞÑ§»á¸ÃÉú»î¼¼ÄÜ
	if AbilityLevel < 1	then
		BeginEvent(sceneId)
			strText = "Ngß½i vçn chßa h÷c kÛ nång dßşc lı"
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
		local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, ABILITY_YAOLI, bid, 2)
		if ret > 0 then
			CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, ABILITY_YAOLI, bid, 2)
		end
		return
	end
	--Èç¹ûÉú»î¼¼ÄÜµÈc¤pÒÑ¾­³¬³ö¸ÃnpcËùÄÜ½ÌtoÕ ğµ ·¶Î§
	if AbilityLevel >= x713586_g_nMaxLevel then
		BeginEvent(sceneId)
			strText = "Ta chï có th¬ dÕy ngß½i 1-"..x713586_g_nMaxLevel.." kÛ nång dßşc lı cao c¤p, xin t¾i bang hµi ğ¬ h÷c"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		--DispatchAbilityInfo(sceneId, selfId, targetId,x713586_g_ScriptId, ABILITY_YAOLI, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].Money, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].HumanExp, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].AbilityExpLimitShow,LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].HumanLevelLimit)
		local tempScriptId = x713586_g_ScriptId;
		local tempAbilityId = ABILITY_YAOLI;
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
function x713586_OnEnumerate( sceneId, selfId, targetId, bid )
		if bid then
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, ABILITY_YAOLI, bid, 6)
			if ret > 0 then AddNumText(sceneId,x713586_g_ScriptId,"Thång c¤p kÛ nång dßşc lı", 12, 1) end
			return
		end
		--Èç¹û²»µ½µÈc¤pÔò²»ÏÔÊ¾Ñ¡Ïî
		if 1 then
			AddNumText(sceneId,x713586_g_ScriptId,"Thång c¤p kÛ nång dßşc lı", 12, 1)
		end
		return
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x713586_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x713586_OnAccept( sceneId, selfId, ABILITY_YAOLI )
end
