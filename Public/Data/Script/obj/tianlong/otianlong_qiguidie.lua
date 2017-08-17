--ÌìÁúNPC
--Æë¹éµû
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x013010_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"G¥n ğây ta làm cho Bän Nhân ğÕi sß 1 t¤m cà sa, không biªt có v×a hay không.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
