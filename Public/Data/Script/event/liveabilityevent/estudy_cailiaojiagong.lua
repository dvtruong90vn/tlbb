--²ÄÁÏ¼Ó¹¤¼¼ÄÜÑ§Ï°

--½Å±¾ºÅ
x713538_g_ScriptId = 713538

--Ñ§Ï°½çÃæÒªËµtoÕ ðµ »°
x713538_g_MessageStudy = "Nªu các hÕ ðÕt ðªn c¤p %d ð°ng th¶i ch¸u bö ra #{_MONEY%d} là có th¬ h÷c kÛ nång gia công nguyên li®u. Các hÕ quyªt ð¸nh h÷c không ?"

--¼¼ÄÜ±àºÅ
x713538_g_AbilityID = ABILITY_CAILIAOHECHENG

--¼¼ÄÜÃû³Æ
x713538_g_AbilityName = "Gia công nguyên li®u"

--Ñ§Ï°±¾¼¼ÄÜtoÕ ðµ µÈc¤pÏÞÖÆ
x713538_g_LimitLevel = 10

--ÒªÈÃÍæ¼ÒÑ§»átoÕ ðµ Åä·½ÁÐ±í
x713538_g_PeiFangID = { 399, 400, 401, 402, 403, 404, 405, 406, 407 }


--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x713538_OnDefaultEvent( sceneId, selfId, targetId, ButtomNum,g_Npc_ScriptId )
	--Íæ¼Ò¼¼ÄÜtoÕ ðµ µÈc¤p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, x713538_g_AbilityID)

	--ÈÎÎñÅÐ¶Ï

	--ÅÐ¶ÏÐúng·ñÒÑ¾­Ñ§»áÁË²ÄÁÏ¼Ó¹¤,Èç¹ûÑ§»áÁË,ÔòÌáÊ¾ÒÑ¾­Ñ§»áÁË
	if AbilityLevel >= 1 then
		BeginEvent(sceneId)
        	AddText(sceneId,"Các hÕ ðã h÷c ðßþc"..x713538_g_AbilityName.." kÛ nång");
        	EndEvent(sceneId)
        DispatchMissionTips(sceneId,selfId)
		return
	end

	
	--Èç¹û ði¬m»÷toÕ ðµ Ðúng¡°KÛ nång h÷c t§p¡±(¼´²ÎÊý=0)
	if ButtomNum == 0 then
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(x713538_g_AbilityID, 1);
		if ret and ret == 1 then
			BeginEvent(sceneId)
			local addText = format(x713538_g_MessageStudy, x713538_g_LimitLevel, demandMoney);
			AddText(sceneId, addText)
			--Xác nh§nÑ§Ï°°´Å¥
					AddNumText(sceneId,x713538_g_ScriptId,"TÕi hÕ xác ð¸nh mu¯n h÷c", 6, 2)
			--HuÖ böÑ§Ï°°´Å¥
					AddNumText(sceneId,x713538_g_ScriptId,"TÕi hÕ chï mu¯n coi", 8, 3)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif ButtomNum == 2 then			--Èç¹û ði¬m»÷toÕ ðµ Ðúng¡°ÎÒXác nh§nÒªÑ§Ï°¡±
	--¼ì²éÍæ¼ÒÐúng·ñÓÐ×ã¹»toÕ ðµ ÏÖ½ð
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(x713538_g_AbilityID, 1);
		if ret and ret == 1 then
			if GetMoney(sceneId,selfId) < demandMoney then			
				BeginEvent(sceneId)
					local addText2 = format( "Xin l²i! S¯ ti«n các hÕ mang theo không ðü, xin hãy mang theo#{_MONEY%d} r°i hãy ðªn ðây h÷c.", demandMoney )
					AddText( sceneId, addText2 );
					EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
			end
			--¼ì²éÍæ¼ÒµÈc¤pÐúng·ñ´ïµ½ÒªÇó
			if GetLevel(sceneId,selfId) < x713538_g_LimitLevel then
				BeginEvent(sceneId)
					AddText(sceneId,"ÐÆng c¤p cüa ngß½i không ðü");
					EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
			end
			--É¾³ý½ðÇ®
			CostMoney(sceneId, selfId, demandMoney)
			--¼¼ÄÜÌLinhýµ½1
			SetHumanAbilityLevel(sceneId,selfId,x713538_g_AbilityID,1)
			--ÈÃÍæ¼ÒÑ§»áËùÓÐ9cáiÅä·½
			x713538_AddAllPeiFang( sceneId, selfId )
			--TÕi npcÁÄÌì´°¿ÚÍ¨ÖªÍæ¼ÒÒÑ¾­Ñ§»áÁË
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ ðã h÷c ðßþc "..x713538_g_AbilityName.." kÛ nång")
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
function x713538_OnEnumerate( sceneId, selfId, targetId )

		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(x713538_g_AbilityID, 1);
		if ret and ret == 1 then
			AddNumText(sceneId,x713538_g_ScriptId,"H÷c "..x713538_g_AbilityName.." kÛ nång", 12, 0)
		end
		return

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x713538_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x713538_OnAccept( sceneId, selfId, x713538_g_AbilityID )
end


function x713538_AddAllPeiFang( sceneId, selfId )

	for i, pfID in x713538_g_PeiFangID do
	
		if IsPrescrLearned( sceneId, selfId, pfID ) == 0 then
			SetPrescription( sceneId, selfId, pfID, 1 )
		end

	end

end
