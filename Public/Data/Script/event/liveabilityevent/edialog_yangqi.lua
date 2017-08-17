--Éú»î¼¼ÄÜ
--ÑøÆø

--2006-9-18 17:05 (Õâ¸öÎÄ¼ş´æÔÚµÄÒâÒåÊÇÎªÁË¼æÈİ¡¢¼°À©Õ¹£¬ËùÓĞÕæÕıµÄÅĞ¶Ï£¬¶¼ÔÚecity_lifeskillstudy.luaÖĞÊµÏÖ)
x713623_g_ScriptId 		= 713623
x713623_g_AbilityName	= "DßŞng khí"
x713623_g_AbilityID		= ABILITY_YANGQI

-- ´¦ÀíÍæ¼ÒËù×öµÄÑ¡Ôñ
function x713623_OnDefaultEvent( sceneId, selfId, targetId, nNum, npcScriptId, bid )
	if bid then
		if 0 == nNum then	--Ñ§Ï°
			if CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "CheckCityStatus",sceneId, selfId,targetId) < 0 then
				return
			end
			BeginEvent(sceneId)
			local lv,money,con
			lv,money,con = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, x713623_g_AbilityID, bid, 4)
			local studyMsg = format("Nªu các hÕ ğÕt t¾i c¤p %d, phäi tiêu t¯n #{_MONEY%d} và %d ği¬m bang hµi m¾i có th¬ h÷c kÛ nång dßŞng khí. Các hÕ có quyªt ğ¸nh h÷c không?", lv, money, con)
			AddText(sceneId,studyMsg)
			--È·¶¨Ñ§Ï°°´Å¥
					AddNumText(sceneId,x713623_g_ScriptId,"TÕi hÕ xác ğ¸nh mu¯n h÷c", 6, 3)
			--È¡ÏûÑ§Ï°°´Å¥
					AddNumText(sceneId,x713623_g_ScriptId,"TÕi hÕ chï mu¯n coi", 8, 4)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		elseif 1 == nNum then	--Éı¼¶
			if CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "CheckCityStatus",sceneId, selfId,targetId) < 0 then
				return
			end
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713623_g_AbilityID, bid, 2)
			if ret > 0 then
				CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, x713623_g_AbilityID, bid, 2)
			end
		elseif 2 == nNum then	--ÁË½â
			local dialog = "#{event_liveabilityevent_0032}"
			BeginEvent(sceneId)
				AddText(sceneId, dialog)
			EndEvent(sceneId)
			DispatchEventList(sceneId, selfId, targetId)
		elseif 3 == nNum then	--È·¶¨Ñ§Ï°
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713623_g_AbilityID, bid, 1)
			if ret > 0 then
				CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, x713623_g_AbilityID, bid, 1)
			end
		elseif 4 <= nNum then	--Ö»À´¿´¿´
			CallScriptFunction( npcScriptId, "OnDefaultEvent",sceneId, selfId, targetId )
		end
	else
		-- Ä¿Ç°ÑøÆø¼¼ÄÜ±ØĞëÔÚ³ÇÊĞÀï²ÅÄÜÑ§Ï°¡¢Éı¼¶¡¢ÁË½â
	end
end

-- ÁĞ¾ÙÑ¡Ïî
-- nNum == 1 Ñ§Ï°
-- nNum == 2 Éı¼¶
-- nNum == 3 ÁË½â
function x713623_OnEnumerate( sceneId, selfId, targetId, bid, nNum)
	if bid then
		if 1 == nNum then
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713623_g_AbilityID, bid, 5)
			if ret > 0 then AddNumText(sceneId,x713623_g_ScriptId,"H÷c "..x713623_g_AbilityName.." kÛ nång", 12, 0) end
			return
		elseif 2 == nNum then
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713623_g_AbilityID, bid, 6)
			if ret > 0 then AddNumText(sceneId,x713623_g_ScriptId,"Thång c¤p"..x713623_g_AbilityName.." kÛ nång", 12, 1) end
			return
		elseif 3 == nNum then
			AddNumText(sceneId,x713623_g_ScriptId,"TÕi hÕ mu¯n tìm hi¬u dßŞng khí",11,2)
			AddNumText(sceneId,x713623_g_ScriptId,"Quay lÕi",8,5)
		end
	else
		-- Ä¿Ç°ÑøÆø¼¼ÄÜ±ØĞëÔÚ³ÇÊĞÀï²ÅÄÜÑ§Ï°¡¢Éı¼¶¡¢ÁË½â
	end
end
