--¶Ô»°ÊÂ¼ş npc°×Ó±Ã÷

--½Å±¾ºÅ
x713616_g_ScriptId = 713512

--¶Ô»°ÄÚÈİ
x713616_g_dialog = {"Nªu nhß các hÕ mu¯n chª thành nên các loÕi ğµc dßşc nguy hi¬m, hãy tìm hi¬u thu§t Chª Ğµc cüa Tinh Túc ta",
			"Câu höi s¯ 2",
			"Chï c¥n các hÕ h÷c ğßşc phß½ng thÑc Chª Ğµc, có th¬ bào chª nên các loÕi ğµc dßşc mang ğµc tính cñc cao.",
			"Chª Ğµc còn phø thuµc vào ğÆng c¤p kÛ nång. ĞÆng c¤p kÛ nång càng cao, ğµc dßşc chª ra ğµc tính càng mÕnh",
			"Không phäi chª ğµc ğ¬ ği hÕi ngß¶i, Tinh Túc ta còn sØ døng ğµc dßşc ğ¬ luy®n công næa. Tùy t×ng loÕi ğµc dßşc nào s¨ có công døng riêng cüa nó..."}
x713616_g_button = {"Nói v« thñc tª ği",
			"Làm sao ğ¬ chª ğµc?",
			"Sau ğó ra sao?",
			"Chª ğµc ğ¬ ği hÕi ngß¶i?",
			}

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x713616_OnDefaultEvent( sceneId, selfId, targetId, MessageNum )	--MessageNumÊÇ¶Ô»°±àºÅ£¬ÓÃÓÚµ÷ÓÃ²»Í¬¶Ô»°
		BeginEvent(sceneId)
			AddText(sceneId, x713616_g_dialog[MessageNum])
			if MessageNum ~= 5 then
				AddNumText(sceneId,MessageNum, x713616_g_button[MessageNum],11,-1)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x713616_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713616_g_ScriptId,"Tìm hi¬u chª ğµc",11,-1)
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x713616_CheckAccept( sceneId, selfId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x713616_OnAccept( sceneId, selfId, AbilityId )
end
