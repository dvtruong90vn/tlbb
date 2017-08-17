--çÎç¿·å¸±±¾....   ____¡¢·ÉÏè By£º403413393 ÐÞ¸´

--½Å±¾ºÅ
x894063_g_ScriptId = 894063

x894063_g_CopySceneType = FUBEN_BINGSHENZHEN	--¸±±¾ÀàÐÍ£¬¶¨ÒåÔÚScriptGlobal.luaÀïÃæ
x894063_g_LimitMembers = 1					-- ¿ÉÒÔ½ø¸±±¾µÄ×îÐ¡¶ÓÎéÈËÊý

x894063_g_TickTime		= 1				--»Øµ÷½Å±¾µÄÊ±ÖÓÊ±¼ä£¨µ¥Î»£ºÃë/´Î£©
x894063_g_NoUserTime	= 10			--¸±±¾ÖÐÃ»ÓÐÈËºó¿ÉÒÔ¼ÌÐø±£´æµÄÊ±¼ä£¨µ¥Î»£ºÃë£©
x894063_g_Fuben_X			= 123			--½øÈë¸±±¾µÄÎ»ÖÃX
x894063_g_Fuben_Z			= 138			--½øÈë¸±±¾µÄÎ»ÖÃZ
x894063_g_FuBenTime		= 3*60*60	--¸±±¾¹Ø±ÕÊ±¼ä....

--BOSS±í....
x894063_g_BOSSList =
{
	["XiaoYiFeng_NPC"]				= { DataID=15106, Title="T§t Nhß Phong", posX=51, posY=53, Dir=27, BaseAI=3, AIScript=0, ScriptID=894070 },
	["XiaoYiFeng_BOSS"]				= { DataID=15110, Title="T§t Nhß Phong", posX=51, posY=53, Dir=27, BaseAI=27, AIScript=301, ScriptID=894064 },
	["XuanFeng_BOSS"]			= { DataID=15115, Title="", posX=0, posY=0, Dir=0, BaseAI=3, AIScript=0, ScriptID=894096 },
	["FengLei_BOSS"]			= { DataID=15120, Title="", posX=0, posY=0, Dir=0, BaseAI=27, AIScript=302, ScriptID=-1 },

	["XiaoRuJun_NPC"]		= { DataID=15126, Title="T× Nhß Lâm", posX=173, posY=36, Dir=0, BaseAI=3, AIScript=0, ScriptID=894071 },
	["XiaoRuJun_BOSS"]		= { DataID=15130, Title="T× Nhß Lâm", posX=173, posY=36, Dir=0, BaseAI=27, AIScript=0, ScriptID=894065 },
	["XiaoRuWei_NPC"]		= { DataID=15131, Title="T× Nhß Lâm", posX=173, posY=100, Dir=0, BaseAI=3, AIScript=0, ScriptID=894068 },
	["XiaoRuWei_BOSS"]		= { DataID=15135, Title="T× Nhß Lâm", posX=173, posY=100, Dir=0, BaseAI=27, AIScript=0, ScriptID=894067 },

	["ZhuBai_BOSS"]			= { DataID=15040, Title="NgoÕi Công Phòng Ngñ", posX=169, posY=36, Dir=0, BaseAI=28, AIScript=0, ScriptID=894080 },
	["ZhuHong_BOSS"]			= { DataID=15060, Title="Kháng Höa", posX=173, posY=32, Dir=0, BaseAI=28, AIScript=0, ScriptID=894083 },
	["ZhuHuang_BOSS"]			= { DataID=15050, Title="Kháng Huy«n", posX=177, posY=36, Dir=0, BaseAI=28, AIScript=0, ScriptID=894082 },
	["ZhuLan_BOSS"]			= { DataID=15065, Title="Kháng Bång", posX=176, posY=39, Dir=0, BaseAI=28, AIScript=0, ScriptID=894084 },
	["ZhuLv_BOSS"]			= { DataID=15055, Title="Kháng Ðµc", posX=170, posY=33, Dir=0, BaseAI=28, AIScript=0, ScriptID=894085 },
	["ZhuZi_BOSS"]			= { DataID=15045, Title="Nµi Công Phòng Ngñ", posX=173, posY=38, Dir=0, BaseAI=28, AIScript=0, ScriptID=894081 },

	["Bai_BOSS"]			= { DataID=15140, Title="NgoÕi Công Phòng Ngñ", posX=169, posY=100, Dir=0, BaseAI=28, AIScript=0, ScriptID=894086 },
	["Hong_BOSS"]			= { DataID=15160, Title="Kháng Höa", posX=173, posY=97, Dir=0, BaseAI=28, AIScript=0, ScriptID=894089 },
	["Huang_BOSS"]			= { DataID=15150, Title="Kháng Huy«n", posX=177, posY=98, Dir=0, BaseAI=28, AIScript=0, ScriptID=894088 },
	["Lan_BOSS"]			= { DataID=15165, Title="Kháng Bång", posX=176, posY=101, Dir=0, BaseAI=28, AIScript=0, ScriptID=894090 },
	["Lv_BOSS"]			= { DataID=15155, Title="Kháng Ðµc", posX=175, posY=104, Dir=0, BaseAI=28, AIScript=0, ScriptID=894091 },
	["Zi_BOSS"]			= { DataID=15145, Title="Nµi Công Phòng Ngñ", posX=173, posY=101, Dir=0, BaseAI=28, AIScript=0, ScriptID=894087 },

	["YeLvYan_NPC"]				= { DataID=15171, Title="Xâm Lßþc Nhß Höa", posX=192, posY=195, Dir=27, BaseAI=3, AIScript=0, ScriptID=894072 },
	["YeLvYanLoss_NPC"]		= { DataID=14216, Title="", posX=117, posY=49, Dir=0, BaseAI=3, AIScript=0, ScriptID=894075 },
	["YeLvYan_BOSS"]			= { DataID=15175, Title="Xâm Lßþc Nhß Höa", posX=192, posY=195, Dir=27, BaseAI=27, AIScript=0, ScriptID=894066 },
	["HuoNiu_BOSS"]			= { DataID=15180, Title="", posX=0, posY=0, Dir=0, BaseAI=27, AIScript=0, ScriptID=894097 },

	["YaoBoDang_BOSS"]		= { DataID=42202, Title="", posX=129, posY=108, Dir=0, BaseAI=27, AIScript=0, ScriptID=890067 },
	["SiMaLing_BOSS"]	= { DataID=42203, Title="", posX=131, posY=109, Dir=0, BaseAI=27, AIScript=0, ScriptID=890068 },

	["YouDanZhi_BOSS"]		= { DataID=42204, Title="", posX=129, posY=126, Dir=0, BaseAI=0, AIScript=0, ScriptID=890074 },

	["LiFan_NPC"]				= { DataID=15186, Title="B¤t Ðµng Nhß S½n", posX=52, posY=203, Dir=27, BaseAI=3, AIScript=0, ScriptID=894075 },
	["YeLvLian_BOSS"]		= { DataID=15190, Title="B¤t Ðµng Nhß S½n", posX=52, posY=203, Dir=27, BaseAI=27, AIScript=0, ScriptID=894069 },

	["ShiDui_BOSSA"]			= { DataID=15195, Title="Mi­n D¸ch NgoÕi Công", posX=52, posY=218, Dir=0, BaseAI=28, AIScript=0, ScriptID=-1 },
	["ShiDui_BOSSB"]			= { DataID=15195, Title="Mi­n D¸ch NgoÕi Công", posX=63, posY=213, Dir=0, BaseAI=28, AIScript=0, ScriptID=-1 },
	["ShiDui_BOSSC"]			= { DataID=15195, Title="Mi­n D¸ch NgoÕi Công", posX=67, posY=203, Dir=0, BaseAI=28, AIScript=0, ScriptID=-1 },
	["ShiDui_BOSSD"]			= { DataID=15195, Title="Mi­n D¸ch NgoÕi Công", posX=63, posY=192, Dir=0, BaseAI=28, AIScript=0, ScriptID=-1 },
	["ShiDui_BOSSE"]			= { DataID=15195, Title="Mi­n D¸ch Nµi Công", posX=53, posY=188, Dir=0, BaseAI=28, AIScript=0, ScriptID=-1 },
	["ShiDui_BOSSF"]			= { DataID=15195, Title="Mi­n D¸ch Nµi Công", posX=42, posY=192, Dir=0, BaseAI=28, AIScript=0, ScriptID=-1 },
	["ShiDui_BOSSG"]			= { DataID=15195, Title="Mi­n D¸ch Nµi Công", posX=38, posY=203, Dir=0, BaseAI=28, AIScript=0, ScriptID=-1 },
	["ShiDui_BOSSH"]			= { DataID=15195, Title="Mi­n D¸ch Nµi Công", posX=42, posY=213, Dir=0, BaseAI=28, AIScript=0, ScriptID=-1 },
	["TieGu_BOSS"]			= { DataID=15185, Title="Mi­n D¸ch NgoÕi Công", posX=0, posY=0, Dir=0, BaseAI=28, AIScript=0, ScriptID=894092 },
	["YuanShen_BOSS"]			= { DataID=15200, Title="Mi­n D¸ch Nµi Công", posX=0, posY=0, Dir=0, BaseAI=28, AIScript=0, ScriptID=894093 },
	["TieFuZhen_BOSS"]			= { DataID=15205, Title="", posX=46, posY=795, Dir=0, BaseAI=3, AIScript=0, ScriptID=894094 },
	["YuanFuZhen_BOSS"]			= { DataID=15206, Title="", posX=54, posY=213, Dir=0, BaseAI=3, AIScript=0, ScriptID=894095 },

}

x894063_g_FightBOSSList =
{
	[1] = x894063_g_BOSSList["XiaoYiFeng_BOSS"].DataID,
	[2] = x894063_g_BOSSList["XiaoRuJun_BOSS"].DataID,
	[3] = x894063_g_BOSSList["YeLvYan_BOSS"].DataID,
	[4] = x894063_g_BOSSList["XiaoRuWei_BOSS"].DataID,
	[5] = x894063_g_BOSSList["SiMaLing_BOSS"].DataID,
	[6] = x894063_g_BOSSList["YeLvLian_BOSS"].DataID
}

--ÊÇ·ñ¿ÉÒÔÌôÕ½Ä³¸öBOSSµÄ±ê¼ÇÁÐ±í....
x894063_g_BattleFlagTbl = 
{
	["XiaoYiFeng"]			= 8,	--ÊÇ·ñ¿ÉÒÔÌôÕ½¹þ´ó°Ô...
	["XiaoRuJun"]	= 9,	--ÊÇ·ñ¿ÉÒÔÌôÕ½É£ÍÁ¹«....
	["YeLvYan"]			= 10,	--ÊÇ·ñ¿ÉÒÔÌôÕ½ÎÚÀÏ´ó....
	["ShuangZi"]		= 11,	--ÊÇ·ñ¿ÉÒÔÌôÕ½Ë«×Ó....
	["YeLvLian"]		= 12,	--ÊÇ·ñ¿ÉÒÔÌôÕ½ÀîÇïË®....
	["PlayHp"]		= 21,	--Íæ¼ÒÑªÁ¿....
}

--³¡¾°±äÁ¿Ë÷Òý....ÊÇ·ñ¿ÉÒÔÌôÕ½Ä³¸öBOSSµÄ±ê¼Ç....
-- 0=²»ÄÜÌôÕ½ 1=¿ÉÒÔÌôÕ½ 2=ÒÑ¾­ÌôÕ½¹ýÁË
x894063_g_IDX_BattleFlag_XiaoYiFeng			= 8
x894063_g_IDX_BattleFlag_XiaoRuJun	= 9
x894063_g_IDX_BattleFlag_YeLvYan		= 10
x894063_g_IDX_BattleFlag_Shuangzi		= 11
x894063_g_IDX_BattleFlag_YeLvLian	= 12
x894063_g_IDX_BattleFlag_PlayHp	= 21

x894063_g_IDX_FuBenOpenTime		= 13	--¸±±¾½¨Á¢µÄÊ±¼ä....
x894063_g_IDX_FuBenLifeStep		= 14	--¸±±¾ÉúÃüÆÚµÄstep....(°üÀ¨½¨Á¢NPC....¹Ø±Õµ¹¼ÆÊ±ÌáÊ¾....)

--³¡¾°±äÁ¿Ë÷Òý....Í¨ÓÃµÄçÎç¿·å¼ÆÊ±Æ÷....Ö÷ÒªÓÃÓÚ¼¤»îBOSSÕ½¶·....
x894063_g_IDX_BQZTimerStep			= 15
x894063_g_IDX_BQZTimerScriptID	= 16

--³¡¾°±äÁ¿Ë÷Òý....ÎÚÀÏ´óËÀÍöµÄ¼ÆÊ±Æ÷....ÓÃÓÚ´¦ÀíËÀÍöÂß¼­....
x894063_g_IDX_YeLvYanDieStep				= 17
x894063_g_IDX_YeLvYanDieScriptID		= 18
x894063_g_IDX_YeLvYanDiePosX				=	19
x894063_g_IDX_YeLvYanDiePosY				=	20


--**********************************
--ÈÎÎñÈë¿Úº¯Êý....
--**********************************
function x894063_OnDefaultEvent( sceneId, selfId, targetId )

	--¼ì²âÊÇ·ñ¿ÉÒÔ½øÈë¸±±¾....
	local ret, msg = x894063_CheckCanEnter( sceneId, selfId, targetId )
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

	x894063_MakeCopyScene( sceneId, selfId )
	local	nam	= LuaFnGetName( sceneId, selfId )
	BroadMsgByChatPipe( sceneId, selfId, "#YNhÕn Môn Quan#W c¤p báo: G¥n ðây Khiªt Ðan bµ tµc t§p KÏ Tr§n, vài ngày næa s¨ xu¤t quân nam chinh phÕt Trung Nguyên. Nh§n ðßþc tin kh¦n, #gffff00"..nam.."#W ðã dçn d¡t ðµi ngû l§p tÑc lên ðß¶ng tiªn ðªn KÏ Tr§n th« s¯ng chªt cß¾p ðßþc #GChinh Nam Tiên Phong ?n#W ðem v«.", 4 )

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x894063_OnEnumerate( sceneId, selfId, targetId )

	AddNumText( sceneId, x894063_g_ScriptId, "#cFF0000T§p kích b¤t ng¶", 10, 1 )

end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔ½øÈë´Ë¸±±¾....
--**********************************
function x894063_CheckCanEnter( sceneId, selfId, targetId )
	--ÈËÊýÊÇ·ñ¹»....
	if GetTeamSize(sceneId,selfId) < x894063_g_LimitMembers then
		return 0, "Ðµi ngû không ðü 3 ngß¶i, không th¬ tiªn vào"
		end

	--ÊÇ·ñÓÐ¶ÓÎé....
	if LuaFnHasTeam(sceneId,selfId) ~= 1 then
		return 0, "#{PMF_20080521_02}"
	end

	--ÊÇ²»ÊÇ¶Ó³¤....
	if GetTeamLeader(sceneId,selfId) ~= selfId then
		return 0, "#{PMF_20080521_03}"
	end
	--ÈËÊýÊÇ·ñ¹»....
	if GetTeamSize(sceneId,selfId) < x894063_g_LimitMembers then
		return 0, "Ðµi ngû không ðü 3 ngß¶i, không th¬ tiªn vào"
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
		if GetLevel( sceneId, PlayerId ) < 120 then
			Humanlist[nHumanNum] = GetName( sceneId, PlayerId )
			nHumanNum = nHumanNum + 1
		end
	end

	if nHumanNum > 0 then

		local msg = "Ðµi ngû "
		for i=0, nHumanNum-2 do
			msg = msg .. Humanlist[i] .. ", "
		end
		msg = msg .. Humanlist[nHumanNum-1] .. " c¤p ðµ không ðü C¤p 120, không th¬ tiªn vào!"
		return 0, msg

	end


	--ÊÇ·ñÓÐÈË½ñÌì×ö¹ý3´ÎÁË....
	nHumanNum = 0
	local CurDayTime = GetDayTime()
	for i=0, NearTeamSize-1 do

		local PlayerId = GetNearTeamMember( sceneId, selfId, i )
		local lastTime = GetMissionData( sceneId, PlayerId, MD_YURENJIE_LASTTIME )
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
		msg = msg .. Humanlist[nHumanNum-1] .. " ðã tham gia phø bän 3 l¥n!"
		return 0, msg

	end
	--ÈËÊýÊÇ·ñ¹»....
	if GetTeamSize(sceneId,selfId) < x894063_g_LimitMembers then
		return 0, "Ðµi ngû không ðü 3 ngß¶i, không th¬ tiªn vào"
		end

	return 1

end

--**********************************
--´´½¨¸±±¾....
--**********************************
function x894063_MakeCopyScene( sceneId, selfId )
	--ÈËÊýÊÇ·ñ¹»....
	if GetTeamSize(sceneId,selfId) < x894063_g_LimitMembers then
		return 0, "Ðµi ngû không ðü 3 ngß¶i, không th¬ tiªn vào"
		end

	local x = 0
	local z = 0
	x,z = LuaFnGetWorldPos(sceneId,selfId)
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)

	LuaFnSetSceneLoad_Map(sceneId, "BattleField.nav")
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid)
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x894063_g_NoUserTime*1000)
	LuaFnSetCopySceneData_Timer(sceneId, x894063_g_TickTime*1000)
	LuaFnSetCopySceneData_Param(sceneId, 0, x894063_g_CopySceneType)
	LuaFnSetCopySceneData_Param(sceneId, 1, x894063_g_ScriptId)
	LuaFnSetCopySceneData_Param(sceneId, 2, 0)
	LuaFnSetCopySceneData_Param(sceneId, 3, sceneId)
	LuaFnSetCopySceneData_Param(sceneId, 4, x)
	LuaFnSetCopySceneData_Param(sceneId, 5, z)
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId))
	LuaFnSetCopySceneData_Param(sceneId, 7, 0)

	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end
	--ÈËÊýÊÇ·ñ¹»....
	if GetTeamSize(sceneId,selfId) < x894063_g_LimitMembers then
		return 0, "Ðµi ngû không ðü 3 ngß¶i, không th¬ tiªn vào"
		end

	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BattleFlag_XiaoYiFeng, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BattleFlag_XiaoRuJun, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BattleFlag_YeLvYan, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BattleFlag_Shuangzi, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BattleFlag_YeLvLian, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BattleFlag_PlayHp, 0 )

	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenOpenTime, LuaFnGetCurrentTime() )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 0 )

	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BQZTimerStep, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BQZTimerScriptID, -1 )

	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDieStep, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDieScriptID, -1 )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDiePosX, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDiePosY, 0 )

	LuaFnSetSceneLoad_Area( sceneId, "BattleField_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "BattleField_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId)
	BeginEvent(sceneId)

		if bRetSceneID>0 then
			AddText(sceneId,"D¸ch chuy¬n thành công!");
		else
			AddText(sceneId,"S¯ lßþng bän sao quá täi, xin ðþi mµt lát!");
		end

	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

end

--**********************************
--¸±±¾ÊÂ¼þ....
--**********************************
function x894063_OnCopySceneReady( sceneId, destsceneId )

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
		NewWorld( sceneId, leaderObjId, destsceneId, x894063_g_Fuben_X, x894063_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x894063_g_Fuben_X, x894063_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				NewWorld( sceneId, mems[i], destsceneId, x894063_g_Fuben_X, x894063_g_Fuben_Z)
			end
		end		
	end

end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼þ....
--**********************************
function x894063_OnCopySceneTimer( sceneId, nowTime )

	x894063_TickFubenLife( sceneId, nowTime )

	x894063_TickBQZTimer( sceneId, nowTime )

	x894063_TickYeLvYanDieTimer( sceneId, nowTime )

	x894063_TickJianWuArea( sceneId, nowTime )

end

--**********************************
--ÓÐÍæ¼Ò½øÈë¸±±¾ÊÂ¼þ....
--**********************************
function x894063_OnPlayerEnter( sceneId, selfId )

	--ÉèÖÃËÀÍöÊÂ¼þ....
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x894063_g_Fuben_X, x894063_g_Fuben_Z )

	--ÉèÖÃÌôÕ½¹ýÒ»´ÎçÎç¿·å....
	local lastTime = GetMissionData( sceneId, selfId, MD_YURENJIE_LASTTIME )
	local lastDayTime = floor( lastTime / 100 )
	local lastDayCount = mod( lastTime, 100 )
	local CurDayTime = GetDayTime()

	if CurDayTime > lastDayTime then
		lastDayTime = CurDayTime
		lastDayCount = 0
	end

	lastDayCount = lastDayCount + 1
	lastTime = lastDayTime * 100 + lastDayCount
	SetMissionData( sceneId, selfId, MD_YURENJIE_LASTTIME, lastTime )

end

--**********************************
--ÓÐÍæ¼ÒÔÚ¸±±¾ÖÐËÀÍöÊÂ¼þ....
--**********************************
function x894063_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--ÌáÊ¾ËùÓÐ¸±±¾ÄÚÍæ¼Ò....
--**********************************
function x894063_TipAllHuman( sceneId, Str )

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
function x894063_TickFubenLife( sceneId, nowTime )

	local openTime = LuaFnGetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenOpenTime )
	local leftTime = openTime + x894063_g_FuBenTime - LuaFnGetCurrentTime()
	local lifeStep = LuaFnGetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep )

	if lifeStep == 15 then

		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 16 )

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
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 15 )
		x894063_TipAllHuman( sceneId, "Phø bän s¨ ðóng cØa sau 1 giây!" )
		return
	end

	if lifeStep == 13 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 14 )
		x894063_TipAllHuman( sceneId, "Phø bän s¨ ðóng cØa sau 2 giây!" )
		return
	end

	if lifeStep == 12 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 13 )
		x894063_TipAllHuman( sceneId, "Phø bän s¨ ðóng cØa sau 3 giây!" )
		return
	end

	if lifeStep == 11 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 12 )
		x894063_TipAllHuman( sceneId, "Phø bän s¨ ðóng cØa sau 4 giây!" )
		return
	end

	if lifeStep == 10 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 11 )
		x894063_TipAllHuman( sceneId, "Phø bän s¨ ðóng cØa sau 5 giây!" )
		return
	end

	if leftTime <= 10 and lifeStep == 9 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 10 )
		x894063_TipAllHuman( sceneId, "Phø bän s¨ ðóng cØa sau 10 giây!" )
		return
	end

	if leftTime <= 30 and lifeStep == 8 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 9 )
		x894063_TipAllHuman( sceneId, "Phø bän s¨ ðóng cØa sau 30 giây!" )
		return
	end

	if leftTime <= 60 and lifeStep == 7 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 8 )
		x894063_TipAllHuman( sceneId, "Phø bän s¨ ðóng cØa sau 1 phút!" )
		return
	end

	if leftTime <= 120 and lifeStep == 6 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 7 )
		x894063_TipAllHuman( sceneId, "Phø bän s¨ ðóng cØa sau 2 phút!" )
		return
	end

	if leftTime <= 180 and lifeStep == 5 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 6 )
		x894063_TipAllHuman( sceneId, "Phø bän s¨ ðóng cØa sau 3 phút!" )
		return
	end

	if leftTime <= 300 and lifeStep == 4 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 5 )
		x894063_TipAllHuman( sceneId, "Phø bän s¨ ðóng cØa sau 5 phút!" )
		return
	end

	if leftTime <= 900 and lifeStep == 3 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 4 )
		x894063_TipAllHuman( sceneId, "Phø bän s¨ ðóng cØa sau 15 phút!" )
		return
	end

	if leftTime <= 1800 and lifeStep == 2 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 3 )
		x894063_TipAllHuman( sceneId, "Phø bän s¨ ðóng cØa sau 30 phút!" )
		return
	end

	if leftTime <= 3600 and lifeStep == 1 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 2 )
		x894063_TipAllHuman( sceneId, "Phø bän s¨ ðóng cØa sau 60 phút!" )
		return
	end

	--³õÊ¼»¯¸±±¾ÄÚµÄNPC....
	if lifeStep == 0 then

		local MstId = x894063_CreateBOSS( sceneId, "XiaoYiFeng_NPC", -1, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )

		MstId = x894063_CreateBOSS( sceneId, "XiaoRuJun_NPC", -1, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )

		MstId = x894063_CreateBOSS( sceneId, "XiaoRuWei_NPC", -1, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )

		MstId = x894063_CreateBOSS( sceneId, "YeLvYan_NPC", -1, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )

		MstId = x894063_CreateBOSS( sceneId, "LiFan_NPC", -1, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )

		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 1 )

		return
	end

end

--**********************************
--TickçÎç¿·å¼ÆÊ±Æ÷....
--**********************************
function x894063_TickBQZTimer( sceneId, nowTime )

	local step = LuaFnGetCopySceneData_Param( sceneId, x894063_g_IDX_BQZTimerStep )
	if step <= 0 then
		return
	end
	local scriptID = LuaFnGetCopySceneData_Param( sceneId, x894063_g_IDX_BQZTimerScriptID )

	--»Øµ÷Ö¸¶¨½Å±¾µÄOnTimer....
	CallScriptFunction( scriptID, "OnBQZTimer", sceneId, step )

	--Èç¹ûÒÑ¾­×ßÍêËùÓÐstepÔò¹Ø±Õ¼ÆÊ±Æ÷....
	step = step - 1
	if step <= 0 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BQZTimerStep, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BQZTimerScriptID, -1 )
	else
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BQZTimerStep, step )
	end

end

--**********************************
--¿ªÆôçÎç¿·å¼ÆÊ±Æ÷....
--**********************************
function x894063_OpenBQZTimer( sceneId, allstep, ScriptID )

	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BQZTimerStep, allstep )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BQZTimerScriptID, ScriptID )

end

--**********************************
--µ±Ç°çÎç¿·å¼ÆÊ±Æ÷ÊÇ·ñ¼¤»î....
--**********************************
function x894063_IBQZSTimerRunning( sceneId )

	local step = LuaFnGetCopySceneData_Param( sceneId, x894063_g_IDX_BQZTimerStep )
	if step > 0 then
		return 1
	else
		return 0
	end

end

--**********************************
--TickÎÚÀÏ´óËÀÍö¼ÆÊ±Æ÷....
--**********************************
function x894063_TickYeLvYanDieTimer( sceneId, nowTime )

	local step = LuaFnGetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDieStep )
	if step <= 0 then
		return
	end

	local scriptID = LuaFnGetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDieScriptID )
	local posX = LuaFnGetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDiePosX )
	local posY = LuaFnGetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDiePosY )

	--»Øµ÷Ö¸¶¨½Å±¾µÄOnTimer....
	CallScriptFunction( scriptID, "OnXiaoYiFengDieTimer", sceneId, step, posX, posY )

	--Èç¹ûÒÑ¾­×ßÍêËùÓÐstepÔò¹Ø±Õ¼ÆÊ±Æ÷....
	step = step - 1
	if step <= 0 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDieStep, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDieScriptID, -1 )
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDiePosX, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDiePosY, 0 )
	else
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDieStep, step )
	end

end

--**********************************
--¿ªÆôÎÚÀÏ´óËÀÍö¼ÆÊ±Æ÷....
--**********************************
function x894063_OpenYeLvYanDieTimer( sceneId, allstep, ScriptID, posX, posY )

	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDieStep, allstep )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDieScriptID, ScriptID )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDiePosX, posX )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDiePosY, posY )

end

--**********************************
--Tick½£ÎèÇøÓò....
--Ö»ÒªÍæ¼ÒÕ¾ÔÚ³¡¾°ÀïµÄ6¸ö¹âÖùÄÚ....Ã¿Ãë¶¼ÄÜ»ñµÃÒ»¸öÃâÒß½£ÎèµÄbuff....
--**********************************
function x894063_TickJianWuArea( sceneId, nowTime )

end

--**********************************
--´´½¨Ö¸¶¨BOSS....
--**********************************
function x894063_CreateBOSS( sceneId, name, x, y )

	local BOSSData = x894063_g_BOSSList[name]
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
	--AuditBQZCreateBoss( sceneId, BOSSData.DataID )

	return MstId

end

--**********************************
--É¾³ýÖ¸¶¨BOSS....
--**********************************
function x894063_DeleteBOSS( sceneId, name )

	local BOSSData = x894063_g_BOSSList[name]
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
function x894063_FindBOSS( sceneId, name )

	local BOSSData = x894063_g_BOSSList[name]
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
function x894063_CheckHaveBOSS( sceneId )

	local BossList = {}
	local nBossNum = 0

	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
			local DataID = GetMonsterDataID( sceneId, MonsterId )
			for j, dataId in x894063_g_FightBOSSList do
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
		msg = msg .. BossList[nBossNum-1] .. " tØ chiªn tÕi Binh Thánh KÏ Tr§n"
		return 1, msg
	end

	return 0, ""

end

--**********************************
--»ñÈ¡ÊÇ·ñ¿ÉÒÔÌôÕ½Ä³¸öBOSSµÄ±ê¼Ç....
--**********************************
function x894063_GetBossBattleFlag( sceneId, bossName )

	local idx = x894063_g_BattleFlagTbl[ bossName ]
	return LuaFnGetCopySceneData_Param( sceneId, idx )

end

--**********************************
--ÉèÖÃÊÇ·ñ¿ÉÒÔÌôÕ½Ä³¸öBOSSµÄ±ê¼Ç....
--**********************************
function x894063_SetBossBattleFlag( sceneId, bossName, bCan )

	local idx = x894063_g_BattleFlagTbl[ bossName ]
	LuaFnSetCopySceneData_Param( sceneId, idx, bCan )

end
