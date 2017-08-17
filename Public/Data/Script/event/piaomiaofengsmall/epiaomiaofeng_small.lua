--çÎç¿·å¸±±¾....

--½Å±¾ºÅ
x402276_g_ScriptId = 402276

x402276_g_CopySceneType = FUBEN_PIAOMIAOFENG	--¸±±¾ÀàÐÍ£¬¶¨ÒåÔÚScriptGlobal.luaÀïÃæ

x402276_g_TickTime		= 1				--»Øµ÷½Å±¾µÄÊ±ÖÓÊ±¼ä£¨µ¥Î»£ºÃë/´Î£©
x402276_g_NoUserTime	= 300			--¸±±¾ÖÐÃ»ÓÐÈËºó¿ÉÒÔ¼ÌÐø±£´æµÄÊ±¼ä£¨µ¥Î»£ºÃë£©
x402276_g_Fuben_X			= 124			--½øÈë¸±±¾µÄÎ»ÖÃX
x402276_g_Fuben_Z			= 164			--½øÈë¸±±¾µÄÎ»ÖÃZ
x402276_g_FuBenTime		= 3*60*60	--¸±±¾¹Ø±ÕÊ±¼ä....

--BOSS±í....
x402276_g_BOSSList =
{
	["HaDaBa_NPC"]				= { DataID=9668, Title="", posX=124, posY=86, Dir=0, BaseAI=3, AIScript=0, ScriptID=402283 },
	["HaDaBa_BOSS"]				= { DataID=9660, Title="", posX=124, posY=86, Dir=0, BaseAI=27, AIScript=0, ScriptID=402277 },

	["SangTuGong_NPC"]		= { DataID=9669, Title="", posX=41, posY=105, Dir=0, BaseAI=3, AIScript=0, ScriptID=402284 },
	["SangTuGong_BOSS"]		= { DataID=9661, Title="", posX=41, posY=105, Dir=0, BaseAI=27, AIScript=0, ScriptID=402278 },
	["JiangShi_BOSS"]			= { DataID=9662, Title="", posX=0, posY=0, Dir=0, BaseAI=28, AIScript=0, ScriptID=-1 },

	["WuLaoDa_NPC"]				= { DataID=9670, Title="#c00ff00VÕn Tiên Chi Thü", posX=117, posY=49, Dir=11, BaseAI=3, AIScript=0, ScriptID=402285 },
	["WuLaoDaLoss_NPC"]		= { DataID=9671, Title="#c00ff00VÕn Tiên Chi Thü", posX=0, posY=0, Dir=0, BaseAI=3, AIScript=0, ScriptID=402288 },
	["WuLaoDa_BOSS"]			= { DataID=9663, Title="#c00ff00VÕn Tiên Chi Thü", posX=117, posY=49, Dir=11, BaseAI=27, AIScript=0, ScriptID=402279 },

	["ZhuoBuFan_BOSS"]		= { DataID=9664, Title="#c00ff00Kiªm Th¥n", posX=121, posY=31, Dir=0, BaseAI=27, AIScript=0, ScriptID=402280 },
	["BuPingDaoRen_BOSS"]	= { DataID=9665, Title="#c00ff00Giao Vß½ng", posX=129, posY=31, Dir=0, BaseAI=27, AIScript=261, ScriptID=402281 },

	["DuanMuYuan_BOSS"]		= { DataID=9667, Title="", posX=125, posY=36, Dir=0, BaseAI=0, AIScript=0, ScriptID=402287 },

	["FuMinYi_NPC"]				= { DataID=9672, Title="", posX=159, posY=54, Dir=11, BaseAI=3, AIScript=0, ScriptID=402286 },

	["LiQiuShui_BOSS"]		= { DataID=9666, Title="#c00ff00Tây HÕ Hoàng Phi", posX=125, posY=36, Dir=11, BaseAI=27, AIScript=0, ScriptID=402282 },
}

x402276_g_FightBOSSList =
{
	[1] = x402276_g_BOSSList["HaDaBa_BOSS"].DataID,
	[2] = x402276_g_BOSSList["SangTuGong_BOSS"].DataID,
	[3] = x402276_g_BOSSList["WuLaoDa_BOSS"].DataID,
	[4] = x402276_g_BOSSList["ZhuoBuFan_BOSS"].DataID,
	[5] = x402276_g_BOSSList["BuPingDaoRen_BOSS"].DataID,
	[6] = x402276_g_BOSSList["LiQiuShui_BOSS"].DataID
}

--ÊÇ·ñ¿ÉÒÔÌôÕ½Ä³¸öBOSSµÄ±ê¼ÇÁÐ±í....
x402276_g_BattleFlagTbl = 
{
	["HaDaBa"]			= 8,	--ÊÇ·ñ¿ÉÒÔÌôÕ½¹þ´ó°Ô...
	["SangTuGong"]	= 9,	--ÊÇ·ñ¿ÉÒÔÌôÕ½É£ÍÁ¹«....
	["WuLaoDa"]			= 10,	--ÊÇ·ñ¿ÉÒÔÌôÕ½ÎÚÀÏ´ó....
	["ShuangZi"]		= 11,	--ÊÇ·ñ¿ÉÒÔÌôÕ½Ë«×Ó....
	["LiQiuShui"]		= 12,	--ÊÇ·ñ¿ÉÒÔÌôÕ½ÀîÇïË®....
}

--³¡¾°±äÁ¿Ë÷Òý....ÊÇ·ñ¿ÉÒÔÌôÕ½Ä³¸öBOSSµÄ±ê¼Ç....
-- 0=²»ÄÜÌôÕ½ 1=¿ÉÒÔÌôÕ½ 2=ÒÑ¾­ÌôÕ½¹ýÁË
x402276_g_IDX_BattleFlag_Hadaba			= 8
x402276_g_IDX_BattleFlag_Sangtugong	= 9
x402276_g_IDX_BattleFlag_Wulaoda		= 10
x402276_g_IDX_BattleFlag_Shuangzi		= 11
x402276_g_IDX_BattleFlag_Liqiushui	= 12

x402276_g_IDX_FuBenOpenTime		= 13	--¸±±¾½¨Á¢µÄÊ±¼ä....
x402276_g_IDX_FuBenLifeStep		= 14	--¸±±¾ÉúÃüÆÚµÄstep....(°üÀ¨½¨Á¢NPC....¹Ø±Õµ¹¼ÆÊ±ÌáÊ¾....)

--³¡¾°±äÁ¿Ë÷Òý....Í¨ÓÃµÄçÎç¿·å¼ÆÊ±Æ÷....Ö÷ÒªÓÃÓÚ¼¤»îBOSSÕ½¶·....
x402276_g_IDX_PMFTimerStep			= 15
x402276_g_IDX_PMFTimerScriptID	= 16

--³¡¾°±äÁ¿Ë÷Òý....ÎÚÀÏ´óËÀÍöµÄ¼ÆÊ±Æ÷....ÓÃÓÚ´¦ÀíËÀÍöÂß¼­....
x402276_g_IDX_WuLaoDaDieStep				= 17
x402276_g_IDX_WuLaoDaDieScriptID		= 18
x402276_g_IDX_WuLaoDaDiePosX				=	19
x402276_g_IDX_WuLaoDaDiePosY				=	20


--**********************************
--ÈÎÎñÈë¿Úº¯Êý....
--**********************************
function x402276_OnDefaultEvent( sceneId, selfId, targetId )

	--¼ì²âÊÇ·ñ¿ÉÒÔ½øÈë¸±±¾....
	local ret, msg = x402276_CheckCanEnter( sceneId, selfId, targetId )
	if 1 ~= ret then
		BeginEvent(sceneId)
			AddText(sceneId,msg)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--¹Ø±ÕNPC¶Ô»°´°¿Ú....
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

	x402276_MakeCopyScene( sceneId, selfId )

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x402276_OnEnumerate( sceneId, selfId, targetId )

	AddNumText( sceneId, x402276_g_ScriptId, "S½ chiªn Phiêu Diêu Phong", 10, 1 )

end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔ½øÈë´Ë¸±±¾....
--**********************************
function x402276_CheckCanEnter( sceneId, selfId, targetId )

	--ÊÇ·ñÓÐ¶ÓÎé....
	if LuaFnHasTeam(sceneId,selfId) ~= 1 then
		return 0, "#{PMF_20080521_02}"
	end

	--ÊÇ²»ÊÇ¶Ó³¤....
	if GetTeamLeader(sceneId,selfId) ~= selfId then
		return 0, "#{PMF_20080521_03}"
	end

	--ÈËÊýÊÇ·ñ¹»....
	if GetTeamSize(sceneId,selfId) < 1 then
		return 0, "#{PMF_20080521_04}"
	end

	--ÊÇ·ñ¶¼ÔÚ¸½½ü....
	local NearTeamSize = GetNearTeamCount(sceneId,selfId)
	if GetTeamSize(sceneId,selfId) ~= NearTeamSize then
		return 0, "#{PMF_20080521_05}"
	end

	local Humanlist = {}
	local nHumanNum = 0

	--ÊÇ·ñÓÐÈË²»¹»75¼¶....
	for i=0, NearTeamSize-1 do
		local PlayerId = GetNearTeamMember( sceneId, selfId, i )
		if GetLevel( sceneId, PlayerId ) < 75 then
			Humanlist[nHumanNum] = GetName( sceneId, PlayerId )
			nHumanNum = nHumanNum + 1
		end
	end

	if nHumanNum > 0 then

		local msg = "Trong ðµi "
		for i=0, nHumanNum-2 do
			msg = msg .. Humanlist[i] .. ", "
		end
		msg = msg .. Humanlist[nHumanNum-1] .. " c¤p ðµ không ðü, không th¬ tham gia!"
		return 0, msg

	end


	--ÊÇ·ñÓÐÈË½ñÌì×ö¹ý1´ÎÁË....
	nHumanNum = 0
	local CurDayTime = GetDayTime()
	for i=0, NearTeamSize-1 do

		local PlayerId = GetNearTeamMember( sceneId, selfId, i )
		local lastTime = GetMissionData( sceneId, PlayerId, MD_PIAOMIAOFENG_SMALL_LASTTIME )
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

		local msg = ""
		for i=0, nHumanNum-2 do
			msg = msg .. Humanlist[i] .. ", "
		end
		msg = msg .. Humanlist[nHumanNum-1] .. " ðã tham gia Khiêu Chiªn quá 10 l¥n."
		return 0, msg

	end

	return 1

end

--**********************************
--´´½¨¸±±¾....
--**********************************
function x402276_MakeCopyScene( sceneId, selfId )

	local x = 0
	local z = 0
	x,z = LuaFnGetWorldPos(sceneId,selfId)
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)

	LuaFnSetSceneLoad_Map(sceneId, "piaomiao.nav")
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid)
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x402276_g_NoUserTime*1000)
	LuaFnSetCopySceneData_Timer(sceneId, x402276_g_TickTime*1000)
	LuaFnSetCopySceneData_Param(sceneId, 0, x402276_g_CopySceneType)
	LuaFnSetCopySceneData_Param(sceneId, 1, x402276_g_ScriptId)
	LuaFnSetCopySceneData_Param(sceneId, 2, 0)
	LuaFnSetCopySceneData_Param(sceneId, 3, sceneId)
	LuaFnSetCopySceneData_Param(sceneId, 4, x)
	LuaFnSetCopySceneData_Param(sceneId, 5, z)
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId))
	LuaFnSetCopySceneData_Param(sceneId, 7, 0)

	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end

	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_BattleFlag_Hadaba, 1 )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_BattleFlag_Sangtugong, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_BattleFlag_Wulaoda, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_BattleFlag_Shuangzi, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_BattleFlag_Liqiushui, 0 )

	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenOpenTime, LuaFnGetCurrentTime() )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 0 )

	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_PMFTimerStep, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_PMFTimerScriptID, -1 )

	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDieStep, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDieScriptID, -1 )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDiePosX, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDiePosY, 0 )

	LuaFnSetSceneLoad_Area( sceneId, "piaomiao_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "piaomiao_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId)
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D¸ch chuy¬n thành công!");
		else
			AddText(sceneId,"S¯ lßþng bän sao ðã ðªn gi¾i hÕn, ð« ngh¸ lát næa thØ lÕi!");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

end

--**********************************
--¸±±¾ÊÂ¼þ....
--**********************************
function x402276_OnCopySceneReady( sceneId, destsceneId )

	--½øÈë¸±±¾µÄ¹æÔò
	-- 1£¬Èç¹ûÕâ¸öÍæ¼ÒÃ»ÓÐ×é¶Ó£¬¾Í´«ËÍÕâ¸öÍæ¼Ò×Ô¼º½øÈë¸±±¾
	-- 2, Èç¹ûÍæ¼ÒÓÐ¶ÓÎé£¬µ«ÊÇÍæ¼Ò²»ÊÇ¶Ó³¤£¬¾Í´«ËÍ×Ô¼º½øÈë¸±±¾
	-- 3£¬Èç¹ûÍæ¼ÒÓÐ¶ÓÎé£¬²¢ÇÒÕâ¸öÍæ¼ÒÊÇ¶Ó³¤£¬¾Í´«ËÍ×Ô¼ººÍ¸½½ü¶ÓÓÑÒ»Æð½øÈ¥

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId) --ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then
		return
	end

	--Í³¼Æ´´½¨¸±±¾´ÎÊý....
	AuditPMFCreateFuben( sceneId, leaderObjId )

	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then
		NewWorld( sceneId, leaderObjId, destsceneId, x402276_g_Fuben_X, x402276_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x402276_g_Fuben_X, x402276_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				NewWorld( sceneId, mems[i], destsceneId, x402276_g_Fuben_X, x402276_g_Fuben_Z)
			end
		end		
	end

end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼þ....
--**********************************
function x402276_OnCopySceneTimer( sceneId, nowTime )

	x402276_TickFubenLife( sceneId, nowTime )

	x402276_TickPMFTimer( sceneId, nowTime )

	x402276_TickWuLaoDaDieTimer( sceneId, nowTime )

	x402276_TickJianWuArea( sceneId, nowTime )

end

--**********************************
--ÓÐÍæ¼Ò½øÈë¸±±¾ÊÂ¼þ....
--**********************************
function x402276_OnPlayerEnter( sceneId, selfId )

	--ÉèÖÃËÀÍöÊÂ¼þ....
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x402276_g_Fuben_X, x402276_g_Fuben_Z )

	--ÉèÖÃÌôÕ½¹ýÒ»´ÎçÎç¿·å....
	local lastTime = GetMissionData( sceneId, selfId, MD_PIAOMIAOFENG_SMALL_LASTTIME )
	local lastDayTime = floor( lastTime / 100 )
	local lastDayCount = mod( lastTime, 100 )
	local CurDayTime = GetDayTime()

	if CurDayTime > lastDayTime then
		lastDayTime = CurDayTime
		lastDayCount = 0
	end

	lastDayCount = lastDayCount + 1
	lastTime = lastDayTime * 100 + lastDayCount
	SetMissionData( sceneId, selfId, MD_PIAOMIAOFENG_SMALL_LASTTIME, lastTime )

end

--**********************************
--ÓÐÍæ¼ÒÔÚ¸±±¾ÖÐËÀÍöÊÂ¼þ....
--**********************************
function x402276_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--ÌáÊ¾ËùÓÐ¸±±¾ÄÚÍæ¼Ò....
--**********************************
function x402276_TipAllHuman( sceneId, Str )

	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
			BeginEvent(sceneId)
				AddText(sceneId, Str)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId, PlayerId)
		end
	end

end

--**********************************
--Tick¸±±¾ÉúÃüÆÚ....
--**********************************
function x402276_TickFubenLife( sceneId, nowTime )

	local openTime = LuaFnGetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenOpenTime )
	local leftTime = openTime + x402276_g_FuBenTime - LuaFnGetCurrentTime()
	local lifeStep = LuaFnGetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep )

	if lifeStep == 15 then

		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 16 )

		local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
		local oldSceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )
		local oldX = LuaFnGetCopySceneData_Param( sceneId, 4 )
		local oldZ = LuaFnGetCopySceneData_Param( sceneId, 5 )
		for i=0, nHumanNum-1  do
			local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
				NewWorld( sceneId, PlayerId, oldSceneId, oldX, oldZ )
			end
		end

		return

	end

	if lifeStep == 14 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 15 )
		x402276_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 1 giây!" )
		return
	end

	if lifeStep == 13 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 14 )
		x402276_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 2 giây!" )
		return
	end

	if lifeStep == 12 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 13 )
		x402276_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 3 giây!" )
		return
	end

	if lifeStep == 11 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 12 )
		x402276_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 4 giây!" )
		return
	end

	if lifeStep == 10 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 11 )
		x402276_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 5 giây!" )
		return
	end

	if leftTime <= 10 and lifeStep == 9 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 10 )
		x402276_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 10 giây!" )
		return
	end

	if leftTime <= 30 and lifeStep == 8 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 9 )
		x402276_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 30 giây!" )
		return
	end

	if leftTime <= 60 and lifeStep == 7 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 8 )
		x402276_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 1 phút!" )
		return
	end

	if leftTime <= 120 and lifeStep == 6 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 7 )
		x402276_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 2 phút!" )
		return
	end

	if leftTime <= 180 and lifeStep == 5 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 6 )
		x402276_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 3 phút!" )
		return
	end

	if leftTime <= 300 and lifeStep == 4 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 5 )
		x402276_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 5 phút!" )
		return
	end

	if leftTime <= 900 and lifeStep == 3 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 4 )
		x402276_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 15 phút!" )
		return
	end

	if leftTime <= 1800 and lifeStep == 2 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 3 )
		x402276_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 30 phút!" )
		return
	end

	if leftTime <= 3600 and lifeStep == 1 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 2 )
		x402276_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 60 phút!" )
		return
	end

	--³õÊ¼»¯¸±±¾ÄÚµÄNPC....
	if lifeStep == 0 then

		local MstId = x402276_CreateBOSS( sceneId, "HaDaBa_NPC", -1, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )

		MstId = x402276_CreateBOSS( sceneId, "SangTuGong_NPC", -1, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )

		MstId = x402276_CreateBOSS( sceneId, "WuLaoDa_NPC", -1, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )

		MstId = x402276_CreateBOSS( sceneId, "FuMinYi_NPC", -1, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )

		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_FuBenLifeStep, 1 )

		return
	end

end

--**********************************
--TickçÎç¿·å¼ÆÊ±Æ÷....
--**********************************
function x402276_TickPMFTimer( sceneId, nowTime )

	local step = LuaFnGetCopySceneData_Param( sceneId, x402276_g_IDX_PMFTimerStep )
	if step <= 0 then
		return
	end
	local scriptID = LuaFnGetCopySceneData_Param( sceneId, x402276_g_IDX_PMFTimerScriptID )

	--»Øµ÷Ö¸¶¨½Å±¾µÄOnTimer....
	CallScriptFunction( scriptID, "OnPMFTimer", sceneId, step )

	--Èç¹ûÒÑ¾­×ßÍêËùÓÐstepÔò¹Ø±Õ¼ÆÊ±Æ÷....
	step = step - 1
	if step <= 0 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_PMFTimerStep, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_PMFTimerScriptID, -1 )
	else
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_PMFTimerStep, step )
	end

end

--**********************************
--¿ªÆôçÎç¿·å¼ÆÊ±Æ÷....
--**********************************
function x402276_OpenPMFTimer( sceneId, allstep, ScriptID )

	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_PMFTimerStep, allstep )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_PMFTimerScriptID, ScriptID )

end

--**********************************
--µ±Ç°çÎç¿·å¼ÆÊ±Æ÷ÊÇ·ñ¼¤»î....
--**********************************
function x402276_IsPMFTimerRunning( sceneId )

	local step = LuaFnGetCopySceneData_Param( sceneId, x402276_g_IDX_PMFTimerStep )
	if step > 0 then
		return 1
	else
		return 0
	end

end

--**********************************
--TickÎÚÀÏ´óËÀÍö¼ÆÊ±Æ÷....
--**********************************
function x402276_TickWuLaoDaDieTimer( sceneId, nowTime )

	local step = LuaFnGetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDieStep )
	if step <= 0 then
		return
	end

	local scriptID = LuaFnGetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDieScriptID )
	local posX = LuaFnGetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDiePosX )
	local posY = LuaFnGetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDiePosY )

	--»Øµ÷Ö¸¶¨½Å±¾µÄOnTimer....
	CallScriptFunction( scriptID, "OnHaDaBaDieTimer", sceneId, step, posX, posY )

	--Èç¹ûÒÑ¾­×ßÍêËùÓÐstepÔò¹Ø±Õ¼ÆÊ±Æ÷....
	step = step - 1
	if step <= 0 then
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDieStep, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDieScriptID, -1 )
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDiePosX, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDiePosY, 0 )
	else
		LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDieStep, step )
	end

end

--**********************************
--¿ªÆôÎÚÀÏ´óËÀÍö¼ÆÊ±Æ÷....
--**********************************
function x402276_OpenWuLaoDaDieTimer( sceneId, allstep, ScriptID, posX, posY )

	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDieStep, allstep )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDieScriptID, ScriptID )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDiePosX, posX )
	LuaFnSetCopySceneData_Param( sceneId, x402276_g_IDX_WuLaoDaDiePosY, posY )

end

--**********************************
--Tick½£ÎèÇøÓò....
--Ö»ÒªÍæ¼ÒÕ¾ÔÚ³¡¾°ÀïµÄ6¸ö¹âÖùÄÚ....Ã¿Ãë¶¼ÄÜ»ñµÃÒ»¸öÃâÒß½£ÎèµÄbuff....
--**********************************
function x402276_TickJianWuArea( sceneId, nowTime )

	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then

			local x,z = GetWorldPos( sceneId, nHumanId )
			local buff1 = -1
			local buff2 = 10376

			if x>=112 and x<=116 and z>=27 and z<=31 then
				buff1 = 10370
			elseif x>=134 and x<=138 and z>=27 and z<=31 then
				buff1 = 10374
			elseif x>=145 and x<=149 and z>=46 and z<=50 then
				buff1 = 10375
			elseif x>=134 and x<=138 and z>=65 and z<=69 then
				buff1 = 10371
			elseif x>=112 and x<=116 and z>=65 and z<=69 then
				buff1 = 10373
			elseif x>=101 and x<=105 and z>=46 and z<=50 then
				buff1 = 10372
			end

			if buff1 ~= -1 then
				LuaFnSendSpecificImpactToUnit(sceneId, nHumanId, nHumanId, nHumanId, buff1, 0)
				LuaFnSendSpecificImpactToUnit(sceneId, nHumanId, nHumanId, nHumanId, buff2, 0)
			end

		end
	end

end

--**********************************
--´´½¨Ö¸¶¨BOSS....
--**********************************
function x402276_CreateBOSS( sceneId, name, x, y )

	local BOSSData = x402276_g_BOSSList[name]
	if not BOSSData then
		return
	end

	local posX = 0
	local posY = 0
	if x ~= -1 and y ~= -1 then
		posX = x
		posY = y
	else
		posX = BOSSData.posX
		posY = BOSSData.posY
	end

	local MstId = LuaFnCreateMonster( sceneId, BOSSData.DataID, posX, posY, BOSSData.BaseAI, BOSSData.AIScript, BOSSData.ScriptID )
	SetObjDir( sceneId, MstId, BOSSData.Dir )
	SetMonsterFightWithNpcFlag( sceneId, MstId, 0 )
	if BOSSData.Title ~= "" then
		SetCharacterTitle(sceneId, MstId, BOSSData.Title)
	end

	LuaFnSendSpecificImpactToUnit(sceneId, MstId, MstId, MstId, 152, 0)

	--Í³¼Æ´´½¨BOSS....
	AuditPMFCreateBoss( sceneId, BOSSData.DataID )

	return MstId

end

--**********************************
--É¾³ýÖ¸¶¨BOSS....
--**********************************
function x402276_DeleteBOSS( sceneId, name )

	local BOSSData = x402276_g_BOSSList[name]
	if not BOSSData then
		return
	end

	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if BOSSData.DataID == GetMonsterDataID( sceneId, MonsterId ) then
			--LuaFnDeleteMonster( sceneId, MonsterId )
			LuaFnSendSpecificImpactToUnit(sceneId, MonsterId, MonsterId, MonsterId, 152, 0)
			SetCharacterDieTime( sceneId, MonsterId, 1000 )
		end
	end

end

--**********************************
--Ñ°ÕÒÖ¸¶¨BOSS....
--**********************************
function x402276_FindBOSS( sceneId, name )

	local BOSSData = x402276_g_BOSSList[name]
	if not BOSSData then
		return -1
	end

	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if BOSSData.DataID == GetMonsterDataID( sceneId, MonsterId ) then
			return MonsterId
		end
	end

	return -1

end

--**********************************
--¼ì²âµ±Ç°ÊÇ·ñÒÑ¾­´æÔÚÒ»¸öBOSSÁË....
--**********************************
function x402276_CheckHaveBOSS( sceneId )

	local BossList = {}
	local nBossNum = 0

	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
			local DataID = GetMonsterDataID( sceneId, MonsterId )
			for j, dataId in x402276_g_FightBOSSList do
				if DataID == dataId then
					BossList[nBossNum] = GetName( sceneId, MonsterId )
					nBossNum = nBossNum + 1
				end
			end
		end
	end

	if nBossNum > 0 then
		local msg = "Ðang cùng "
		for i=0, nBossNum-2 do
			msg = msg .. BossList[i] .. ", "
		end
		msg = msg .. BossList[nBossNum-1] .. " chiªn ð¤u."
		return 1, msg
	end

	return 0, ""

end

--**********************************
--»ñÈ¡ÊÇ·ñ¿ÉÒÔÌôÕ½Ä³¸öBOSSµÄ±ê¼Ç....
--**********************************
function x402276_GetBossBattleFlag( sceneId, bossName )

	local idx = x402276_g_BattleFlagTbl[ bossName ]
	return LuaFnGetCopySceneData_Param( sceneId, idx )

end

--**********************************
--ÉèÖÃÊÇ·ñ¿ÉÒÔÌôÕ½Ä³¸öBOSSµÄ±ê¼Ç....
--**********************************
function x402276_SetBossBattleFlag( sceneId, bossName, bCan )

	local idx = x402276_g_BattleFlagTbl[ bossName ]
	LuaFnSetCopySceneData_Param( sceneId, idx, bCan )

end
