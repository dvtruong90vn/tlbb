--¶Ô»°ÊÂ¼ş npc°×Ó±Ã÷

--½Å±¾ºÅ
x713615_g_ScriptId = 713512

--¶Ô»°ÄÚÈİ
x713615_g_dialog = {"#{event_liveabilityevent_0019}",
			"Câu höi s¯ 2",
			"Chï c¥n các hÕ h÷c ğßşc phß½ng thÑc Mê Thu§t, có th¬ bào chª nên các loÕi thu¯c có tính mê ho£c cñc cao.",
			"Mê Thu§t còn phø thuµc vào ğÆng c¤p kÛ nång. ĞÆng c¤p kÛ nång càng cao, thu¯c chª ra ğµc tính càng mÕnh",
			"#{event_liveabilityevent_0020}"}
x713615_g_button = {"Nói v« thñc tª ği",
			"Làm sao ğ¬ chª thu¯c mê?",
			"Sau ğó ra sao?",
			"Thu¯c mê ğ¬ làm gì?",
			}

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x713615_OnDefaultEvent( sceneId, selfId, targetId, MessageNum )	--MessageNumÊÇ¶Ô»°±àºÅ£¬ÓÃÓÚµ÷ÓÃ²»Í¬¶Ô»°
		BeginEvent(sceneId)
			AddText(sceneId, x713615_g_dialog[MessageNum])
			if MessageNum ~= 5 then
				AddNumText(sceneId,MessageNum, x713615_g_button[MessageNum],11,-1)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x713615_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713615_g_ScriptId,"Tìm hi¬u chª ğµc",11,-1)
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x713615_CheckAccept( sceneId, selfId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x713615_OnAccept( sceneId, selfId, AbilityId )
end
