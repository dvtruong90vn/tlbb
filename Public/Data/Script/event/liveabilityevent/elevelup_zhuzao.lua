--Ðúc khuôn kÛ nångThång c¤p 

--½Å±¾ºÅ
x713564_g_ScriptId = 713564

--´Ënpc¿ÉÒÔÉýµ½toÕ ðµ ×î¸ßµÈc¤p
x713564_g_MaxLevel = 5

---- kÛ nång±àºÅ
x713564_g_AbilityID = ABILITY_ZHUZAO

-- kÛ nångÃû³Æ
x713564_g_AbilityName = "Ðúc khuôn"

x713564_g_Name1 = "Gia Lu§t ÐÕi ThÕch"

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x713564_OnDefaultEvent( sceneId, selfId, targetId, nNum, npcScriptId, bid )
	--Íæ¼Ò kÛ nångtoÕ ðµ µÈc¤p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, x713564_g_AbilityID)
	--Íæ¼Ò¼Ó¹¤ kÛ nångtoÕ ðµ ÊìÁ·¶È
	ExpPoint = GetAbilityExp(sceneId, selfId, x713564_g_AbilityID)
	--ÈÎÎñÅÐ¶Ï

	--Èç¹û»¹Ã»ÓÐÑ§»á¸ÃÉú»î kÛ nång
	if AbilityLevel < 1	then
		BeginEvent(sceneId)
			strText = "Ngß½i vçn chßa th¬ h÷c "..x713564_g_AbilityName.." kÛ nång!"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	--Èç¹ûÐúngTÕi Thành ph¯ ÖÐThång c¤p 
	if bid then
		--¼ì²éThành ph¯ Ðúng·ñ´¦ÓÚµÍÎ¬»¤×´Ì¬
		if CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "CheckCityStatus",sceneId, selfId,targetId) < 0 then
			return
		end
		local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713564_g_AbilityID, bid, 2)
		if ret > 0 then
			CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, x713564_g_AbilityID, bid, 2)
		end
		return
	end
	
	local MaxLevel = x713564_g_MaxLevel;
	if GetName(sceneId, targetId) == x713564_g_Name1   then
		MaxLevel = 10;
	end
	
	--Èç¹ûÉú»î kÛ nångµÈc¤pÒÑ¾­³¬³ö¸ÃnpcËùÄÜ½ÌtoÕ ðµ ·¶Î§
	if AbilityLevel >= MaxLevel then
		BeginEvent(sceneId)
			if GetName(sceneId, targetId) == x713564_g_Name1   then
				strText = "ÎÒÖ»ÄÜ½ÌÄã1-10c¤ptoÕ ðµ "..x713564_g_AbilityName.." kÛ nång."
			else
			strText = "Ta chï có th¬ dÕy ngß½i t× c¤p 1-5 "..x713564_g_AbilityName.." kÛ nång, xin t¾i #G thành LÕc Dß½ng #W tìm  #YGia Lu§t ÐÕi ThÕch #{_INFOAIM118,62,0,Gia Lu§t ÐÕi ThÕch} #W ð¬ h÷c cao h½n!"..x713564_g_AbilityName.."."
			end
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		--DispatchAbilityInfo(sceneId, selfId, targetId,x713564_g_ScriptId, x713564_g_AbilityID, LEVELUP_ABILITY_ZHUZAO[AbilityLevel+1].Money, LEVELUP_ABILITY_ZHUZAO[AbilityLevel+1].HumanExp, LEVELUP_ABILITY_ZHUZAO[AbilityLevel+1].AbilityExpLimitShow,LEVELUP_ABILITY_ZHUZAO[AbilityLevel+1].HumanLevelLimit)
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel, extraMoney, extraExp = LuaFnGetAbilityLevelUpConfig2(ABILITY_ZHUZAO, AbilityLevel + 1);
		
		if GetName(sceneId, targetId) == x713564_g_Name1   then
			demandMoney = extraMoney;
			demandExp		=	extraExp;
		end
		
		if ret and ret == 1 then
			DispatchAbilityInfo(sceneId, selfId, targetId,x713564_g_ScriptId, x713564_g_AbilityID, demandMoney, demandExp, limitAbilityExpShow, limitLevel);
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x713564_OnEnumerate( sceneId, selfId, targetId, bid )
		if bid then
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713564_g_AbilityID, bid, 6)
			if ret > 0 then AddNumText(sceneId,x713564_g_ScriptId,"Thång c¤p "..x713564_g_AbilityName.." kÛ nång", 12, 1) end
			return
		end
		--Èç¹û²»µ½µÈc¤pÔò²»ÏÔÊ¾Ñ¡Ïî
		--if GetLevel(sceneId,selfId) >= LEVELUP_ABILITY_ZHUZAO[1].HumanLevelLimit then
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel, extraMoney, extraExp = LuaFnGetAbilityLevelUpConfig2(ABILITY_ZHUZAO, 1);
		if ret and ret == 1 and 1 then
			AddNumText(sceneId,x713564_g_ScriptId,"Thång c¤p "..x713564_g_AbilityName.." kÛ nång", 12, 1)
		end
		return
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x713564_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x713564_OnAccept( sceneId, selfId, x713564_g_AbilityID )
end
