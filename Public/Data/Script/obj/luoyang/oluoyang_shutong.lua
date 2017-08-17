--ÂåÑôNPC
--ÊéÙ×
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x000036_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Sau khi lão gia hoàn thành <<Tß tr¸ thông giám>>, sÑc khöe ğã r¤t suy nhßşc, lÕi thß¶ng xuyên b§n rµn vi®c nß¾c, th§t khiªn m÷i ngß¶i lo l¡ng")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
