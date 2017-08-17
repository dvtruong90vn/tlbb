--·ð·¨¼¼ÄÜÉýc¤p

--½Å±¾ºÅ
x713588_g_ScriptId = 713588

--´Ënpc¿ÉÒÔÉýµ½toÕ ðµ ×î¸ßµÈc¤p
x713588_g_nMaxLevel = 100

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x713588_OnDefaultEvent( sceneId, selfId, targetId )
	--Íæ¼Ò¼¼ÄÜtoÕ ðµ µÈc¤p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, ABILITY_FOFA)
	--Íæ¼Ò·ð·¨¼¼ÄÜtoÕ ðµ ÊìÁ·¶È
	ExpPoint = GetAbilityExp(sceneId, selfId, ABILITY_FOFA)
	--ÈÎÎñÅÐ¶Ï

	--ÅÐ¶ÏÐúng·ñÐúngThiªu LâmÅÉµÜ×Ó,²»ÐúngThiªu LâmµÜ×Ó²»ÄÜÑ§Ï°
		if GetMenPai(sceneId,selfId) ~= MP_SHAOLIN then
			BeginEvent(sceneId)
        		AddText(sceneId,"Ngß½i không phäi là ð® tØ b±n bang, ta không th¬ dÕy ngß½i");
        	EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
	--Èç¹û»¹Ã»ÓÐÑ§»á¸ÃÉú»î¼¼ÄÜ
	if AbilityLevel < 1	then
		BeginEvent(sceneId)
			strText = "Ngß½i vçn chßa h÷c kÛ nång Ph§t pháp"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--Èç¹ûÉú»î¼¼ÄÜµÈc¤pÒÑ¾­³¬³ö¸ÃnpcËùÄÜ½ÌtoÕ ðµ ·¶Î§
	if AbilityLevel >= x713588_g_nMaxLevel then
		BeginEvent(sceneId)
			--[ QUFEI 2007-07-17 15:22 ÐÞ¸Ä ]
			strText = "Trß¾c m¡t kÛ nång này chï có th¬ h÷c ðªn c¤p 100"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		--DispatchAbilityInfo(sceneId, selfId, targetId,x713588_g_ScriptId, ABILITY_FOFA, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].Money, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].HumanExp, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].AbilityExpLimitShow,LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].HumanLevelLimit)
		local tempScriptId = x713588_g_ScriptId;
		local tempAbilityId = ABILITY_FOFA;
		local tempAbilityLevel = AbilityLevel + 1;
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(tempAbilityId, tempAbilityLevel);
		if ret and ret == 1 then
			DispatchAbilityInfo(sceneId, selfId, targetId,tempScriptId, tempAbilityId, demandMoney, demandExp, limitAbilityExpShow, limitLevel);
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x713588_OnEnumerate( sceneId, selfId, targetId )
		--Èç¹û²»µ½µÈc¤pÔò²»ÏÔÊ¾Ñ¡Ïî
		if 1 then
			AddNumText(sceneId,x713588_g_ScriptId,"Thång c¤p kÛ nång Ph§t pháp", 12, 1)
		end
		return
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x713588_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x713588_OnAccept( sceneId, selfId, ABILITY_FOFA )
end
