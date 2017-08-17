--少林NPC
--萧远山
--普通

--**********************************
--事件交互入口
--**********************************
function x009006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Kh鬾g cho xem, ta nh 鸶nh ph鋓 xem!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
