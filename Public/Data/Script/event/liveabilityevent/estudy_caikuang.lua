--Khai khoáng kÛ nångH÷c 

--½Å±¾ºÅ
x713508_g_ScriptId = 713508

--H÷c ½çÃæÒªËµtoÕ ðµ »°
x713508_g_MessageStudy = "Nªu các hÕ ðÕt t¾i c¤p %d và phäi tiêu t¯n #{_MONEY%d} m¾i có th¬ h÷c ðßþc kÛ nång khai khoáng. Các hÕ có quyªt ð¸nh h÷c không?"

-- kÛ nång±àºÅ
x713508_g_AbilityID = ABILITY_CAIKUANG

-- kÛ nångÃû³Æ
x713508_g_AbilityName = "Khai khoáng"

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x713508_OnDefaultEvent( sceneId, selfId, targetId, ButtomNum,g_Npc_ScriptId,bid )
	--Íæ¼Ò kÛ nångtoÕ ðµ µÈc¤p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, x713508_g_AbilityID)
	--Íæ¼ÒKhai khoáng kÛ nångtoÕ ðµ ÊìÁ·¶È
	ExpPoint = GetAbilityExp(sceneId, selfId, x713508_g_AbilityID)
	--ÈÎÎñÅÐ¶Ï

	--ÅÐ¶ÏÐúng·ñÒÑ¾­Ñ§»áÁËKhai khoáng,Èç¹ûÑ§»áÁË,ÔòÌáÊ¾ÒÑ¾­Ñ§»áÁË
	if AbilityLevel >= 1 then
		BeginEvent(sceneId)
        	AddText(sceneId,"Các hÕ ðã h÷c ðßþc "..x713508_g_AbilityName.." kÛ nång");
        	EndEvent(sceneId)
        DispatchMissionTips(sceneId,selfId)
		return
	end

	--TÕi Thành ph¯ ÀïH÷c Cái này  kÛ nång
	if bid then
		x713508_StudyInCity(sceneId, selfId, targetId, ButtomNum,g_Npc_ScriptId,bid)
		return
	end

	--Èç¹û ði¬m»÷toÕ ðµ Ðúng¡°H÷c  kÛ nång¡±(¼´²ÎÊý=0)
	if ButtomNum == 0 then
		
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(ABILITY_CAIKUANG, 1);
		if ret and ret == 1 then
			BeginEvent(sceneId)
			local addText = format(x713508_g_MessageStudy, limitLevel, demandMoney);
			AddText(sceneId,addText)
			--Xác nh§nH÷c °´Å¥
					AddNumText(sceneId,x713508_g_ScriptId,"TÕi hÕ xác ð¸nh mu¯n h÷c", 6, 2)
			--HuÖ böH÷c °´Å¥
					AddNumText(sceneId,x713508_g_ScriptId,"TÕi hÕ chï mu¯n coi", 8, 3)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif ButtomNum == 2 then			--Èç¹û ði¬m»÷toÕ ðµ Ðúng¡°ÎÒXác nh§nÒªH÷c ¡±
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(ABILITY_CAIKUANG, 1);
		if ret and ret == 1 then
			--¼ì²éÍæ¼ÒÐúng·ñÓÐmµt cáiÒø±ÒtoÕ ðµ ÏÖ½ð
			if GetMoney(sceneId,selfId)+GetMoneyJZ(sceneId,selfId) < demandMoney then			
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
			LuaFnCostMoneyWithPriority(sceneId,selfId,demandMoney)
			-- kÛ nångÌLinhýµ½1
			SetHumanAbilityLevel(sceneId,selfId,x713508_g_AbilityID,1)
			--TÕi npcÁÄÌì´°¿ÚÍ¨ÖªÍæ¼ÒÒÑ¾­Ñ§»áÁË
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ ðã h÷c ðßþc "..x713508_g_AbilityName.." kÛ nång")
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
function x713508_OnEnumerate( sceneId, selfId, targetId, bid )
		if bid then
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713508_g_AbilityID, bid, 5)
			if ret > 0 then AddNumText(sceneId,x713508_g_ScriptId,"H÷c "..x713508_g_AbilityName.." kÛ nång", 12, 0) end
			return
		end
	--Èç¹û²»µ½µÈc¤pÔò²»ÏÔÊ¾Ñ¡Ïî
	--if GetLevel(sceneId,selfId) >= LEVELUP_ABILITY_CAIKUANG[1].HumanLevelLimit then
	local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(ABILITY_CAIKUANG, 1);
	--if ret and ret == 1 and GetLevel(sceneId,selfId) >= limitLevel then
	if ret and ret == 1 then
		AddNumText(sceneId,x713508_g_ScriptId,"H÷c "..x713508_g_AbilityName.." kÛ nång", 12, 0)
	end
	return
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x713508_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x713508_OnAccept( sceneId, selfId, x713508_g_AbilityID )
end

--TÕi Thành ph¯ ÀïH÷c ´ËÉú»î kÛ nångÊ±C¥n Ö´ÐÐtoÕ ðµ º¯Êý
function x713508_StudyInCity(sceneId, selfId, targetId, ButtomNum,g_Npc_ScriptId,bid)
	if bid then
		if 0 == ButtomNum then
			--¼ì²éThành ph¯ Ðúng·ñ´¦ÓÚµÍÎ¬»¤×´Ì¬
			if CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "CheckCityStatus",sceneId, selfId,targetId) < 0 then
				return
			end
			--Ìí¼ÓÌõ¼þÏÔÊ¾ÄÚÈÝ
			BeginEvent(sceneId)
			local lv,money,con
			lv,money,con = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, x713508_g_AbilityID, bid, 4)
			local studyMsg = format("Nªu các hÕ ðÕt t¾i c¤p %d, phäi tiêu t¯n #{_MONEY%d} và %d ði¬m bang hµi s¨ có th¬ h÷c ðßþc "..x713508_g_AbilityName.." kÛ nång. Ngß½i quyªt ð¸nh h÷c cái gì?", lv, money, con)
			AddText(sceneId,studyMsg)
			--Xác nh§nH÷c °´Å¥
					AddNumText(sceneId,x713508_g_ScriptId,"TÕi hÕ xác ð¸nh mu¯n h÷c", 6, 2)
			--HuÖ böH÷c °´Å¥
					AddNumText(sceneId,x713508_g_ScriptId,"TÕi hÕ chï mu¯n coi", 8, 3)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		elseif 2 == ButtomNum then
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713508_g_AbilityID, bid, 1)
			if ret > 0 then
				CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, x713508_g_AbilityID, bid, 1)
			end
		else
			CallScriptFunction( g_Npc_ScriptId, "OnDefaultEvent",sceneId, selfId, targetId )
		end
	end
end
