--Ã÷½ÌNPC
--ÓàµÀ°²
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x011009_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Thánh næ ðÕi nhân g¥n ðây không ðßþc vui.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
