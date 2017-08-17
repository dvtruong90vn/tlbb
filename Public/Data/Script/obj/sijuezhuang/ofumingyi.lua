--缥缈峰副本....
--符敏仪对话脚本....

--脚本号
x893073_g_ScriptId = 893073

--副本逻辑脚本号....
x893073_g_FuBenScriptId = 893063

--震慑buff表....
x893073_g_ZhenSheBuffTbl = { 10264, 10265, 10266 }
--有趣buff表....
x893073_g_YouQuBuffTbl = { 10261, 10262, 10263 }


--**********************************
--任务入口函数....
--**********************************
function x893073_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent(sceneId)
		AddText( sceneId, "#{PMF_20080521_12}" )

		--判断当前是否可以挑战双子....	
		if 1 == CallScriptFunction( x893073_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "ShuangZi" ) then
			AddNumText( sceneId, x893073_g_ScriptId, "Khi陁 chi猲", 10, 1 )
		end

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--事件列表选中一项
--**********************************
function x893073_OnEventRequest( sceneId, selfId, targetId, eventId )

	--如果正在激活BOSS则返回....
	if 1 == CallScriptFunction( x893073_g_FuBenScriptId, "IsSJZTimerRunning", sceneId ) then
		return
	end

	--是不是队长....
	if GetTeamLeader(sceneId,selfId) ~= selfId then
		BeginEvent(sceneId)
			AddText( sceneId, "#{PMF_20080521_07}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--判断当前是否可以挑战双子....	
	if 1 ~= CallScriptFunction( x893073_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "ShuangZi" ) then
		return
	end

	--如果正在和别的BOSSChi猲 黏u 则返回....
	local ret, msg = CallScriptFunction( x893073_g_FuBenScriptId, "CheckHaveBOSS", sceneId )
	if 1 == ret then
		BeginEvent(sceneId)
			AddText( sceneId, msg )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	--开启缥缈峰计时器来激活自己....
	CallScriptFunction( x893073_g_FuBenScriptId, "OpenSJZTimer", sceneId, 16, x893073_g_ScriptId, -1 ,-1 )
	
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end

--**********************************
--缥缈峰计时器的OnTimer....
--**********************************
function x893073_OnSJZTimer( sceneId, step, data1, data2 )

	if 16 == step then
		MonsterTalk(sceneId, -1, "", "#{PMF_20080521_13}" )
		return
	end

	if 13 == step then
		MonsterTalk(sceneId, -1, "", "#{PMF_20080521_14}" )
		return
	end

	if 10 == step then
		MonsterTalk(sceneId, -1, "", "#{PMF_20080521_15}" )
		return
	end

	if 7 == step then
		MonsterTalk(sceneId, -1, "", "#{PMF_20080521_16}" )
		x893073_UseZhenShe( sceneId )
		CallScriptFunction( x893073_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi猲 黏u 5 gi鈟 sau b 馥u." )
		return
	end

	if 6 == step then
		CallScriptFunction( x893073_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi猲 黏u 4 gi鈟 sau b 馥u." )
		return
	end

	if 5 == step then
		CallScriptFunction( x893073_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi猲 黏u 3 gi鈟 sau b 馥u." )
		return
	end

	if 4 == step then
		MonsterTalk(sceneId, -1, "", "#{PMF_20080521_17}" )
		x893073_UseYouQu( sceneId )
		CallScriptFunction( x893073_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi猲 黏u 2 gi鈟 sau b 馥u." )
		return
	end

	if 3 == step then
		CallScriptFunction( x893073_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi猲 黏u 1 gi鈟 sau b 馥u." )
		return
	end

	if 2 == step then
		--提示Chi猲 黏u b 馥u.....
		CallScriptFunction( x893073_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi猲 黏u b 馥u." )
		return
	end

	if 1 == step then
		--建立BOSS....
		CallScriptFunction( x893073_g_FuBenScriptId, "CreateBOSS", sceneId, "ZhuoBuFan_BOSS", -1, -1 )
		CallScriptFunction( x893073_g_FuBenScriptId, "CreateBOSS", sceneId, "BuPingDaoRen_BOSS", -1, -1 )
		return
	end

end

--**********************************
--发动震慑....
--**********************************
function x893073_UseZhenShe( sceneId )

	local bossId = CallScriptFunction( x893073_g_FuBenScriptId, "FindBOSS", sceneId, "FuMinYi_NPC" )
	if bossId == -1 then
		return
	end

	local idx = random( getn(x893073_g_ZhenSheBuffTbl) )
	local buffId = x893073_g_ZhenSheBuffTbl[idx]

	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, nHumanId, buffId, 0 )
		end
	end

end

--**********************************
--发动有趣....
--**********************************
function x893073_UseYouQu( sceneId )

	local bossId = CallScriptFunction( x893073_g_FuBenScriptId, "FindBOSS", sceneId, "FuMinYi_NPC" )
	if bossId == -1 then
		return
	end

	local idx = random( getn(x893073_g_YouQuBuffTbl) )
	local buffId = x893073_g_YouQuBuffTbl[idx]

	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, nHumanId, buffId, 0 )
		end
	end

end
