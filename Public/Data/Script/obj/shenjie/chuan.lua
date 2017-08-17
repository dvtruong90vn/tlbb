 -- 大理擂台副本传送点

x009990_g_ScriptId = 009990
x009990_g_ChallengeScriptId = 806014

-- 玩家进入传送点
function x009990_OnEnterArea( sceneId, selfId )
	CallScriptFunction(x009990_g_ChallengeScriptId, "LeaveScene", sceneId, selfId )
end

-- 玩家停留在传送点
function x009990_OnTimer( sceneId, selfId )
	-- 毫秒，看在这个 area 停留多久了
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5秒后仍未传送
	if StandingTime >= 5000 then
		x009990_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

-- 玩家离开传送点
function x009990_OnLeaveArea( sceneId, selfId )
CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 241, 138 )
	return
end


