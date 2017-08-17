--ÖÖÖ²¼¼ÄÜÑ§Ï°

--½Å±¾ºÅ
x713511_g_ScriptId = 713511

--Ñ§Ï°½çÃæÒªËµtoÕ ðµ »°
x713511_g_MessageStudy = "Nªu các hÕ ðÕt t¾i c¤p %d và phäi tiêu t¯n #{_MONEY%d} m¾i có th¬ h÷c ðßþc kÛ nång tr°ng tr÷t. Các hÕ có quyªt ð¸nh h÷c không?"

--¼¼ÄÜ±àºÅ
x713511_g_AbilityID = ABILITY_ZHONGZHI

--¼¼ÄÜÃû³Æ
x713511_g_AbilityName = "Tr°ng tr÷t"

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x713511_OnDefaultEvent( sceneId, selfId, targetId, ButtomNum,g_Npc_ScriptId,bid )
	--Íæ¼Ò¼¼ÄÜtoÕ ðµ µÈc¤p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, x713511_g_AbilityID)
	--Íæ¼ÒÖÖÖ²¼¼ÄÜtoÕ ðµ ÊìÁ·¶È
	ExpPoint = GetAbilityExp(sceneId, selfId, x713511_g_AbilityID)
	--ÈÎÎñÅÐ¶Ï

	--ÅÐ¶ÏÐúng·ñÒÑ¾­Ñ§»áÁËÖÖÖ²,Èç¹ûÑ§»áÁË,ÔòÌáÊ¾ÒÑ¾­Ñ§»áÁË
	if AbilityLevel >= 1 then
		BeginEvent(sceneId)
        	AddText(sceneId,"Các hÕ ðã h÷c ðßþc"..x713511_g_AbilityName.." kÛ nång");
        	EndEvent(sceneId)
        DispatchMissionTips(sceneId,selfId)
		return
	end

	--TÕi Thành ph¯ ÀïÑ§Ï°Cái này ¼¼ÄÜ
	if bid then
		x713511_StudyInCity(sceneId, selfId, targetId, ButtomNum,g_Npc_ScriptId,bid)
		return
	end

	--Èç¹û ði¬m»÷toÕ ðµ Ðúng¡°KÛ nång h÷c t§p¡±(¼´²ÎÊý=0)
	if ButtomNum == 0 then
		
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(ABILITY_ZHONGZHI, 1);
		if ret and ret == 1 then
			BeginEvent(sceneId)
			local addText = format(x713511_g_MessageStudy, limitLevel, demandMoney);
			AddText(sceneId, addText)
			--Xác nh§nÑ§Ï°°´Å¥
					AddNumText(sceneId,x713511_g_ScriptId,"TÕi hÕ xác ð¸nh mu¯n h÷c", 6, 2)
			--HuÖ böÑ§Ï°°´Å¥
					AddNumText(sceneId,x713511_g_ScriptId,"TÕi hÕ chï mu¯n coi", 8, 3)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif ButtomNum == 2 then			--Èç¹û ði¬m»÷toÕ ðµ Ðúng¡°ÎÒXác nh§nÒªÑ§Ï°¡±
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(ABILITY_ZHONGZHI, 1);
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
			CostMoney(sceneId, selfId, demandMoney)
			--¼¼ÄÜÌLinhýµ½1
			SetHumanAbilityLevel(sceneId,selfId,x713511_g_AbilityID,1)
			--TÕi npcÁÄÌì´°¿ÚÍ¨ÖªÍæ¼ÒÒÑ¾­Ñ§»áÁË
			BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ðã h÷c ðßþc "..x713511_g_AbilityName.." kÛ nång")
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
function x713511_OnEnumerate( sceneId, selfId, targetId, bid )
		if bid then
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713511_g_AbilityID, bid, 5)
			if ret > 0 then AddNumText(sceneId,x713511_g_ScriptId,"H÷c "..x713511_g_AbilityName.." kÛ nång", 12, 0) end
			return
		end
		--Èç¹û²»µ½µÈc¤pÔò²»ÏÔÊ¾Ñ¡Ïî
		--if GetLevel(sceneId,selfId) >= LEVELUP_ABILITY_ZHONGZHI[1].HumanLevelLimit then
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(ABILITY_ZHONGZHI, 1);
		--if ret and ret == 1 and GetLevel(sceneId,selfId) >= limitLevel then
		if ret and ret == 1 then
			AddNumText(sceneId,x713511_g_ScriptId,"H÷c "..x713511_g_AbilityName.." kÛ nång", 12, 0)
		end
		return
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x713511_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x713511_OnAccept( sceneId, selfId, x713511_g_AbilityID )
end

--TÕi Thành ph¯ ÀïÑ§Ï°´ËÉú»î¼¼ÄÜÊ±C¥n Ö´ÐÐtoÕ ðµ º¯Êý
function x713511_StudyInCity(sceneId, selfId, targetId, ButtomNum,g_Npc_ScriptId,bid)
	if bid then
		if 0 == ButtomNum then
			--¼ì²éThành ph¯ Ðúng·ñ´¦ÓÚµÍÎ¬»¤×´Ì¬
			if CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "CheckCityStatus",sceneId, selfId,targetId) < 0 then
				return
			end
			--Ìí¼ÓÌõ¼þÏÔÊ¾ÄÚÈÝ
			BeginEvent(sceneId)
			local lv,money,con
			lv,money,con = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, x713511_g_AbilityID, bid, 4)
			local studyMsg = format("Nªu các hÕ ðÕt t¾i c¤p %d, phäi tiêu t¯n #{_MONEY%d} và %d ði¬m bang hµi s¨ có th¬ h÷c ðßþc"..x713511_g_AbilityName.."KÛ nång. Ngß½i quyªt ð¸nh h÷c cái gì?", lv, money, con)
			AddText(sceneId,studyMsg)
			--Xác nh§nÑ§Ï°°´Å¥
					AddNumText(sceneId,x713511_g_ScriptId,"TÕi hÕ xác ð¸nh mu¯n h÷c", 6, 2)
			--HuÖ böÑ§Ï°°´Å¥
					AddNumText(sceneId,x713511_g_ScriptId,"TÕi hÕ chï mu¯n coi", 8, 3)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		elseif 2 == ButtomNum then
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713511_g_AbilityID, bid, 1)
			if ret > 0 then
				CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, x713511_g_AbilityID, bid, 1)
			end
		else
			CallScriptFunction( g_Npc_ScriptId, "OnDefaultEvent",sceneId, selfId, targetId )
		end
	end
end
