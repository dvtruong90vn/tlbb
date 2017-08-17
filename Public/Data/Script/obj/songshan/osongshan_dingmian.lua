--´óÀíNPC
--¶¡Ãå
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x003005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"T× sau khi xäy ra chuy®n, tinh th¥n công tØ nhà tôi vçn không ğßşc t¯t, không rõ công tØ ğã nhìn th¤y gì?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
