--大理NPC
--Mu礽 mu礽 Thi阯 Ti阯
--普通

--**********************************
--事件交互入口
--**********************************
function x714011_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Mu礽 mu礽 Thi阯 Ti阯~~")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
