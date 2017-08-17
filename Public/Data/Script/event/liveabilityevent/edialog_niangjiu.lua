--¶Ô»°ÊÂ¼ş npc°×Ó±Ã÷

--½Å±¾ºÅ
x713613_g_ScriptId = 713512

--¶Ô»°ÄÚÈİ
x713613_g_dialog = {"#{event_liveabilityevent_0015}",
			"Câu nói thÑ hai",
			"Chï c¥n huynh h÷c kÛ nång n¤u rßşu là có th¬ n¤u rßşu ngay. T¤t nhiên, ğÆng c¤p cüa huynh càng cao, loÕi rßşu n¤u lên càng th½m",
			"Chï c¥n h÷c ğßşc kÛ nång n¤u rßşu, có ğü nguyên li®u, lña ch÷n phß½ng thÑc n¤u rßşu là có thª thñc thi r°i!",
			"#{event_liveabilityevent_0016}"}
x713613_g_button = {"Ğßşc r°i, ğßşc r°i, nói gì thñc tª ği",
			"TÕi hÕ làm thª nào ğ¬ n¤u rßşu?",
			"Sau ğó thì sao?",
			"Kªt quä thª nào?",
			}

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x713613_OnDefaultEvent( sceneId, selfId, targetId, MessageNum )	--MessageNumÊÇ¶Ô»°±àºÅ£¬ÓÃÓÚµ÷ÓÃ²»Í¬¶Ô»°
		BeginEvent(sceneId)
			AddText(sceneId, x713613_g_dialog[MessageNum])
			if MessageNum ~= 5 then
				AddNumText(sceneId,MessageNum, x713613_g_button[MessageNum],11,-1)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x713613_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713613_g_ScriptId,"Tìm hi¬u n¤u rßşu",11,-1)
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x713613_CheckAccept( sceneId, selfId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x713613_OnAccept( sceneId, selfId, AbilityId )
end
