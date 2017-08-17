--ÂåÑôNPC
--ÕÔÇ®Ëï
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x000025_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ngß½i cûng t¾i Bách Mã Tñ bái Ph§t phäi không? Ph§t t± · ğây linh l¡m. M¤y ngày trß¾c, ti¬u Quyên ğã gØi thß cho ta, nh¤t ğ¸nh do thành tâm cüa ta ğã khiªn Ph§t t± cäm ğµng..")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
