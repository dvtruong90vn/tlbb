--洛阳NPC
--张浚
--普通

--**********************************
--事件交互入口
--**********************************
function x000098_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Nam nay, 姓i T痭g ch鷑g ta nh 鸶nh v鏽 餺誸 gi鋓 馥u")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
