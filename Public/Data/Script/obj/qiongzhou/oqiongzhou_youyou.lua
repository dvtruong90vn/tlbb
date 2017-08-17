--ÇíÖÝNPC
--ÓÆÓÆ
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x035001_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Hu hu... — ðây nhi«u cá s¤u quá, chÆng l¨ TØ Khâm ca ca ngày ngày s¯ng trong tình cänh thª này sao?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x035001_OnDie( sceneId, selfId, killerId )
end
