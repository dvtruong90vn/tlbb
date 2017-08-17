--¶Ô»°ÊÂ¼ş npc°×Ó±Ã÷

--½Å±¾ºÅ
x713611_g_ScriptId = 713512

--¶Ô»°ÄÚÈİ
x713611_g_dialog = {"#{event_liveabilityevent_0011}",
			"Câu nói thÑ hai",
			"Chï c¥n huynh h÷c khai khoáng là có th¬ khai khoáng r°i. T¤t nhiên, ğÆng c¤p cüa huynh càng cao, chüng loÕi khoáng thÕch khai thác ğßşc càng có giá tr¸",
			"Chï c¥n h÷c ğßşc kÛ nång khai khoáng, tÕi mÕch khoáng nào ğó mi­n sao ğü ğÆng c¤p kÛ nång là có th¬ tiªn hành khai thác loÕi khoáng ğó",
			"#{event_liveabilityevent_0012}"}
x713611_g_button = {"Ğßşc r°i, ğßşc r°i, nói gì thñc tª ği",
			"TÕi hÕ làm thª nào ğ¬ khai khoáng?",
			"Sau ğó thì sao?",
			"Khoáng thÕch sau ğó ğ¬ làm gì?",
			}

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x713611_OnDefaultEvent( sceneId, selfId, targetId, MessageNum )	--MessageNumÊÇ¶Ô»°±àºÅ£¬ÓÃÓÚµ÷ÓÃ²»Í¬¶Ô»°
		BeginEvent(sceneId)
			AddText(sceneId, x713611_g_dialog[MessageNum])
			if MessageNum ~= 5 then
				AddNumText(sceneId,MessageNum, x713611_g_button[MessageNum],11,-1)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x713611_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713611_g_ScriptId,"Tìm hi¬u khai khoáng",11,-1)
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x713611_CheckAccept( sceneId, selfId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x713611_OnAccept( sceneId, selfId, AbilityId )
end
