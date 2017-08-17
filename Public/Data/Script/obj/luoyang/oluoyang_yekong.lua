--ÂåÑôNPC
--Òµ¿Õ
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x000095_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Thí chü, cu¯i cùng các hÕ ğã t¾i. Sß phø ğang ğşi các hÕ")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
