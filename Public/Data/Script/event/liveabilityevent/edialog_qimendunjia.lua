--¶Ô»°ÊÂ¼ş npc°×Ó±Ã÷

--½Å±¾ºÅ
x713619_g_ScriptId = 713512

--¶Ô»°ÄÚÈİ
x713619_g_dialog = {"#{event_liveabilityevent_0023}",
			"Câu höi thÑ 2",
			"Chï c¥n các hÕ h÷c ğßşc phß½ng thÑc KÏ Môn Ğµn Giáp, có th¬ chª ra các loÕi phù ğµc nh¤t vô nh¸ r°i",
			"Ğß½ng nhiên, ğÆng c¤p kÛ nång càng cao, phù chï chª ra có sÑc mÕnh càng l¾n",
			"#{event_liveabilityevent_0024}"}
x713619_g_button = {"Nói v« thñc tª chút ği",
			"Làm sao ğ¬ chª phù?",
			"Sau ğó ra sao?",
			"Kªt quä thª nào?",
			}

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x713619_OnDefaultEvent( sceneId, selfId, targetId, MessageNum )	--MessageNumÊÇ¶Ô»°±àºÅ£¬ÓÃÓÚµ÷ÓÃ²»Í¬¶Ô»°
		BeginEvent(sceneId)
			AddText(sceneId, x713619_g_dialog[MessageNum])
			if MessageNum ~= 5 then
				AddNumText(sceneId,MessageNum, x713619_g_button[MessageNum],11,-1)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x713619_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713619_g_ScriptId,"Tìm hi¬u KÏ Môn Ğµn Giáp",11,-1)
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x713619_CheckAccept( sceneId, selfId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x713619_OnAccept( sceneId, selfId, AbilityId )
end
