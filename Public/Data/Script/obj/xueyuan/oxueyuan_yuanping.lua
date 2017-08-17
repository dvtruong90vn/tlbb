--NPC
--Ô¬Æ½
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x021202_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC¶Ô»°
--**********************************
		AddText(sceneId,"Ngß½i g£p qua b¸ phong · kh¯i bång lý  cñ nhân sao? Th§t mu¯n biªt h¡n là nhß thª nào ðªn......")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
