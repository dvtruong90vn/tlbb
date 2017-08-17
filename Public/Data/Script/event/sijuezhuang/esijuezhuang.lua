--çÎç¿·å¸±±¾....   ____¡¢·ÉÏè By£º403413393 ÐÞ¸´

--½Å±¾ºÅ
x893063_g_ScriptId = 893063

x893063_g_CopySceneType = FUBEN_SIJUEZHUANG	--¸±±¾ÀàÐÍ£¬¶¨ÒåÔÚScriptGlobal.luaÀïÃæ

x893063_g_TickTime		= 1				--»Øµ÷½Å±¾µÄÊ±ÖÓÊ±¼ä£¨µ¥Î»£ºÃë/´Î£©
x893063_g_NoUserTime	= 10			--¸±±¾ÖÐÃ»ÓÐÈËºó¿ÉÒÔ¼ÌÐø±£´æµÄÊ±¼ä£¨µ¥Î»£ºÃë£©
x893063_g_Fuben_X			= 100			--½øÈë¸±±¾µÄÎ»ÖÃX
x893063_g_Fuben_Z			= 114			--½øÈë¸±±¾µÄÎ»ÖÃZ
x893063_g_FuBenTime		= 3*60*60	--¸±±¾¹Ø±ÕÊ±¼ä....

--BOSS±í....
x893063_g_BOSSList =
{
	["MinMo_NPC"]				= { DataID=14100, Title="", posX=96, posY=79, Dir=0, BaseAI=3, AIScript=0, ScriptID=893070 },
	["MinMo_BOSS"]				= { DataID=14106, Title="", posX=96, posY=79, Dir=0, BaseAI=27, AIScript=0, ScriptID=893064 },

	["QinYun_NPC"]		= { DataID=14100, Title="", posX=83, posY=23, Dir=0, BaseAI=3, AIScript=0, ScriptID=893071 },
	["QinYun_BOSS"]		= { DataID=14132, Title="", posX=83, posY=23, Dir=0, BaseAI=27, AIScript=0, ScriptID=893065 },
	["JiangShi_BOSS"]			= { DataID=14138, Title="", posX=0, posY=0, Dir=0, BaseAI=28, AIScript=0, ScriptID=-1 },

	["TaoQin_NPC"]				= { DataID=14100, Title="", posX=36, posY=87, Dir=11, BaseAI=3, AIScript=0, ScriptID=893072 },
	["TaoQinLoss_NPC"]		= { DataID=14100, Title="", posX=22, posY=16, Dir=0, BaseAI=3, AIScript=0, ScriptID=893075 },
	["TaoQin_BOSS"]			= { DataID=14125, Title="", posX=36, posY=87, Dir=11, BaseAI=27, AIScript=0, ScriptID=893066 },

	["YaoBoDang_BOSS"]		= { DataID=42202, Title="", posX=129, posY=108, Dir=0, BaseAI=27, AIScript=0, ScriptID=893067 },
	["SiMaLing_BOSS"]	= { DataID=42203, Title="", posX=131, posY=109, Dir=0, BaseAI=27, AIScript=0, ScriptID=893068 },

	["YouDanZhi_BOSS"]		= { DataID=42204, Title="", posX=129, posY=126, Dir=0, BaseAI=0, AIScript=0, ScriptID=893074 },

	["LiFan_NPC"]				= { DataID=14100, Title="", posX=22, posY=16, Dir=27, BaseAI=3, AIScript=0, ScriptID=893075 },

	["PangQi_BOSS"]		= { DataID=14145, Title="", posX=22, posY=16, Dir=27, BaseAI=27, AIScript=0, ScriptID=893069 },

	["Panqinqin_NPC"]				= { DataID=60, Title="", posX=101, posY=111, Dir=0, BaseAI=3, AIScript=0, ScriptID=893080 },
	["Zhong_NPC"]				= { DataID=14119, Title="Chuông L¾n", posX=100, posY=82, Dir=0, BaseAI=3, AIScript=0, ScriptID=893081 },
	["HuiYinFan_BOSS"]			= { DataID=14126, Title="", posX=0, posY=0, Dir=0, BaseAI=3, AIScript=0, ScriptID=-1 },
	["Jin_BOSS"]			= { DataID=14147, Title="", posX=0, posY=0, Dir=0, BaseAI=27, AIScript=0, ScriptID=-1 },
	["Mu_BOSS"]			= { DataID=14148, Title="", posX=0, posY=0, Dir=0, BaseAI=27, AIScript=0, ScriptID=-1 },
	["Shui_BOSS"]			= { DataID=14149, Title="", posX=0, posY=0, Dir=0, BaseAI=27, AIScript=0, ScriptID=-1 },
	["Huo_BOSS"]			= { DataID=14140, Title="", posX=0, posY=0, Dir=0, BaseAI=27, AIScript=0, ScriptID=-1 },
	["Tu_BOSS"]			= { DataID=14150, Title="", posX=0, posY=0, Dir=0, BaseAI=27, AIScript=0, ScriptID=-1 },

}

x893063_g_FightBOSSList =
{
	[1] = x893063_g_BOSSList["MinMo_BOSS"].DataID,
	[2] = x893063_g_BOSSList["QinYun_BOSS"].DataID,
	[3] = x893063_g_BOSSList["TaoQin_BOSS"].DataID,
	[4] = x893063_g_BOSSList["YaoBoDang_BOSS"].DataID,
	[5] = x893063_g_BOSSList["SiMaLing_BOSS"].DataID,
	[6] = x893063_g_BOSSList["PangQi_BOSS"].DataID
}

--ÊÇ·ñ¿ÉÒÔÌôÕ½Ä³¸öBOSSµÄ±ê¼ÇÁÐ±í....
x893063_g_BattleFlagTbl = 
{
	["MinMo"]			= 8,	--ÊÇ·ñ¿ÉÒÔÌôÕ½¹þ´ó°Ô...
	["QinYun"]	= 9,	--ÊÇ·ñ¿ÉÒÔÌôÕ½É£ÍÁ¹«....
	["TaoQin"]			= 10,	--ÊÇ·ñ¿ÉÒÔÌôÕ½ÎÚÀÏ´ó....
	["ShuangZi"]		= 11,	--ÊÇ·ñ¿ÉÒÔÌôÕ½Ë«×Ó....
	["PangQi"]		= 12,	--ÊÇ·ñ¿ÉÒÔÌôÕ½ÀîÇïË®....
}

--³¡¾°±äÁ¿Ë÷Òý....ÊÇ·ñ¿ÉÒÔÌôÕ½Ä³¸öBOSSµÄ±ê¼Ç....
-- 0=²»ÄÜÌôÕ½ 1=¿ÉÒÔÌôÕ½ 2=ÒÑ¾­ÌôÕ½¹ýÁË
x893063_g_IDX_BattleFlag_MinMo			= 8
x893063_g_IDX_BattleFlag_QinYun	= 9
x893063_g_IDX_BattleFlag_TaoQin		= 10
x893063_g_IDX_BattleFlag_Shuangzi		= 11
x893063_g_IDX_BattleFlag_PangQi	= 12

x893063_g_IDX_FuBenOpenTime		= 13	--¸±±¾½¨Á¢µÄÊ±¼ä....
x893063_g_IDX_FuBenLifeStep		= 14	--¸±±¾ÉúÃüÆÚµÄstep....(°üÀ¨½¨Á¢NPC....¹Ø±Õµ¹¼ÆÊ±ÌáÊ¾....)

--³¡¾°±äÁ¿Ë÷Òý....Í¨ÓÃµÄçÎç¿·å¼ÆÊ±Æ÷....Ö÷ÒªÓÃÓÚ¼¤»îBOSSÕ½¶·....
x893063_g_IDX_SJZTimerStep			= 15
x893063_g_IDX_SJZTimerScriptID	= 16

--³¡¾°±äÁ¿Ë÷Òý....ÎÚÀÏ´óËÀÍöµÄ¼ÆÊ±Æ÷....ÓÃÓÚ´¦ÀíËÀÍöÂß¼­....
x893063_g_IDX_TaoQinDieStep				= 17
x893063_g_IDX_TaoQinDieScriptID		= 18
x893063_g_IDX_TaoQinDiePosX				=	19
x893063_g_IDX_TaoQinDiePosY				=	20


--**********************************
--ÈÎÎñÈë¿Úº¯Êý....
--**********************************
function x893063_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent(sceneId)
		AddText(sceneId,"TÑ Tuy®t Trang trß¾c ðây bình yên dß¾i sñ quän lý cüa nghîa phø Phan Xí cüa ta.")
		AddText(sceneId,"T× khi có m¤y tên tñ xßng \"giang h° ð® nh¤t thánh nhân\" xu¤t hi®n tác oai tác quái, chúng giªt nghîa phø ta ð¬ ðÕt cái møc ðích mà chúng g÷i là \"bình ð¸nh TÑ tuy®t trang\"")
		AddText(sceneId,"Ta ph§n làm con c¥n phäi báo thù cho nghîa phø, ng£t n²i thân ph§n nhi næ nhö hèn, nên ðành trông vào các v¸ ðÕi hi®p.")
		AddNumText( sceneId, x893063_g_ScriptId, "#c00ff00Ân oán TÑ Tuy®t Trang", 10, 1 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	
end

function x893063_OnEventRequest( sceneId, selfId, targetId, eventId)

	if GetNumText()==1 then
	
		local ret, msg = x893063_CheckCanEnter( sceneId, selfId, targetId )
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

		x893063_MakeCopyScene( sceneId, selfId )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gffff00"..nam.."#gff00f0 cùng t± ðµi ðã tiªn vào TÑ Tuy®t Trang, chu¦n bí tiêu di®t tên cùng hung cñc ác Bàng Xí, kh½i lÕi ân oán TÑ Tuy®t Trang nåm nào...", 4 )

	end
	
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x893063_OnEnumerate( sceneId, selfId, targetId )

	AddNumText( sceneId, x893063_g_ScriptId, "#cFF0000Ân oán TÑ Tuy®t Trang", 10, 1 )

end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔ½øÈë´Ë¸±±¾....
--**********************************
function x893063_CheckCanEnter( sceneId, selfId, targetId )

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

	--ÊÇ·ñÓÐÈË²»¹»90¼¶....
	for i=0, NearTeamSize-1 do
		local PlayerId = GetNearTeamMember( sceneId, selfId, i )
		if GetLevel( sceneId, PlayerId ) < 70 then
			Humanlist[nHumanNum] = GetName( sceneId, PlayerId )
			nHumanNum = nHumanNum + 1
		end
	end

	if nHumanNum > 0 then

		local msg = "Trong ðµi ngû "
		for i=0, nHumanNum-2 do
			msg = msg .. Humanlist[i] .. ", "
		end
		msg = msg .. Humanlist[nHumanNum-1] .. " c¤p ðµ không ðü, không th¬ tiªn vào."
		return 0, msg

	end


	--ÊÇ·ñÓÐÈË½ñÌì×ö¹ý3´ÎÁË....
	nHumanNum = 0
	local CurDayTime = GetDayTime()
	for i=0, NearTeamSize-1 do

		local PlayerId = GetNearTeamMember( sceneId, selfId, i )
		local lastTime = GetMissionData( sceneId, PlayerId, MD_SPRING07DENGMI_DAYTIME )
		local lastDayTime = floor( lastTime / 100 )
		local lastDayCount = mod( lastTime, 100 )
	
		if CurDayTime > lastDayTime then
			lastDayTime = CurDayTime
			lastDayCount = 0
		end

		if lastDayCount >= 90 then
			Humanlist[nHumanNum] = GetName( sceneId, PlayerId )
			nHumanNum = nHumanNum + 1
		end

	end

	if nHumanNum > 0 then

		local msg = ""
		for i=0, nHumanNum-2 do
			msg = msg .. Humanlist[i] .. ", "
		end
		msg = msg .. Humanlist[nHumanNum-1] .. " ngày hôm nay ðã tham gia phø bän 3 l¥n r°i."
		return 0, msg

	end

	return 1

end

--**********************************
--´´½¨¸±±¾....
--**********************************
function x893063_MakeCopyScene( sceneId, selfId )

	local x = 0
	local z = 0
	x,z = LuaFnGetWorldPos(sceneId,selfId)
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)

	LuaFnSetSceneLoad_Map(sceneId, "sijuezhuang.nav")
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid)
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x893063_g_NoUserTime*1000)
	LuaFnSetCopySceneData_Timer(sceneId, x893063_g_TickTime*1000)
	LuaFnSetCopySceneData_Param(sceneId, 0, x893063_g_CopySceneType)
	LuaFnSetCopySceneData_Param(sceneId, 1, x893063_g_ScriptId)
	LuaFnSetCopySceneData_Param(sceneId, 2, 0)
	LuaFnSetCopySceneData_Param(sceneId, 3, sceneId)
	LuaFnSetCopySceneData_Param(sceneId, 4, x)
	LuaFnSetCopySceneData_Param(sceneId, 5, z)
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId))
	LuaFnSetCopySceneData_Param(sceneId, 7, 0)

	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end

	LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_BattleFlag_MinMo, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_BattleFlag_QinYun, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_BattleFlag_TaoQin, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_BattleFlag_Shuangzi, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_BattleFlag_PangQi, 0 )

	LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_FuBenOpenTime, LuaFnGetCurrentTime() )
	LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_FuBenLifeStep, 0 )

	LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_SJZTimerStep, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_SJZTimerScriptID, -1 )

	LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_TaoQinDieStep, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_TaoQinDieScriptID, -1 )
	LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_TaoQinDiePosX, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_TaoQinDiePosY, 0 )

	LuaFnSetSceneLoad_Area( sceneId, "sijuezhuang_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "sijuezhuang_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId)
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D¸ch chuy¬n thành công");
		else
			AddText(sceneId,"S¯ lßþng bän sao ðã quá täi, hãy ðþi mµt chút.");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

end

--**********************************
--¸±±¾ÊÂ¼þ....
--**********************************
function x893063_OnCopySceneReady( sceneId, destsceneId )

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

	local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
	local CurDayTime = GetDayTime()
	for	i=0,nearteammembercount-1 do

		local PlayerId = GetNearTeamMember( sceneId, selfId, i )
		local lastTime = GetMissionData( sceneId, PlayerId, MD_SPRING07DENGMI_DAYTIME )
		local lastDayTime = floor( lastTime / 100 )
		local lastDayCount = mod( lastTime, 100 )

		if CurDayTime > lastDayTime then
			lastDayTime = CurDayTime
			lastDayCount = 0
		end

		if lastDayCount >= 3 then
			BeginEvent( sceneId )
				AddText( sceneId, "Các hÕ hôm nay ðã tham gia phø bän 3 l¥n r°i, mai hãy quay lÕi!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		return
		end
	end


	--Í³¼Æ´´½¨¸±±¾´ÎÊý....
	--AuditSJZCreateFuben( sceneId, leaderObjId )

	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then
		NewWorld( sceneId, leaderObjId, destsceneId, x893063_g_Fuben_X, x893063_g_Fuben_Z) ;
	else
		local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
		local mems = {}
		for	i=0,nearteammembercount-1 do
			mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
			NewWorld( sceneId, mems[i], destsceneId, x893063_g_Fuben_X, x893063_g_Fuben_Z)
		end
	end

end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼þ....
--**********************************
function x893063_OnCopySceneTimer( sceneId, nowTime )

	x893063_TickFubenLife( sceneId, nowTime )

	x893063_TickSJZTimer( sceneId, nowTime )

	x893063_TickTaoQinDieTimer( sceneId, nowTime )

	x893063_TickJianWuArea( sceneId, nowTime )

end

--**********************************
--ÓÐÍæ¼Ò½øÈë¸±±¾ÊÂ¼þ....
--**********************************
function x893063_OnPlayerEnter( sceneId, selfId )

	--ÉèÖÃËÀÍöÊÂ¼þ....
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x893063_g_Fuben_X, x893063_g_Fuben_Z )

	--ÉèÖÃÌôÕ½¹ýÒ»´ÎçÎç¿·å....
	local lastTime = GetMissionData( sceneId, selfId, MD_SPRING07DENGMI_DAYTIME )
	local lastDayTime = floor( lastTime / 100 )
	local lastDayCount = mod( lastTime, 100 )
	local CurDayTime = GetDayTime()

	if CurDayTime > lastDayTime then
		lastDayTime = CurDayTime
		lastDayCount = 0
	end

	lastDayCount = lastDayCount + 1
	lastTime = lastDayTime * 100 + lastDayCount
	SetMissionData( sceneId, selfId, MD_SPRING07DENGMI_DAYTIME, lastTime )

end

--**********************************
--ÓÐÍæ¼ÒÔÚ¸±±¾ÖÐËÀÍöÊÂ¼þ....
--**********************************
function x893063_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--ÌáÊ¾ËùÓÐ¸±±¾ÄÚÍæ¼Ò....
--**********************************
function x893063_TipAllHuman( sceneId, Str )

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
function x893063_TickFubenLife( sceneId, nowTime )

	local openTime = LuaFnGetCopySceneData_Param( sceneId, x893063_g_IDX_FuBenOpenTime )
	local leftTime = openTime + x893063_g_FuBenTime - LuaFnGetCurrentTime()
	local lifeStep = LuaFnGetCopySceneData_Param( sceneId, x893063_g_IDX_FuBenLifeStep )

	if lifeStep == 15 then

		LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_FuBenLifeStep, 16 )

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
		LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_FuBenLifeStep, 15 )
		x893063_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 1 giây!" )
		return
	end

	if lifeStep == 13 then
		LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_FuBenLifeStep, 14 )
		x893063_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 2 giây!" )
		return
	end

	if lifeStep == 12 then
		LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_FuBenLifeStep, 13 )
		x893063_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 3 giây!" )
		return
	end

	if lifeStep == 11 then
		LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_FuBenLifeStep, 12 )
		x893063_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 4 giây!" )
		return
	end

	if lifeStep == 10 then
		LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_FuBenLifeStep, 11 )
		x893063_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 5 giây!" )
		return
	end

	if leftTime <= 10 and lifeStep == 9 then
		LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_FuBenLifeStep, 10 )
		x893063_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 10 giây!" )
		return
	end

	if leftTime <= 30 and lifeStep == 8 then
		LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_FuBenLifeStep, 9 )
		x893063_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 30 giây!" )
		return
	end

	if leftTime <= 60 and lifeStep == 7 then
		LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_FuBenLifeStep, 8 )
		x893063_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 1 phút!" )
		return
	end

	if leftTime <= 120 and lifeStep == 6 then
		LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_FuBenLifeStep, 7 )
		x893063_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 2 phút!" )
		return
	end

	if leftTime <= 180 and lifeStep == 5 then
		LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_FuBenLifeStep, 6 )
		x893063_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 3 phút!" )
		return
	end

	if leftTime <= 300 and lifeStep == 4 then
		LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_FuBenLifeStep, 5 )
		x893063_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 5 phút!" )
		return
	end

	if leftTime <= 900 and lifeStep == 3 then
		LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_FuBenLifeStep, 4 )
		x893063_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 15 phút!" )
		return
	end

	if leftTime <= 1800 and lifeStep == 2 then
		LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_FuBenLifeStep, 3 )
		x893063_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 30 phút!" )
		return
	end

	if leftTime <= 3600 and lifeStep == 1 then
		LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_FuBenLifeStep, 2 )
		x893063_TipAllHuman( sceneId, "Các hÕ s¨ r¶i khöi ðây sau 60 phút!" )
		return
	end

	--³õÊ¼»¯¸±±¾ÄÚµÄNPC....
	if lifeStep == 0 then

		local MstId = x893063_CreateBOSS( sceneId, "MinMo_NPC", -1, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )

		MstId = x893063_CreateBOSS( sceneId, "QinYun_NPC", -1, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )

		MstId = x893063_CreateBOSS( sceneId, "TaoQin_NPC", -1, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )

		MstId = x893063_CreateBOSS( sceneId, "LiFan_NPC", -1, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )

		MstId = x893063_CreateBOSS( sceneId, "Panqinqin_NPC", -1, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )

		MstId = x893063_CreateBOSS( sceneId, "Zhong_NPC", -1, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )

		LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_FuBenLifeStep, 1 )

		return
	end

end

--**********************************
--TickçÎç¿·å¼ÆÊ±Æ÷....
--**********************************
function x893063_TickSJZTimer( sceneId, nowTime )

	local step = LuaFnGetCopySceneData_Param( sceneId, x893063_g_IDX_SJZTimerStep )
	if step <= 0 then
		return
	end
	local scriptID = LuaFnGetCopySceneData_Param( sceneId, x893063_g_IDX_SJZTimerScriptID )

	--»Øµ÷Ö¸¶¨½Å±¾µÄOnTimer....
	CallScriptFunction( scriptID, "OnSJZTimer", sceneId, step )

	--Èç¹ûÒÑ¾­×ßÍêËùÓÐstepÔò¹Ø±Õ¼ÆÊ±Æ÷....
	step = step - 1
	if step <= 0 then
		LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_SJZTimerStep, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_SJZTimerScriptID, -1 )
	else
		LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_SJZTimerStep, step )
	end

end

--**********************************
--¿ªÆôçÎç¿·å¼ÆÊ±Æ÷....
--**********************************
function x893063_OpenSJZTimer( sceneId, allstep, ScriptID )

	LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_SJZTimerStep, allstep )
	LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_SJZTimerScriptID, ScriptID )

end

--**********************************
--µ±Ç°çÎç¿·å¼ÆÊ±Æ÷ÊÇ·ñ¼¤»î....
--**********************************
function x893063_IsSJZTimerRunning( sceneId )

	local step = LuaFnGetCopySceneData_Param( sceneId, x893063_g_IDX_SJZTimerStep )
	if step > 0 then
		return 1
	else
		return 0
	end

end

--**********************************
--TickÎÚÀÏ´óËÀÍö¼ÆÊ±Æ÷....
--**********************************
function x893063_TickTaoQinDieTimer( sceneId, nowTime )

	local step = LuaFnGetCopySceneData_Param( sceneId, x893063_g_IDX_TaoQinDieStep )
	if step <= 0 then
		return
	end

	local scriptID = LuaFnGetCopySceneData_Param( sceneId, x893063_g_IDX_TaoQinDieScriptID )
	local posX = LuaFnGetCopySceneData_Param( sceneId, x893063_g_IDX_TaoQinDiePosX )
	local posY = LuaFnGetCopySceneData_Param( sceneId, x893063_g_IDX_TaoQinDiePosY )

	--»Øµ÷Ö¸¶¨½Å±¾µÄOnTimer....
	CallScriptFunction( scriptID, "OnMinMoDieTimer", sceneId, step, posX, posY )

	--Èç¹ûÒÑ¾­×ßÍêËùÓÐstepÔò¹Ø±Õ¼ÆÊ±Æ÷....
	step = step - 1
	if step <= 0 then
		LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_TaoQinDieStep, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_TaoQinDieScriptID, -1 )
		LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_TaoQinDiePosX, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_TaoQinDiePosY, 0 )
	else
		LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_TaoQinDieStep, step )
	end

end

--**********************************
--¿ªÆôÎÚÀÏ´óËÀÍö¼ÆÊ±Æ÷....
--**********************************
function x893063_OpenTaoQinDieTimer( sceneId, allstep, ScriptID, posX, posY )

	LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_TaoQinDieStep, allstep )
	LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_TaoQinDieScriptID, ScriptID )
	LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_TaoQinDiePosX, posX )
	LuaFnSetCopySceneData_Param( sceneId, x893063_g_IDX_TaoQinDiePosY, posY )

end

--**********************************
--Tick½£ÎèÇøÓò....
--Ö»ÒªÍæ¼ÒÕ¾ÔÚ³¡¾°ÀïµÄ6¸ö¹âÖùÄÚ....Ã¿Ãë¶¼ÄÜ»ñµÃÒ»¸öÃâÒß½£ÎèµÄbuff....
--**********************************
function x893063_TickJianWuArea( sceneId, nowTime )
	local nMonsterNum = GetMonsterCount( sceneId )
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId, i)
		if GetName(sceneId, MonsterId) == "Bàng Xí" then

			local x,z = GetWorldPos( sceneId, MonsterId )
			local buff1 = -1
			local buff2 = -1

			if x>=38 and x<=42 and z>=22 and z<=27 then
				if LuaFnHaveImpactOfSpecificDataIndex(sceneId, MonsterId, 22446) == 1 then
					buff1 = 22446
					buff2 = 22451
                            end
			elseif x>=37 and x<=41 and z>=34 and z<=38 then
				if LuaFnHaveImpactOfSpecificDataIndex(sceneId, MonsterId, 22447) == 1 then
					buff1 = 22447
					buff2 = 22452
                            end
			elseif x>=18 and x<=23 and z>=35 and z<=39 then
				if LuaFnHaveImpactOfSpecificDataIndex(sceneId, MonsterId, 22448) == 1 then
					buff1 = 22448
					buff2 = 22453
                            end
			elseif x>=16 and x<=21 and z>=23 and z<=27 then
				if LuaFnHaveImpactOfSpecificDataIndex(sceneId, MonsterId, 22449) == 1 then
					buff1 = 22449
					buff2 = 22454
                            end
			elseif x>=27 and x<=32 and z>=15 and z<=20 then
				if LuaFnHaveImpactOfSpecificDataIndex(sceneId, MonsterId, 22450) == 1 then
					buff1 = 22450
					buff2 = 22455
                            end
			end

			if buff1 ~= -1 then
				LuaFnCancelSpecificImpact(sceneId, MonsterId, buff1)
				LuaFnSendSpecificImpactToUnit(sceneId, MonsterId, MonsterId, MonsterId, buff2, 0)
			end

		end
	end

end

--**********************************
--´´½¨Ö¸¶¨BOSS....
--**********************************
function x893063_CreateBOSS( sceneId, name, x, y )

	local BOSSData = x893063_g_BOSSList[name]
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
	--SetUnitReputationID(sceneId, selfId, nMonsterId, 29)   --by yaya
	SetUnitCampID(sceneId, MstId, MstId, 110)

	--SetObjDir( sceneId, MstId, BOSSData.Dir )
	SetMonsterFightWithNpcFlag( sceneId, MstId, 0 )
	if BOSSData.Title ~= "" then
		SetCharacterTitle(sceneId, MstId, BOSSData.Title)
	end

	LuaFnSendSpecificImpactToUnit(sceneId, MstId, MstId, MstId, 152, 0)

	--Í³¼Æ´´½¨BOSS....
	--AuditSJZCreateBoss( sceneId, BOSSData.DataID )

	return MstId

end

--**********************************
--É¾³ýÖ¸¶¨BOSS....
--**********************************
function x893063_DeleteBOSS( sceneId, name )

	local BOSSData = x893063_g_BOSSList[name]
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
function x893063_FindBOSS( sceneId, name )

	local BOSSData = x893063_g_BOSSList[name]
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
function x893063_CheckHaveBOSS( sceneId )

	local BossList = {}
	local nBossNum = 0

	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
			local DataID = GetMonsterDataID( sceneId, MonsterId )
			for j, dataId in x893063_g_FightBOSSList do
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
		msg = msg .. BossList[nBossNum-1] .. " huyªt chiªn tÕi TÑ Tuy®t Trang"
		return 1, msg
	end

	return 0, ""

end

--**********************************
--»ñÈ¡ÊÇ·ñ¿ÉÒÔÌôÕ½Ä³¸öBOSSµÄ±ê¼Ç....
--**********************************
function x893063_GetBossBattleFlag( sceneId, bossName )

	local idx = x893063_g_BattleFlagTbl[ bossName ]
	return LuaFnGetCopySceneData_Param( sceneId, idx )

end

--**********************************
--ÉèÖÃÊÇ·ñ¿ÉÒÔÌôÕ½Ä³¸öBOSSµÄ±ê¼Ç....
--**********************************
function x893063_SetBossBattleFlag( sceneId, bossName, bCan )

	local idx = x893063_g_BattleFlagTbl[ bossName ]
	LuaFnSetCopySceneData_Param( sceneId, idx, bCan )

end
