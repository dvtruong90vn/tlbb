--楼兰NPC....
--缥缈峰接引使....

--脚本号
x892022_g_ScriptId = 892022


--所拥有的事件ID列表
x892022_g_eventList={890063}

--**********************************
--事件列表
--**********************************
function x892022_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		--AddText(sceneId,"飘渺峰：小飘专爆宝石箱子，神器熔炼精华，玄天寒玉，天机珠，各种宝石，7级新莽神符，手工打造材料！大飘爆宝石箱子，神符，天机珠，玄天寒玉，7级新莽神符，手工打造材料！")
		AddText(sceneId,"少室山：专爆终极神器图样，7级新莽神符，7级神节，天机珠和超级打造图和其他高级物品！")
		for i, eventId in x892022_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件交互入口
--**********************************
function x892022_OnDefaultEvent( sceneId, selfId,targetId )
	x892022_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x892022_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x892022_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x892022_g_ScriptId )
		return
		end
	end
end
