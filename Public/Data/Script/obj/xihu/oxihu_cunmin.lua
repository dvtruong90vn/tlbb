--Î÷ºþNPC
--´åÃñ
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x030005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"H± Bão Thôn hi®n gi¶ không ðßþc yên tînh ðâu.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
