--¶Ô»°ÊÂ¼ş npc°×Ó±Ã÷

--½Å±¾ºÅ
x713612_g_ScriptId = 713512

--¶Ô»°ÄÚÈİ
x713612_g_dialog = {"#{event_liveabilityevent_0013}",
			"Câu höi thÑ 2",
			"Chï c¥n các hÕ h÷c ğßşc phß½ng pháp Thánh Höa Thu§t, là có th¬ chª ra các loÕi ğan dßşc r°i",
			"T¤t nhiên, nó còn phø thuµc vào ğÆng c¤p kÛ nång næa. ĞÆng c¤p kÛ nång càng cao, ğan dßşc chª ra sÑc mÕnh càng l¾n",
			"#{event_liveabilityevent_0014}"}
x713612_g_button = {"Nói v« thñc tª chút ği",
			"Làm thª nào ğ¬ chª ğan dßşc?",
			"Sau ğó ra sao?",
			"Kªt quä thª nào?",
			}

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x713612_OnDefaultEvent( sceneId, selfId, targetId, MessageNum )	--MessageNumÊÇ¶Ô»°±àºÅ£¬ÓÃÓÚµ÷ÓÃ²»Í¬¶Ô»°
		BeginEvent(sceneId)
			AddText(sceneId, x713612_g_dialog[MessageNum])
			if MessageNum ~= 5 then
				AddNumText(sceneId,MessageNum, x713612_g_button[MessageNum],11,-1)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x713612_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713612_g_ScriptId,"Tìm hi¬u Thánh Höa Thu§t",11,-1)
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x713612_CheckAccept( sceneId, selfId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x713612_OnAccept( sceneId, selfId, AbilityId )
end
