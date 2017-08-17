--ÓñÏªNPC
--°¢Ê«Âê
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x027005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Là ngß½i cÑu ta? A H¡c, A H¡c ca · ğâu?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
