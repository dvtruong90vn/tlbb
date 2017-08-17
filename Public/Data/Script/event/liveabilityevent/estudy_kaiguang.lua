--¿ª¹â¼¼ÄÜÑ§Ï°

--½Å±¾ºÅ
x713512_g_ScriptId = 713512

--´Ënpc¿ÉÒÔÉýµ½toÕ ðµ ×î¸ßµÈc¤p
x713512_g_nMaxLevel = 5

--Ñ§Ï°½çÃæÒªËµtoÕ ðµ »°
x713512_g_MessageStudy = "Nªu các hÕ ðÕt t¾i c¤p %d và phäi tiêu t¯n #{_MONEY%d} m¾i có th¬ h÷c ðßþc kÛ nång khai sáng. Các hÕ có quyªt ð¸nh h÷c không?"


--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x713512_OnDefaultEvent( sceneId, selfId, targetId, ButtomNum,g_Npc_ScriptId )
	--Íæ¼Ò¼¼ÄÜtoÕ ðµ µÈc¤p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, ABILITY_KAIGUANG)
	--Íæ¼Ò¿ª¹â¼¼ÄÜtoÕ ðµ ÊìÁ·¶È
	ExpPoint = GetAbilityExp(sceneId, selfId, ABILITY_KAIGUANG)
	--ÈÎÎñÅÐ¶Ï
	
	--ÅÐ¶ÏÐúng·ñÐúngThiªu LâmÅÉµÜ×Ó,²»ÐúngThiªu LâmµÜ×Ó²»ÄÜÑ§Ï°
		if GetMenPai(sceneId,selfId) ~= MP_SHAOLIN then
			BeginEvent(sceneId)
        		AddText(sceneId,"Ngß½i không phäi là ð® tØ b±n bang, ta không th¬ dÕy ngß½i");
        	EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
	--ÅÐ¶ÏÐúng·ñÒÑ¾­Ñ§»áÁË¿ª¹â,Èç¹ûÑ§»áÁË,ÔòÌáÊ¾ÒÑ¾­Ñ§»áÁË
	if AbilityLevel >= 1 then
		BeginEvent(sceneId)
        	AddText(sceneId,"Các hÕ ðã h÷c xong kÛ nång khai sáng");
        	EndEvent(sceneId)
        DispatchMissionTips(sceneId,selfId)
		return
	end

	--Èç¹û ði¬m»÷toÕ ðµ Ðúng¡°KÛ nång h÷c t§p¡±(¼´²ÎÊý=0)
	if ButtomNum == 0 then
		
		local tempAbilityId = ABILITY_KAIGUANG;
		local tempAbilityLevel = 1;
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(tempAbilityId, tempAbilityLevel);
		if ret and ret == 1 then
			BeginEvent(sceneId)
			local addText = format(x713512_g_MessageStudy, limitLevel, demandMoney);
			AddText(sceneId,addText)
			--Xác nh§nÑ§Ï°°´Å¥
					AddNumText(sceneId,x713512_g_ScriptId,"TÕi hÕ xác ð¸nh mu¯n h÷c", 6, 2)
			--HuÖ böÑ§Ï°°´Å¥
					AddNumText(sceneId,x713512_g_ScriptId,"TÕi hÕ chï mu¯n coi", 8, 3)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif ButtomNum == 2 then			--Èç¹û ði¬m»÷toÕ ðµ Ðúng¡°ÎÒXác nh§nÒªÑ§Ï°¡±
		local tempAbilityId = ABILITY_KAIGUANG;
		local tempAbilityLevel = 1;
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(tempAbilityId, tempAbilityLevel);
		if ret and ret == 1 then
			--¼ì²éÍæ¼ÒÐúng·ñÓÐmµt cáiÒø±ÒtoÕ ðµ ÏÖ½ð
			if GetMoney(sceneId,selfId) < demandMoney then			
				BeginEvent(sceneId)
					AddText(sceneId,"Các hÕ không ðü ngân lßþng");
					EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
			end
			--¼ì²éÍæ¼ÒµÈc¤pÐúng·ñ´ïµ½ÒªÇó
			if GetLevel(sceneId,selfId) < limitLevel then
				BeginEvent(sceneId)
					AddText(sceneId,"ÐÆng c¤p cüa ngß½i không ðü");
					EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
			end
			--É¾³ý½ðÇ®
			CostMoney(sceneId,selfId,demandMoney)
			--¼¼ÄÜÌLinhýµ½1
			SetHumanAbilityLevel(sceneId,selfId,ABILITY_KAIGUANG,1)
			--TÕi npcÁÄÌì´°¿ÚÍ¨ÖªÍæ¼ÒÒÑ¾­Ñ§»áÁË
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ ðã h÷c xong kÛ nång khai sáng")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
		end
	else --Èç¹û ði¬m»÷¡°ÎÒÖ»ÐúngÀ´¿´¿´¡±
		CallScriptFunction( g_Npc_ScriptId, "OnDefaultEvent",sceneId, selfId, targetId )
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x713512_OnEnumerate( sceneId, selfId, targetId )
		--Èç¹û²»µ½µÈc¤pÔò²»ÏÔÊ¾Ñ¡Ïî
		--if GetLevel(sceneId,selfId) >= 10 then
			AddNumText(sceneId,x713512_g_ScriptId,"H÷c kÛ nång khai sáng", 12, 0)
		--end
		return
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x713512_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x713512_OnAccept( sceneId, selfId, ABILITY_CAIKUANG )
end
