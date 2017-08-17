--少林NPC
--缘根
--普通

--**********************************
--事件交互入口
--**********************************
function x009001_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"C錸 duy阯")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
