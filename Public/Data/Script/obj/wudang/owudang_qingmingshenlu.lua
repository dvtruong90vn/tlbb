--武当NPC
--普通弟子
--普通

--**********************************
--事件交互入口
--**********************************
function x012011_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"<H誧 minh c豼 cao, thanh v錸 vu thi阯>")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
