--¶Ô»°ÊÂ¼ş npc°×Ó±Ã÷

--½Å±¾ºÅ
x713618_g_ScriptId = 713512

--¶Ô»°ÄÚÈİ
x713618_g_dialog = {"#{event_liveabilityevent_0021}",
			"Câu nói thÑ hai",
			"Chï c¥n huynh h÷c kÛ nång luy®n ğan. T¤t nhiên, ğÆng c¤p cüa huynh càng cao, ğan dßşc luy®n thành càng mÕnh",
			"Chï c¥n h÷c ğßşc kÛ nång luy®n ğan, kiªm cho ğü nguyên li®u là có th¬ thñc hành luy®n ğan r°i",
			"#{event_liveabilityevent_0022}"}
x713618_g_button = {"Ğßşc r°i, ğßşc r°i, nói gì thñc tª ği",
			"TÕi hÕ làm thª nào ğ¬ luy®n ğan?",
			"Sau ğó thì sao?",
			"Kªt quä thª nào?",
			}

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x713618_OnDefaultEvent( sceneId, selfId, targetId, MessageNum )	--MessageNumÊÇ¶Ô»°±àºÅ£¬ÓÃÓÚµ÷ÓÃ²»Í¬¶Ô»°
		BeginEvent(sceneId)
			AddText(sceneId, x713618_g_dialog[MessageNum])
			if MessageNum ~= 5 then
				AddNumText(sceneId,MessageNum, x713618_g_button[MessageNum],11,-1)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x713618_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713618_g_ScriptId,"Tìm hi¬u luy®n ğan",11,-1)
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x713618_CheckAccept( sceneId, selfId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x713618_OnAccept( sceneId, selfId, AbilityId )
end
