--¶Ô»°ÊÂ¼þ npc°×Ó±Ã÷

--½Å±¾ºÅ
x713617_g_ScriptId = 713512

--¶Ô»°ÄÚÈÝ
x713617_g_dialog = {"Nªu nhß các hÕ mu¯n d®t lên nhæng loÕi phù chï th¥n kÏ không gi¯ng t¶ gi¤y bình thß¶ng thì ðã có Chª Phù cüa Nga My",
			"Câu höi s¯ 2",
			"Chï c¥n các hÕ h÷c ðßþc phß½ng thÑc Chª Phù là có th¬ chª tÕo phù chï r°i",
			"ÐÆng c¤p, công døng cüa phù chª còn phø thuµc vào ðÆng c¤p kÛ nång næa. Nªu nhß mu¯n ðÆng c¤p phù chï chª ra càng cao, ch¤t lßþng càng t¯t thì c¤p ðµ kÛ nång Chª Phù cûng không ðßþc th¤p",
			"Phù chï không ð½n giän chï là mµt t¶ gi¤y. Nó còn có tác døng r¤t l¾n h² trþ cho ngß¶i sØ døng nó..."}
x713617_g_button = {"Nói v« thñc tª ði",
			"Làm sao ð¬ Chª Phù?",
			"Sau ðó ra sao?",
			"Phù chï có tác døng gì?",
			}

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x713617_OnDefaultEvent( sceneId, selfId, targetId, MessageNum )	--MessageNumÊÇ¶Ô»°±àºÅ£¬ÓÃÓÚµ÷ÓÃ²»Í¬¶Ô»°
		BeginEvent(sceneId)
			AddText(sceneId, x713617_g_dialog[MessageNum])
			if MessageNum ~= 5 then
				AddNumText(sceneId,MessageNum, x713617_g_button[MessageNum],11,-1)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x713617_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713617_g_ScriptId,"Tìm hi¬u Chª Phù",11,-1)
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x713617_CheckAccept( sceneId, selfId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x713617_OnAccept( sceneId, selfId, AbilityId )
end
