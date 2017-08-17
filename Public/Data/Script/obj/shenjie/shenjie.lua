--新脚本闯天界

--脚本号
x009999_g_ScriptId = 009999

--随机地图号

x009999_g_MapId = {
	                 444,
	                 445,
	                 446,
	                 447,
	                 448,
	                 449,
	                 450,
	                 451,
}

--进入物品ID

x009999_g_ItemId = 30503080

--**********************************
--脚本开始
--**********************************
function x009999_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		BeginEvent( sceneId )
		AddText(sceneId,"由于闯天界的人过多,所以您必须通过抽签#r如果抽签成功就可以进入挑战魔兽获取丰厚奖品#r如果运气不好那只有重新抽啦！")
		AddNumText( sceneId, x009999_g_ScriptId, "#G开始闯天界", 6, 1 )
		AddNumText( sceneId, x009999_g_ScriptId, "#Y闯天界介绍", 11, 2 )
		AddNumText( sceneId, x009999_g_ScriptId, "算了。还是不要了", 12, 3 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--开始进入
--**********************************
function x009999_OnEventRequest( sceneId, selfId, targetId, eventId )
if GetNumText() == 1 then

	if GetItemCount(sceneId, selfId, x009999_g_ItemId)<1  then
	BeginEvent( sceneId )
		AddText(sceneId,"你身上没有天界入场券，我没办法帮你了。！")
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	return
	end

	local level = GetLevel( sceneId, selfId )
	if level < 100 then
	BeginEvent( sceneId )
		AddText(sceneId,"你等级小于100级，我没办法帮你了。")
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	return
	end

	if LuaFnGetDRideFlag(sceneId, selfId) ~= 0  then
	BeginEvent( sceneId )
		AddText(sceneId,"   双人骑乘状态下，不能进入，谢谢！")
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	return
	end
--组队的队伍大于2人的不能进入
	if LuaFnHasTeam( sceneId, selfId ) > 0 then
	BeginEvent( sceneId )
		AddText(sceneId,"    我们尊敬的玩家，闯天界只能一个人进去。")
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	return
	end

	  if LuaFnDelAvailableItem(sceneId, selfId, x009999_g_ItemId, 1) == 0 then
			 BeginEvent(sceneId)
			 AddText( sceneId, "你身上没有天界入场券，我没办法帮你了！" )
		   EndEvent(sceneId)
		   DispatchMissionTips( sceneId, selfId )
		   return
		 end

	
--开始执行随机事件
	local odd = random(1,85)
	local MapId = 0
	if( odd >= 1 and odd <= 10 ) then       
	MapId = x009999_g_MapId[1]
	elseif( odd >= 11 and odd <= 20 ) then       
	MapId = x009999_g_MapId[2]
	elseif( odd >= 21 and odd <= 30 ) then
	MapId = x009999_g_MapId[3]
	elseif( odd >= 31 and odd <= 40 ) then
	MapId = x009999_g_MapId[4]
	elseif( odd >= 41 and odd <= 50 ) then
	MapId = x009999_g_MapId[5]
	elseif( odd >= 51 and odd <= 60 ) then
	MapId = x009999_g_MapId[6]
	elseif( odd >= 61 and odd <= 70 ) then
	MapId = x009999_g_MapId[7]
	elseif( odd >= 71 and odd <= 80 ) then
	MapId = x009999_g_MapId[8]
	elseif( odd >= 81 and odd <= 85 ) then

		BeginEvent( sceneId )
		AddText(sceneId,"     对不起，你运气不大好噢。抽到了下下签。请重新抽吧！")
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	return
	end
	    
--检测目标地图中的人物
	local nHumanNum = LuaFnGetCopyScene_HumanCount("..MapId..")
	if nHumanNum > 100 then
	BeginEvent( sceneId )
		AddText(sceneId,"    对不起，你抽签的天界中已经有人了，请重新抽签！")
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	return
	end
	SetMissionData( sceneId, selfId, MF_JIETIANLAO, 0 )
	local	nam	= LuaFnGetName( sceneId, selfId )
	BroadMsgByChatPipe( sceneId, selfId, "#gff00f0恭喜玩家#gffff00"..nam.."#gff00f0成功进入天界，大家一起期待他能获得丰厚奖品吧！", 4 )
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, MapId, 29, 31, 10 )
	return

end
if GetNumText() == 2 then
	BeginEvent( sceneId )
		BeginEvent( sceneId )
		AddText(sceneId,"闯天界是本服原创的活动，进入条件必须是120级以上并提有天界入场券，成功进入后到地图中间的天界天官刷怪，成功消灭所有怪物后可以找天界天官领取奖励。成功进入将扣除一张天界入场券，人数满不扣除。运气不好抽签失败也扣除！")
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
if GetNumText() == 3 then
		-- 关闭界面
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
end
end

--======================
--设置提示框的类
--======================
function x009999_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	return
end