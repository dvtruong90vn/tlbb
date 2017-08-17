--¶Ô»°ÊÂ¼ş npc°×Ó±Ã÷

--½Å±¾ºÅ
x713614_g_ScriptId = 713512

--¶Ô»°ÄÚÈİ
x713614_g_dialog = {"#{event_liveabilityevent_0017}",
			"Câu höi s¯ 2",
			"Chï c¥n các hÕ h÷c ğßşc phß½ng thÑc Huy«n Bång Thu§t là có th¬ chª ra ğan dßşc có sÑc mÕnh khüng khiªp",
			"Nói là v§y chÑ th§t ra chÆng ğ½n giän ğªn thª. ĞÆng c¤p Huy«n Bång Thu§t càng cao, ğan dßşc chª ra càng mÕnh",
			"#{event_liveabilityevent_0018}"}
x713614_g_button = {"Nói v« thñc tª ği",
			"Làm sao ğ¬ chª ğan dßşc?",
			"Sau ğó ra sao?",
			"Kªt quä thª nào?",
			}

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x713614_OnDefaultEvent( sceneId, selfId, targetId, MessageNum )	--MessageNumÊÇ¶Ô»°±àºÅ£¬ÓÃÓÚµ÷ÓÃ²»Í¬¶Ô»°
		BeginEvent(sceneId)
			AddText(sceneId, x713614_g_dialog[MessageNum])
			if MessageNum ~= 5 then
				AddNumText(sceneId,MessageNum, x713614_g_button[MessageNum],11,-1)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x713614_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713614_g_ScriptId,"Tìm hi¬u Huy«n Bång Thu§t",11,-1)
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x713614_CheckAccept( sceneId, selfId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x713614_OnAccept( sceneId, selfId, AbilityId )
end
