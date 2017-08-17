--楼兰NPC....
--缥缈峰接引使....

--脚本号
x893022_g_ScriptId = 893022


--所拥有的事件ID列表
x893022_g_eventList={890063}

--**********************************
--事件列表
--**********************************
function x893022_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		--AddText(sceneId,"飘渺峰：小飘专爆宝石箱子，神器熔炼精华，玄天寒玉，天机珠，各种宝石，7级新莽神符，手工打造材料！大飘爆宝石箱子，神符，天机珠，玄天寒玉，7级新莽神符，手工打造材料！")
		AddText(sceneId,"慕容山庄：听说里面有慕容三剑客驻守在里面，非常的强悍，打死后出非常罕见，稀有的物品！")
		for i, eventId in x893022_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件交互入口
--**********************************
function x893022_OnDefaultEvent( sceneId, selfId,targetId )
	x893022_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x893022_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x893022_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x893022_g_ScriptId )
		return
		end
	end
end
