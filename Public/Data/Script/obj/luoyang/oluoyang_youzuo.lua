--ÂåÑôNPC
--ÓÎõ¡
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x000039_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Lâu l¡m không g£p ân sß, th§t mong nh¾ biªt bao! #r#rÂn sß dÕy d² chúng ta r¤t t§n tøy, giúp chúng ta lînh ngµ ğßşc r¤t nhi«u ğÕo lı thª gian, hôm nay ğ£c bi®t t¾i v¤n an ân sß")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
