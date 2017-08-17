--副本任务
--木人

--************************************************************************
--MisDescBegin

--脚本号
x454545_g_ScriptId = 454545

--复活次数
x454545_g_ReLifeTimes = 10
--副本名称
x454545_g_CopySceneName="生死擂台"

--MisDescEnd
--************************************************************************

--角色Mission变量说明
x454545_g_Param_huan		=0	--0号：已经完成的环数，在接收任务时候赋值
x454545_g_Param_ok			=1	--1号：当前任务是否完成(0未完成；1完成)
x454545_g_Param_sceneid		=2	--2号：当前副本任务的场景号
x454545_g_Param_teamid		=3	--3号：接副本任务时候的队伍号
x454545_g_Param_killcount	=4	--4号：杀死任务怪的数量
x454545_g_Param_time		=5	--5号：完成副本所用时间(单位：秒)
--6号：未用
--7号：未用

x454545_g_CopySceneType=FUBEN_GODFIRE	--副本类型，定义在ScriptGlobal.lua里面
x454545_g_LimitMembers=1			--可以进副本的最小队伍人数
x454545_g_TickTime=5				--回调脚本的时钟时间（单位：秒/次）
x454545_g_LimitTotalHoldTime=360	--360,1440副本可以存活的时间（单位：次数）,如果此时间到了，则任务将会失败
x454545_g_LimitTimeSuccess=360		--360,1440副本时间限制（单位：次数），如果此时间到了，任务完成
x454545_g_CloseTick=6				--副本关闭前倒计时（单位：次数）
x454545_g_NoUserTime=5			--副本中没有人后可以继续保存的时间（单位：秒）
x454545_g_DeadTrans=0				--死亡转移模式，0：死亡后还可以继续在副本，1：死亡后被强制移出副本
x454545_g_Fuben_X=154				--进入副本的位置X
x454545_g_Fuben_Z=165				--进入副本的位置Z
x454545_g_Back_X=160				--源场景位置X
x454545_g_Back_Z=106				--源场景位置Z
x454545_g_TotalNeedKill=10			--需要杀死怪物数量
x454545_g_Param_sceneid=8			--设置场景ID

--**********************************
--任务入口函数
--**********************************
function x454545_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "  最近不知从何处来了十二个恶人，自称十二煞星，在我洛阳内横行无忌，鱼肉百姓，这十二人武艺高强，嚣张跋扈，近日更是有不少江湖江湖宵小之类投奔他们，使其势力大涨，老衲虽听闻后迅速赶来，奈何势孤力单，这可如何是好? " )	
		AddNumText( sceneId, x454545_g_ScriptId, "杀星", 6, 10 )
		AddNumText( sceneId, x454545_g_ScriptId, "杀星介绍", 6, 20 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--列举事件
--**********************************
function x454545_OnEnumerate( sceneId, selfId, targetId )
	
end
--**********************************
--事件列表选中一项
--**********************************
function x454545_OnEventRequest( sceneId, selfId, targetId, eventId)
	if GetNumText() == 10 then

	local ret, msg = x454545_CheckAccept( sceneId, selfId, targetId )
	if 1 ~= ret then
		BeginEvent(sceneId)
			AddText(sceneId,msg)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

		BeginEvent( sceneId )
			AddText( sceneId, "他们人多势众，你最好能召集各大门派之人一同前往才好，如果你准备好了，老衲可送你前往他们所设的擂台处。" )
			AddNumText( sceneId, x454545_g_scriptId, "前往生死擂台", 6, 666)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 666 then
		local nearmembercount	= GetNearTeamCount( sceneId, selfId )
		x454545_MakeCopyScene( sceneId, selfId, nearmembercount )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0恭喜玩家#gffff00"..nam.."#gff00f0带领队伍成功进入12杀星副本，副本将掉落大量神秘高级奖励,大家一起期待他能获得丰厚奖品吧！", 4 )
	end
end

--**********************************
--检测接受条件
--**********************************
function x454545_CheckAccept( sceneId, selfId, targetId )

	if LuaFnHasTeam(sceneId,selfId) ~= 1 then
		return 0, "12杀星副本需要3人以上组队才能参加，如果你只是想展示个人的才华，请去参加华山论剑吧！"
	end

	--是不是队长....
	if GetTeamLeader(sceneId,selfId) ~= selfId then
		return 0, "你不是队长。"
	end

	--人数是否够....
	if GetTeamSize(sceneId,selfId) < 1 then
		return 0, "一支队伍不足3人，就算是进入生死擂台也没有什么获胜的可能啊，还是不要去了。"
	end

	--是否都在附近....
	local NearTeamSize = GetNearTeamCount(sceneId,selfId)
	if GetTeamSize(sceneId,selfId) ~= NearTeamSize then
		return 0, "有队友没在附近。"
	end

	local Humanlist = {}
	local nHumanNum = 0

	--是否有人不够90级....
	for i=0, NearTeamSize-1 do
		local PlayerId = GetNearTeamMember( sceneId, selfId, i )
		if GetLevel( sceneId, PlayerId ) < 14 then
			Humanlist[nHumanNum] = GetName( sceneId, PlayerId )
			nHumanNum = nHumanNum + 1
		end
	end

	if nHumanNum > 0 then

		local msg = "    队伍当中的"
		for i=0, nHumanNum-2 do
			msg = msg .. Humanlist[i] .. "，"
		end
		msg = msg .. Humanlist[nHumanNum-1] .. "的修为尚浅，不足80级，还是不要去为妙。"
		return 0, msg

	end

	--是否有人今天做过3次了....牙牙3.6修改 防止没有进去的当队长不检测
	nHumanNum = 0
	local CurDayTime = GetDayTime()
	for i=0, NearTeamSize-1 do

		local PlayerId = GetNearTeamMember( sceneId, selfId, i )
		local lastTime = GetMissionData( sceneId, PlayerId, MD_CHUNJIE_BIANPAO_DAYTIME )
		local lastDayTime = floor( lastTime / 100 )
		local lastDayCount = mod( lastTime, 100 )
	
		if CurDayTime > lastDayTime then
			lastDayTime = CurDayTime
			lastDayCount = 0
		end

		if lastDayCount >= 3 then
			Humanlist[nHumanNum] = GetName( sceneId, PlayerId )
			nHumanNum = nHumanNum + 1
		end

	end

	if nHumanNum > 0 then

		local msg = "    "
		for i=0, nHumanNum-2 do
			msg = msg .. Humanlist[i] .. "，"
		end
		msg = msg .. Humanlist[nHumanNum-1] .. "今天已经挑战过3次杀星了。"
		return 0, msg

	end

	return	1
end

--**********************************
--接受
--**********************************
function x454545_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--放弃
--**********************************
function x454545_OnAbandon( sceneId, selfId )
	
end

--**********************************
--创建副本
--**********************************
function x454545_MakeCopyScene( sceneId, selfId, nearmembercount )

	local mylevel = 120
	local iniLevel=120

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "gusu.nav"); --地图是必须选取的，而且必须在Config/SceneInfo.ini里配置好
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x454545_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x454545_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x454545_g_CopySceneType);--设置副本数据，这里将0号索引的数据设置为999，用于表示副本号999(数字自定义)
	LuaFnSetCopySceneData_Param(sceneId, 1, x454545_g_ScriptId);--将1号数据设置为副本场景事件脚本号
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);--设置定时器调用次数
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);--设置副本入口场景号, 初始化
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);--设置副本关闭标志, 0开放，1关闭
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);--设置离开倒计时次数
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --保存队伍号
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;--杀死Boss的数量
	LuaFnSetCopySceneData_PvpRuler( sceneId, 9 )

	local x,z = GetWorldPos( sceneId, selfId )		

	LuaFnSetSceneLoad_Monster( sceneId, "shengsileitai_monster2.ini" )
	
    	local CopyScene_LevelGap = 31
	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --级别差，CopyScene_LevelGap 在 scene.lua 中赋值

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --初始化完成后调用创建副本函数
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"副本创建成功！");
		else
			AddText(sceneId,"副本数量已达上限，请稍候再试！");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end

--**********************************
--继续
--**********************************
function x454545_OnContinue( sceneId, selfId, targetId )
	
end

--**********************************
--检测是否可以提交
--**********************************
function x454545_CheckSubmit( sceneId, selfId )
	
end

--**********************************
--提交
--**********************************
function x454545_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end
--**********************************
--怪物死亡
--**********************************
function x454545_OnDie(sceneId, objId, killerId)
    --PrintStr( "x454545_OnDie [objId]"..objId.." [killerId]"..killerId.."[sceneId]"..sceneId )
    local DataID = GetMonsterDataID( sceneId, objId )
    x454545_OnKillObject( sceneId, killerId, DataID, objId )
end
--**********************************
--杀死怪物或玩家
--**********************************
function x454545_OnKillObject( sceneId, selfId, objdataId ,objId )
	local temp = random(2)
		if temp==1 then
			AddMonsterDropItem( sceneId, objId, selfId, 30900001 )
		end
end

--**********************************
--进入区域事件
--**********************************
function x454545_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--道具改变
--**********************************
function x454545_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--副本事件
--**********************************
function x454545_OnCopySceneReady( sceneId, destsceneId )

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId);--设置副本入口场景号
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId) ;
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid);
	NewWorld( sceneId,leaderObjId, destsceneId, x454545_g_Fuben_X, x454545_g_Fuben_Z)
	local nearmembercount	= GetNearTeamCount( sceneId, leaderObjId )
	local member
	local misIndex
	for	i=0, nearmembercount-1 do
		member = GetNearTeamMember( sceneId, leaderObjId, i )
		if LuaFnIsCanDoScriptLogic( sceneId, member ) == 1 then
		NewWorld( sceneId, member, destsceneId, x454545_g_Fuben_X, x454545_g_Fuben_Z )
		end
	end
end

--**********************************
--有玩家进入副本事件
--**********************************
function x454545_OnPlayerEnter( sceneId, selfId )

--设置死亡后复活点位置
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x454545_g_Fuben_X, x454545_g_Fuben_Z );
	--SetUnitCampID(sceneId, selfId, selfId, 109)

	local lastTime = GetMissionData( sceneId, selfId, MD_CHUNJIE_BIANPAO_DAYTIME )
	local lastDayTime = floor( lastTime / 100 )
	local lastDayCount = mod( lastTime, 100 )
	local CurDayTime = GetDayTime()

	if CurDayTime > lastDayTime then
		lastDayTime = CurDayTime
		lastDayCount = 0
	end

	lastDayCount = lastDayCount + 1
	lastTime = lastDayTime * 100 + lastDayCount
	SetMissionData( sceneId, selfId, MD_CHUNJIE_BIANPAO_DAYTIME, lastTime )

end

--**********************************
--有玩家在副本中死亡事件
--**********************************
function x454545_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--副本场景定时器事件
--**********************************
function x454545_OnCopySceneTimer( sceneId, nowTime )
	--副本时钟读取及设置
	TickCount = LuaFnGetCopySceneData_Param(sceneId, 2) ;--取得已经执行的定时次数
	TickCount = TickCount+1 ;
	LuaFnSetCopySceneData_Param(sceneId, 2, TickCount);--设置新的定时器调用次数

	--副本关闭标志
	leaveFlag = LuaFnGetCopySceneData_Param(sceneId, 4) ;

	if leaveFlag == 1 then --需要离开

		--离开倒计时间的读取和设置
		leaveTickCount = LuaFnGetCopySceneData_Param(sceneId, 5) ;
		leaveTickCount = leaveTickCount+1 ;
		LuaFnSetCopySceneData_Param(sceneId, 5, leaveTickCount) ;

		if leaveTickCount == x454545_g_CloseTick then --倒计时间到，大家都出去吧

			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--取得副本入口场景号

			--将当前副本场景里的所有人传送回原来进入时候的场景
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
				NewWorld( sceneId, mems[i], oldsceneId, x454545_g_Back_X, x454545_g_Back_Z )
			end

		elseif leaveTickCount<x454545_g_CloseTick then

			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--取得副本入口场景号

			--通知当前副本场景里的所有人，场景关闭倒计时间
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
	  			BeginEvent(sceneId)
	  				strText = format("你将在%d秒后离开场景!", (x454545_g_CloseTick-leaveTickCount)*x454545_g_TickTime )
	  				AddText(sceneId,strText);
	  			EndEvent(sceneId)
	  			DispatchMissionTips(sceneId,mems[i])
			end
		end
	elseif TickCount == x454545_g_LimitTimeSuccess then
		--此处设置有时间限制的任务完成处理
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)

  			BeginEvent(sceneId)
  				AddText(sceneId,"任务时间到，完成!");
  			EndEvent(sceneId)
  			DispatchMissionTips(sceneId,mems[i])
			misIndex = GetMissionIndexByID(sceneId,mems[i],x454545_g_MissionId)--取得任务数据索引值
			--将任务的第1号数据设置为1,表示完成的任务
			SetMissionByIndex(sceneId,mems[i],misIndex,x454545_g_Param_ok,1)--设置任务数据
			--完成副本所用时间
			SetMissionByIndex(sceneId,mems[i],misIndex,x454545_g_Param_time,TickCount*x454545_g_TickTime)--设置任务数据
		end

		--设置副本关闭标志
		LuaFnSetCopySceneData_Param(sceneId, 4, 1) ;

	elseif TickCount == x454545_g_LimitTotalHoldTime then --副本总时间限制到了
		--此处设置副本任务有时间限制的情况，当时间到后处理...
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			DelMission( sceneId, mems[i], x454545_g_MissionId );--任务失败,删除之

  			BeginEvent(sceneId)
  				AddText(sceneId,"任务失败，超时!");
  			EndEvent(sceneId)
  			DispatchMissionTips(sceneId,mems[i])
		end

		--设置副本关闭标志
		LuaFnSetCopySceneData_Param(sceneId, 4, 1) ;

	end
end
--**********************************
--将某玩家传送出副本,回到进入时的位置
--**********************************
function x454545_KickOut( sceneId, objId )
    local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )	--取得副本入口场景号
	local x = 158 --进入时的坐标X
	local z = 130 --进入时的坐标Z
	
	if LuaFnIsObjValid( sceneId, objId ) == 1 then
	    NewWorld( sceneId, objId, oldsceneId, x, z )
	end
	
end
--**********************************
-- 对话窗口信息提示
--**********************************
function x454545_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- 屏幕中间信息提示
--**********************************
function x454545_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
--**********************************
-- 检测开放时间
--**********************************
function x454545_IsActivityOpen(sceneId)
	local nHour = GetHour();
	local nMinute = GetMinute();
	local nCurTempTime = nHour * 60 + nMinute;
	if nCurTempTime >= 20 * 60 and nCurTempTime < 21 * 60 + 20 then
		return 1;
	end
	return 0;
--	return 1
end
--**********************************
-- 检测开放时间2
--**********************************
function x454545_IsActivityOpen2(sceneId)
	local nHour = GetHour();
	local nMinute = GetMinute();
	local nCurTempTime = nHour * 60 + nMinute;
	if nCurTempTime >= 21 * 60 + 20 and nCurTempTime < 21 * 50 then
		return 1;
	end
	return 0;
--	return 1
end
--**********************************
-- 赋值
--**********************************
function x454545_ToMax( sceneId, selfId, killerId ,guildName,maxCount )
	PK_MAXCOUNTGUILD=guildName
	PK_MAXCOUNT=maxCount
end
--**********************************
-- 全球通告
--**********************************
function x454545_GlobalCountNews( sceneId, selfId, targetId,str )
	BeginEvent( sceneId )
        	AddGlobalCountNews( sceneId, str )
        EndEvent( sceneId )
        DispatchEventList( sceneId, selfId, targetId )
end