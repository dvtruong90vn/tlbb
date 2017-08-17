--´óÀíNPC
--¶¡Àø
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x003006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Nghe nói Thái Lão Gia còn s¯ng, sao lÕi thª nhï? Nåm Thái Lão Gia quy tiên, chính m¡t ta nhìn th¤y. Trên ğ¶i l¨ nào lÕi xäy ra chuy®n nhß v§y. Th§t không th¬ tin n±i...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
