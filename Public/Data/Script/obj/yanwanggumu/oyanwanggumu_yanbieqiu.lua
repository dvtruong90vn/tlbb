--NPC
--
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x040001_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC¶Ô»°
--**********************************
		AddText(sceneId,"Cä ð¶i làm vi®c cho Hoàng Ðª, ðªn chªt cûng chï n¢m dß¾i mµt t¤t ð¤t...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
