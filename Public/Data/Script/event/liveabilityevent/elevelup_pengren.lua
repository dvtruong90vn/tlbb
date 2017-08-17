--Åëâ¿¼¼ÄÜÉýc¤p

--½Å±¾ºÅ
x713561_g_ScriptId = 713561

--´Ënpc¿ÉÒÔÉýµ½toÕ ðµ ×î¸ßµÈc¤p
x713561_g_MaxLevel = 5

----¼¼ÄÜ±àºÅ
x713561_g_AbilityID = ABILITY_PENGREN

--¼¼ÄÜÃû³Æ
x713561_g_AbilityName = "N¤u nß¾ng"

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x713561_OnDefaultEvent( sceneId, selfId, targetId, nNum, npcScriptId, bid )
	--Íæ¼Ò¼¼ÄÜtoÕ ðµ µÈc¤p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, x713561_g_AbilityID)
	--Íæ¼Ò¼Ó¹¤¼¼ÄÜtoÕ ðµ ÊìÁ·¶È
	ExpPoint = GetAbilityExp(sceneId, selfId, x713561_g_AbilityID)
	--ÈÎÎñÅÐ¶Ï
	--Èç¹ûÐúngTÕi Thành ph¯ ÖÐÉýc¤p
	if bid then
		local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713561_g_AbilityID, bid, 2)
		if ret > 0 then
			CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, x713561_g_AbilityID, bid, 2)
		end
		return
	end
	--Èç¹û»¹Ã»ÓÐÑ§»á¸ÃÉú»î¼¼ÄÜ
	if AbilityLevel < 1	then
		BeginEvent(sceneId)
			strText = "Ngß½i vçn chßa th¬ h÷c"..x713561_g_AbilityName.." kÛ nång!"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--Èç¹ûÉú»î¼¼ÄÜµÈc¤pÒÑ¾­³¬³ö¸ÃnpcËùÄÜ½ÌtoÕ ðµ ·¶Î§
	if AbilityLevel >= x713561_g_MaxLevel then
		BeginEvent(sceneId)
			strText = "Ta chï có th¬ dÕy ngß½i t× c¤p 1-5"..x713561_g_AbilityName.." kÛ nång, xin t¾i bang hµi ð¬ h÷c cao h½n!"..x713561_g_AbilityName.."."
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		--old
		--DispatchAbilityInfo(sceneId, selfId, targetId,x713561_g_ScriptId, x713561_g_AbilityID, LEVELUP_ABILITY_PENGREN[AbilityLevel+1].Money, LEVELUP_ABILITY_PENGREN[AbilityLevel+1].HumanExp, LEVELUP_ABILITY_PENGREN[AbilityLevel+1].AbilityExpLimitShow,LEVELUP_ABILITY_PENGREN[AbilityLevel+1].HumanLevelLimit)
		--new
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(ABILITY_PENGREN, AbilityLevel + 1);
		if ret and ret == 1 then
			DispatchAbilityInfo(sceneId, selfId, targetId,x713561_g_ScriptId, x713561_g_AbilityID, demandMoney, demandExp, limitAbilityExpShow, limitLevel);
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x713561_OnEnumerate( sceneId, selfId, targetId, bid )
		if bid then
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713561_g_AbilityID, bid, 6)
			if ret > 0 then AddNumText(sceneId,x713561_g_ScriptId,"Thång c¤p"..x713561_g_AbilityName.." kÛ nång", 12, 1) end
			return
		end
		--Èç¹û²»µ½µÈc¤pÔò²»ÏÔÊ¾Ñ¡Ïî
		--old
		--if GetLevel(sceneId,selfId) >= LEVELUP_ABILITY_PENGREN[1].HumanLevelLimit then
		--new
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(ABILITY_PENGREN, 1);
		if ret and ret == 1 and 1 then
			AddNumText(sceneId,x713561_g_ScriptId,"Thång c¤p"..x713561_g_AbilityName.." kÛ nång", 12, 1)
		end
		return
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x713561_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x713561_OnAccept( sceneId, selfId, x713561_g_AbilityID )
end
