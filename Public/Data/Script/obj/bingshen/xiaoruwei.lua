-- Áì½±NPC

x894068_g_scriptId = 894068

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x894068_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Các ngß½i s¨ phäi trä giá cho tµi l²i các ngß½i ðã gây ra...")
		AddNumText( sceneId, x894068_g_scriptId, "#c00ff00Chiªn ð¤u", 10, 200)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x894068_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 200 then
		BeginEvent(sceneId)
			AddText(sceneId,"Huynh ð® ð°ng tâm. Mµt khi chúng ta ðã hþp sÑc thì các ngß½i chï có ðß¶ng chªt mà thôi!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end
