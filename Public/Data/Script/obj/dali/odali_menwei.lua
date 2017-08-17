--´óÀíNPC
--ÃÅÎÀ
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x002022_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta là hµ v® ĞÕi Lı Thành!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
