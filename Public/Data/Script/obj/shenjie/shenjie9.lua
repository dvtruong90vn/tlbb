--免费会员

--************************************************************************
--MisDescBegin
--脚本号
x011111_g_ScriptId	= 011111

--MisDescEnd
--************************************************************************
--**********************************
--任务入口函数
--**********************************
function x011111_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "#G开放泡点服务.每间隔1小时可以领取一次赠点.不累计.#R赠点超过80万就无法再领取)" )
		AddNumText( sceneId, x011111_g_ScriptId, "领取泡点奖励(1000赠点)",5,11 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x011111_OnEventRequest( sceneId, selfId, targetId, eventId )
	local	key	= GetNumText()
	if key == 10 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "疯狂的石头" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G恭喜，您成功领取了会员称号。" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 11 then
		local mppoint = GetHumanMenpaiPoint(sceneId, humanObjId)
		local	lev	= GetLevel( sceneId, selfId )
		if lev < 100 then
				BeginEvent( sceneId )
				AddText( sceneId, "等级不足#G100#W级，请#G100#W级后再来找我。(注意：赠点超过80万就没法领取了)" )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				return -1
		end
		local CurTime = GetHourTime();
		local iTime = GetMissionData( sceneId, selfId, MD_VIPZENGDIAN );
		if iTime+1 >= CurTime then
			BeginEvent( sceneId )
			AddText( sceneId, "#cFF0000您一小时内只能领取一次赠点。(注意：赠点超过80万就没法领取了)" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		else
			ZengDian(sceneId,selfId,targetId,1,1000)
			SetMissionData(sceneId, selfId, MD_VIPZENGDIAN, CurTime);
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#G恭喜玩家 "..nam.."成功领取1小时泡点奖励(1000赠点)。", 4 )
			BeginEvent( sceneId )
				AddText( sceneId, "领取成功，您成功的领取了10000赠点。祝您游戏愉快。" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end
	end
	if key == 14 then
	BeginEvent( sceneId )
		AddText( sceneId, "尊敬的会员，请选择您要更换的门派。#G更换门派后，除第七本心法，心法等级全部调整为130级。#cFF0000注意：每天只能更新一次，不保留原属性请慎重选择。" )
		AddNumText( sceneId, x011111_g_ScriptId, "星宿",3,20 )
		AddNumText( sceneId, x011111_g_ScriptId, "逍遥",3,21 )
		AddNumText( sceneId, x011111_g_ScriptId, "少林",3,22 )
		AddNumText( sceneId, x011111_g_ScriptId, "天山",3,23 )
		AddNumText( sceneId, x011111_g_ScriptId, "天龙",3,24 )
		AddNumText( sceneId, x011111_g_ScriptId, "峨眉",3,25 )
		AddNumText( sceneId, x011111_g_ScriptId, "武当",3,26 )
		AddNumText( sceneId, x011111_g_ScriptId, "明教",3,27 )
		AddNumText( sceneId, x011111_g_ScriptId, "丐帮",3,28 )
    	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 23 then
		local day = GetDayTime();
		local lastDay = GetMissionData(sceneId, selfId, MD_GENGHUANMENPAI);
		if lastDay == day then
			BeginEvent( sceneId )
			AddText( sceneId, "#cFF0000尊敬的会员，您今天更换过门派了，一天只能更换一次。" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 7)
		LuaFnSetXinFaLevel(sceneId,selfId,43,130)
		LuaFnSetXinFaLevel(sceneId,selfId,44,130)
		LuaFnSetXinFaLevel(sceneId,selfId,45,130)
		LuaFnSetXinFaLevel(sceneId,selfId,46,130)
		LuaFnSetXinFaLevel(sceneId,selfId,47,130)
		LuaFnSetXinFaLevel(sceneId,selfId,48,130)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#G恭喜会员 "..nam.."成功更换门派→天山。", 4 )

		SetMissionData(sceneId, selfId, MD_GENGHUANMENPAI, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#G您加入了天山派，祝您游戏愉快。" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 24 then
		local day = GetDayTime();
		local lastDay = GetMissionData(sceneId, selfId, MD_GENGHUANMENPAI);
		if lastDay == day then
			BeginEvent( sceneId )
			AddText( sceneId, "#cFF0000尊敬的会员，您今天更换过门派了，一天只能更换一次。" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 6)
		LuaFnSetXinFaLevel(sceneId,selfId,37,130)
		LuaFnSetXinFaLevel(sceneId,selfId,38,130)
		LuaFnSetXinFaLevel(sceneId,selfId,39,130)
		LuaFnSetXinFaLevel(sceneId,selfId,40,130)
		LuaFnSetXinFaLevel(sceneId,selfId,41,130)
		LuaFnSetXinFaLevel(sceneId,selfId,42,130)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#G恭喜会员 "..nam.."成功更换门派→天龙。", 4 )

		SetMissionData(sceneId, selfId, MD_GENGHUANMENPAI, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#G您加入了天龙派，祝您游戏愉快。" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 25 then
		local day = GetDayTime();
		local lastDay = GetMissionData(sceneId, selfId, MD_GENGHUANMENPAI);
		if lastDay == day then
			BeginEvent( sceneId )
			AddText( sceneId, "#cFF0000尊敬的会员，您今天更换过门派了，一天只能更换一次。" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 4)
		LuaFnSetXinFaLevel(sceneId,selfId,25,130)
		LuaFnSetXinFaLevel(sceneId,selfId,26,130)
		LuaFnSetXinFaLevel(sceneId,selfId,27,130)
		LuaFnSetXinFaLevel(sceneId,selfId,28,130)
		LuaFnSetXinFaLevel(sceneId,selfId,29,130)
		LuaFnSetXinFaLevel(sceneId,selfId,30,130)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#G恭喜会员 "..nam.."成功更换门派→峨眉。", 4 )

		SetMissionData(sceneId, selfId, MD_GENGHUANMENPAI, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#G您加入了峨眉派，祝您游戏愉快。" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 26 then
		local day = GetDayTime();
		local lastDay = GetMissionData(sceneId, selfId, MD_GENGHUANMENPAI);
		if lastDay == day then
			BeginEvent( sceneId )
			AddText( sceneId, "#cFF0000尊敬的会员，您今天更换过门派了，一天只能更换一次。" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 3)
		LuaFnSetXinFaLevel(sceneId,selfId,19,130)
		LuaFnSetXinFaLevel(sceneId,selfId,20,130)
		LuaFnSetXinFaLevel(sceneId,selfId,21,130)
		LuaFnSetXinFaLevel(sceneId,selfId,22,130)
		LuaFnSetXinFaLevel(sceneId,selfId,23,130)
		LuaFnSetXinFaLevel(sceneId,selfId,24,130)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#G恭喜会员 "..nam.."成功更换门派→武当。", 4 )

		SetMissionData(sceneId, selfId, MD_GENGHUANMENPAI, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#G您加入了武当派，祝您游戏愉快。" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 27 then
		local day = GetDayTime();
		local lastDay = GetMissionData(sceneId, selfId, MD_GENGHUANMENPAI);
		if lastDay == day then
			BeginEvent( sceneId )
			AddText( sceneId, "#cFF0000尊敬的会员，您今天更换过门派了，一天只能更换一次。" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 1)
		LuaFnSetXinFaLevel(sceneId,selfId,7,130)
		LuaFnSetXinFaLevel(sceneId,selfId,8,130)
		LuaFnSetXinFaLevel(sceneId,selfId,9,130)
		LuaFnSetXinFaLevel(sceneId,selfId,10,130)
		LuaFnSetXinFaLevel(sceneId,selfId,11,130)
		LuaFnSetXinFaLevel(sceneId,selfId,12,130)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#G恭喜会员 "..nam.."成功更换门派→明教。", 4 )

		SetMissionData(sceneId, selfId, MD_GENGHUANMENPAI, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#G您加入了明教，祝您游戏愉快。" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 28 then
		local day = GetDayTime();
		local lastDay = GetMissionData(sceneId, selfId, MD_GENGHUANMENPAI);
		if lastDay == day then
			BeginEvent( sceneId )
			AddText( sceneId, "#cFF0000尊敬的会员，您今天更换过门派了，一天只能更换一次。" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 2)
		LuaFnSetXinFaLevel(sceneId,selfId,13,130)
		LuaFnSetXinFaLevel(sceneId,selfId,14,130)
		LuaFnSetXinFaLevel(sceneId,selfId,15,130)
		LuaFnSetXinFaLevel(sceneId,selfId,16,130)
		LuaFnSetXinFaLevel(sceneId,selfId,17,130)
		LuaFnSetXinFaLevel(sceneId,selfId,18,130)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#G恭喜会员 "..nam.."成功更换门派→丐帮。", 4 )

		SetMissionData(sceneId, selfId, MD_GENGHUANMENPAI, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#G您加入了丐帮，祝您游戏愉快。" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 13 then
	BeginEvent( sceneId )
		AddText( sceneId, "亲爱的玩家.你好.这里会更新本服最新的公告等.#G注意:请留言公告内容.#cffcc00祝您游戏愉快!" )
	EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end