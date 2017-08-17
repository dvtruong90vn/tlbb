--ÂåÑôNPC
--×Ú¿¦°à
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000042_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Không biªt ÐÕi hµi túc c¥u nåm nay bên nào s¨ th¡ng, th§t h°i hµp!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
