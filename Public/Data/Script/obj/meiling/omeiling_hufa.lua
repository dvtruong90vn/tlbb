--Ã·ÁëNPC
--»¤·¨
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x033008_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ð±i ð¶i r°i! Ð±i ð¶i r°i! Chúng ta s¡p làm chü r°i!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
