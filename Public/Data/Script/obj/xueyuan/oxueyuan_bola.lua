--NPC
--²©À­
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x021201_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC¶Ô»°
--**********************************
		AddText(sceneId,"Ngân Nhai Tuyªt Nguyên n½i n½i nguy c½ th§t mÕnh, · trong này hoÕt ðµng nên c¦n th§n.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
