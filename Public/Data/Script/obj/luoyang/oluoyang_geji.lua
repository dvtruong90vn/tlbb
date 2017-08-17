--ÂåÑôNPC
--¸è¼¿
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000045_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Tôi là ti¬u a hoàn, vi®c cüa chü nhân tôi không biªt ðßþc")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
