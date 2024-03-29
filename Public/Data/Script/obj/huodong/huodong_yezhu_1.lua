-- 402101
-- 场景中活动开始后刷出来的Npc

-- 
x402101_g_scriptId = 402101

--所拥有的事件ID列表
x402101_g_eventList={402102} 	

--**********************************
--事件列表
--**********************************
function x402101_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  ~#r  <嗅ng th呓ng, linh th� tr譶g l緉 hai m nh靚 ng呓i...>")
		for i, eventId in x402101_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--事件交互入口
--**********************************
function x402101_OnDefaultEvent( sceneId, selfId,targetId )
	x402101_UpdateEventList( sceneId, selfId,targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x402101_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x402101_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end
