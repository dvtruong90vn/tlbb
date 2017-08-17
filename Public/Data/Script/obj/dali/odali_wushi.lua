--´óÀíNPC
--ÎäÊ¿
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x002065_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Lu§n võ công, hãy ğªn Lôi Ğài...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
