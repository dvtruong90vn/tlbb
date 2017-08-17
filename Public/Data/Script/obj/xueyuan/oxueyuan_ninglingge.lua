--NPC
--ÄþÁî¸ç
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x021200_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC¶Ô»°
--**********************************
		AddText(sceneId,"Ngß½i nghe nói qua  chim cánh cøt giä  hÕnh phúc này truy«n thuyªt sao?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
