--ÖÆÒ©¼¼ÄÜÉıc¤p

--½Å±¾ºÅ
x713562_g_ScriptId = 713562

--´Ënpc¿ÉÒÔÉıµ½toÕ ğµ ×î¸ßµÈc¤p
x713562_g_MaxLevel = 5

----¼¼ÄÜ±àºÅ
x713562_g_AbilityID = ABILITY_ZHIYAO

--¼¼ÄÜÃû³Æ
x713562_g_AbilityName = " Chª dßşc "

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x713562_OnDefaultEvent( sceneId, selfId, targetId, nNum, npcScriptId, bid )
	--Íæ¼Ò¼¼ÄÜtoÕ ğµ µÈc¤p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, x713562_g_AbilityID)
	--Íæ¼Ò¼Ó¹¤¼¼ÄÜtoÕ ğµ ÊìÁ·¶È
	ExpPoint = GetAbilityExp(sceneId, selfId, x713562_g_AbilityID)
	--ÈÎÎñÅĞ¶Ï

	--Èç¹û»¹Ã»ÓĞÑ§»á¸ÃÉú»î¼¼ÄÜ
	if AbilityLevel < 1	then
		BeginEvent(sceneId)
			strText = "Ngß½i vçn chßa th¬ h÷c"..x713562_g_AbilityName.." kÛ nång!"
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
		local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713562_g_AbilityID, bid, 2)
		if ret > 0 then
			CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, x713562_g_AbilityID, bid, 2)
		end
		return
	end
	--Èç¹ûÉú»î¼¼ÄÜµÈc¤pÒÑ¾­³¬³ö¸ÃnpcËùÄÜ½ÌtoÕ ğµ ·¶Î§
	if AbilityLevel >= x713562_g_MaxLevel then
		BeginEvent(sceneId)
			strText = "Ta chï có th¬ dÕy ngß½i t× c¤p 1-5"..x713562_g_AbilityName.." kÛ nång, xin t¾i bang hµi ğ¬ h÷c cao h½n!"..x713562_g_AbilityName.."."
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		--DispatchAbilityInfo(sceneId, selfId, targetId,x713562_g_ScriptId, x713562_g_AbilityID, LEVELUP_ABILITY_ZHIYAO[AbilityLevel+1].Money, LEVELUP_ABILITY_ZHIYAO[AbilityLevel+1].HumanExp, LEVELUP_ABILITY_ZHIYAO[AbilityLevel+1].AbilityExpLimitShow,LEVELUP_ABILITY_ZHIYAO[AbilityLevel+1].HumanLevelLimit)
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(ABILITY_ZHIYAO, AbilityLevel + 1);
		if ret and ret == 1 then
			DispatchAbilityInfo(sceneId, selfId, targetId,x713562_g_ScriptId, x713562_g_AbilityID, demandMoney, demandExp, limitAbilityExpShow, limitLevel);
		end
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x713562_OnEnumerate( sceneId, selfId, targetId, bid )
		if bid then
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713562_g_AbilityID, bid, 6)
			if ret > 0 then AddNumText(sceneId,x713562_g_ScriptId,"Thång c¤p"..x713562_g_AbilityName.." kÛ nång", 12, 1) end
			return
		end
		--Èç¹û²»µ½µÈc¤pÔò²»ÏÔÊ¾Ñ¡Ïî
		--if GetLevel(sceneId,selfId) >= LEVELUP_ABILITY_ZHIYAO[1].HumanLevelLimit then
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(ABILITY_ZHIYAO, 1);
		if ret and ret == 1 and 1 then
			AddNumText(sceneId,x713562_g_ScriptId,"Thång c¤p"..x713562_g_AbilityName.." kÛ nång", 12, 1)
		end
		return
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x713562_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x713562_OnAccept( sceneId, selfId, x713562_g_AbilityID )
end
