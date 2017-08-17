--NPCÈøÑ©
--²ÔÉ½
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x025112_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC¶Ô»°
--**********************************
		AddText(sceneId,"M²i nåm mùa ðông ðªn n½i ðây tuyªt phü kh¡p n½i. Nó ðang ám chï gì ðây ? Á! Mµt thª gi¾i kÏ di®u nhßng có chút ðáng sþ.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
