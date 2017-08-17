-- 402261
-- 燕子坞 传送出口区域脚本

x402261_g_SceneId = 4
x402261_g_X = 70
x402261_g_Z = 120

--玩家进入m祎 c醝 area 时触发
function x402261_OnEnterArea( sceneId, selfId )
	CallScriptFunction((400900), "TransferFunc",sceneId, 
																							selfId, 
																							x402261_g_SceneId,
																							x402261_g_X,
																							x402261_g_Z)
end

--玩家T読 m祎 c醝 area 呆了m祎 段时间没走则定时触发
function x402261_OnTimer( sceneId, selfId )
	-- 毫 gi鈟,看T読 C醝 n鄖  area 停留多久了
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5 gi鈟后仍未传送
	if StandingTime >= 5000 then
		x402261_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--玩家离开m祎 c醝 area 时触发
function x402261_OnLeaveArea( sceneId, selfId )
	
end

