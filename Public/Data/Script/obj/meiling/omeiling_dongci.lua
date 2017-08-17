--Ã·ÁëNPC
--¶¬´Ì
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x033005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta th¤y dùng ph¤n son cüa Th¦m tiên sinh cûng ð©p l¡m, thêm mµt chút má h°ng càng ð©p. À, lông mi cûng phäi sØa mµt chút.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
