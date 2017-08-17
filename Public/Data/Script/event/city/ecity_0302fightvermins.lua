--¸±±¾ÈÎÎñ
--É±ó¼¹Ö

--************************************************************************
--MisDescBegin

--½Å±¾ºÅ
x600014_g_ScriptId = 600014

--ÈÎÎñºÅ
x600014_g_MissionId = 1107

--Ä¿±êNPC
x600014_g_Name = "Hµi H÷a"

--ĞÆng c¤p nhi®m vø 
x600014_g_MissionLevel = 10000

--ÈÎÎñ¹éÀà
x600014_g_MissionKind = 50

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x600014_g_IfMissionElite = 0

--********ÏÂÃæ¼¸ÏîĞúng¶¯Ì¬ÏÔÊ¾toÕ ğµ ÄÚÈİ,ÓÃÓÚTÕi ÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
--½ÇÉ«Mission±äÁ¿Ë ği¬m÷
x600014_g_IsMissionOkFail			=0	--0 Nhi®m vø hoàn thành±ê¼Ç
x600014_g_MissionParam_SubId		=1	--1 ×ÓÈÎÎñ½Å±¾ºÅ´æ·ÅÎ»ÖÃ
x600014_g_MissionParam_KillNumber	=2	--2 C¥n ÏûÃğtoÕ ğµ ¹ÖÎïÊıÁ¿
x600014_g_Param_sceneid				=3	--3ºÅ: µ±Ç°¸±±¾ÈÎÎñtoÕ ğµ ³¡¾°ºÅ
x600014_g_Param_teamid				=4	--4ºÅ: ½Ó¸±±¾ÈÎÎñÊ±ºòtoÕ ğµ ¶ÓÎéºÅ
x600014_g_Param_killcount			=5	--5ºÅ: É±ËÀÈÎÎñ¹ÖtoÕ ğµ ÊıÁ¿
x600014_g_Param_time				=6	--6ºÅ: Íê³É¸±±¾ËùÓÃÊ±¼ä(µ¥Î»:  giây)
--6ºÅ: Î´ÓÃ
--7ºÅ: Î´ÓÃ

--Ñ­»·ÈÎÎñtoÕ ğµ Êı¾İË÷Òı,ÀïÃæ´æ×ÅÒÑ×ötoÕ ğµ »·Êı
x600014_g_MissionRound = 42
--**********************************ÒÔÉÏĞúng¶¯Ì¬****************************

--ÈÎÎñÎÄ±¾ÃèÊö
x600014_g_MissionName = "Nhi®m vø kÛ thu§t"
x600014_g_MissionInfo = ""													--ÈÎÎñÃèÊö
x600014_g_MissionTarget = "    Di®t bö Ğ¯ Quái trong Thß Các."						--Møc tiêu nhi®m vø
x600014_g_ContinueInfo = "    Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"						--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x600014_g_SubmitInfo = "    Sñ tình tiªn tri¬n nhß thª nào r°i?"								--Íê³ÉÎ´Ìá½»Ê±toÕ ğµ npc¶Ô»°
x600014_g_MissionComplete = "    Làm t¯t l¡m, r¤t t¯t r¤t t¯t. "						--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°

x600014_g_Parameter_Kill_CountRandom = { { id = 300475, numNeeded = 2, numKilled = 5 } }

-- Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600014_g_CityMissionScript = 600001
x600014_g_SciTechScript = 600012

--ÈÎÎñ½±Àø

--MisDescEnd
--************************************************************************

--¸±±¾Ãû³Æ
x600014_g_CopySceneName = "Thß vi®n"

x600014_g_CopySceneType = FUBEN_KILLVERMIN	--¸±±¾ÀàĞÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ

x600014_g_CopySceneMap = "shuge.nav"
x600014_g_Exit = "shuge_area.ini"
x600014_g_LimitMembers = 1				--¿ÉÒÔ½ø¸±±¾toÕ ğµ ×îĞ¡¶ÓÎéÈËÊı
x600014_g_TickTime = 5					--»Øµ÷½Å±¾toÕ ğµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x600014_g_LimitTotalHoldTime = 360		--¸±±¾¿ÉÒÔ´æ»îtoÕ ğµ Ê±¼ä(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x600014_g_LimitTimeSuccess = 500		--¸±±¾Ê±¼äÏŞÖÆ(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,Nhi®m vø hoàn thành
x600014_g_CloseTick = 3					--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊı)
x600014_g_NoUserTime = 300				--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´ætoÕ ğµ Ê±¼ä(µ¥Î»:  giây)
x600014_g_DeadTrans = 0					--ËÀÍö×ªÒÆÄ£Ê½,0: ËÀÍöºó»¹¿ÉÒÔ¼ÌĞøTÕi ¸±±¾,1: ËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x600014_g_Fuben_X = 50					--½øÈë¸±±¾toÕ ğµ Î»ÖÃX
x600014_g_Fuben_Z = 10					--½øÈë¸±±¾toÕ ğµ Î»ÖÃZ
x600014_g_Back_X = 73					--Ô´³¡¾°Î»ÖÃX
x600014_g_Back_Z = 93					--Ô´³¡¾°Î»ÖÃZ

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x600014_OnDefaultEvent( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600014_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600014_g_MissionId ) > 0 then
		local bDone = x600014_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600014_g_SubmitInfo
		else
			strText = x600014_g_ContinueInfo
		end

		if bDone == 0 then												--ÈÎÎñÎ´Íê³É
			if GetNumText() == 1 then
				x600014_AcceptEnterCopyScene( sceneId, selfId )
			else
				BeginEvent( sceneId )
					AddText( sceneId, x600014_g_MissionName )
					x600014_AskEnterCopyScene( sceneId, selfId )
				EndEvent( )
				DispatchEventList( sceneId, selfId, targetId )
			end
		elseif bDone == 1 then											--ÈÎÎñÒÑ¾­Íê³É
			BeginEvent( sceneId )
				AddText( sceneId, x600014_g_MissionName )
				AddText( sceneId, strText )
			EndEvent( )
			DispatchMissionDemandInfo( sceneId, selfId, targetId, x600014_g_ScriptId, x600014_g_MissionId, bDone )
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x600014_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600014_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600014_OnAccept( sceneId, selfId, targetId )
		end
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x600014_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600014_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

   --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600014_g_MissionId ) > 0 then
		AddNumText( sceneId, x600014_g_ScriptId, x600014_g_MissionName,3,-1 )
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x600014_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600014_g_SciTechScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--Ñ¯ÎÊÍæ¼ÒĞúng·ñÒª½øÈë¸±±¾
--**********************************
function x600014_AskEnterCopyScene( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600014_g_MissionId ) <= 0 then	-- Ã»ÓĞÈÎÎñ
		return
	end

	local missionInfo
	if random(2) == 1 then
		missionInfo = format( "    Trong thß vi®n thß¶ng xuyên nhìn th¤y m÷t, chúng toàn c¡n nát sách trong kho, phi«n ngß½i quét d÷n cho sÕch" )
	else
		missionInfo = format( "    Gay r°i, thß vi®n lÕi phát hi®n ra m÷t, ngß½i giúp ta xØ lı ği nhé" )
	end

	AddText( sceneId, missionInfo )
	AddText( sceneId, "#{M_MUBIAO}" )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600014_g_MissionId )
	local KillNumber = GetMissionParam( sceneId, selfId, misIndex, x600014_g_MissionParam_KillNumber )
	AddText( sceneId, "    Trong thß các giªt chªt  " .. KillNumber .. "  Ğ¯ Quái" )
	AddNumText( sceneId, x600014_g_ScriptId, "Ği vào thß vi®n", 10, 1 )
end

--**********************************
--Tiªp thø
--**********************************
function x600014_OnAccept( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x600014_g_MissionId ) == 0 then					--Ã»ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		if GetLevel( sceneId, selfId ) < 40 then
			CallScriptFunction( x600014_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Không ğü ğÆng c¤p" )
			return
		end

		--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
		AddMission( sceneId, selfId, x600014_g_MissionId, x600014_g_ScriptId, 1, 0, 0 )	-- kill¡¢area¡¢item
		if IsHaveMission( sceneId, selfId, x600014_g_MissionId ) <= 0 then
			return
		end

		CallScriptFunction( x600014_g_SciTechScript, "OnAccept", sceneId, selfId, targetId, x600014_g_ScriptId )
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600014_g_MissionId )
		local KillNumber = 9 + random(11)
		SetMissionByIndex( sceneId, selfId, misIndex, x600014_g_MissionParam_KillNumber, KillNumber )

		--ÏÔÊ¾ÄÚÈİ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
		BeginEvent( sceneId )
			AddText( sceneId, x600014_g_MissionName )
			x600014_AskEnterCopyScene( sceneId, selfId )
			AddText( sceneId, "#rCác hÕ ğã nh§n " .. x600014_g_MissionName )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x600014_AcceptEnterCopyScene( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600014_g_MissionId ) > 0 then					--ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600014_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x600014_g_Param_sceneid )

		--changed by xindefeng
		--¸±±¾ĞÂ»úÖÆ:ÎŞÂÛÊ²Ã´Ô­Òò,TÕi Î´Hoàn t¤t nhi®m vø¶ø³ö¸±±¾,¸±±¾²»¶ÔÍæ¼ÒÉíÉÏtoÕ ğµ ÈÎÎñ×öÈÎºÎ¸Ä¶¯(ÉèÖÃth¤t bÕi»òÕßÉ¾³ıÈÎÎñ),¶øÍæ¼ÒÔÙ½ø¸Ã¸±±¾Ê±,¶¼ÒªÖØĞÂ³õÊ¼»¯ÈÎÎñÊı¾İ,¶øÇÒ¸±±¾¶¼ÒªÖØĞÂ´´½¨
		--if copysceneid >= 0 then												--½ø¹ı¸±±¾
		--	--½«×Ô¼º´«ËÍµ½¸±±¾³¡¾°
		--	if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
		--		NewWorld( sceneId, selfId, copysceneid, x600014_g_Fuben_X, x600014_g_Fuben_Z )
		--		return
		--	end
		--end

		SetMissionByIndex( sceneId, selfId, misIndex, x600014_g_IsMissionOkFail, 0 )	--½«ÈÎÎñtoÕ ğµ µÚ0ºÅÊı¾İÉèÖÃÎª0,±íÊ¾Î´Íê³ÉtoÕ ğµ ÈÎÎñ
		SetMissionByIndex( sceneId, selfId, misIndex, x600014_g_Param_sceneid, -1 )		--½«ÈÎÎñtoÕ ğµ µÚ3ºÅÊı¾İÉèÖÃÎª-1, ÓÃÓÚ±£´æ¸±±¾toÕ ğµ ³¡¾°ºÅ
		
		--add by xindefeng
		SetMissionByIndex( sceneId, selfId, misIndex, x600014_g_Param_killcount, 0 )	--½«ÈÎÎñtoÕ ğµ µÚ5ºÅÊı¾İÉèÖÃÎª0, ÉèÖÃÍæ¼ÒÉ±ËÀ¹ÖÎïÊıÁ¿Îª0
		
		x600014_MakeCopyScene( sceneId, selfId )
	end
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x600014_MakeCopyScene( sceneId, selfId )
	local mylevel = GetLevel( sceneId, selfId )

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	LuaFnSetSceneLoad_Map( sceneId, x600014_g_CopySceneMap )						--µØÍ¼Ğúng±ØĞëÑ¡È¡toÕ ğµ ,¶øÇÒ±ØĞëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x600014_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x600014_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, x600014_g_CopySceneType )				--ÉèÖÃ¸±±¾Êı¾İ,ÕâÀï½«0ºÅË÷ÒıtoÕ ğµ Êı¾İÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param( sceneId, 1, x600014_g_ScriptId )					--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, 7, 0 )							--É±ËÀBosstoÕ ğµ ÊıÁ¿

	local PlayerMaxLevel = GetHumanMaxLevelLimit() --modi:lby20071127
	
	local iniLevel
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end

	LuaFnSetSceneLoad_Area( sceneId, x600014_g_Exit )
	LuaFnSetSceneLoad_Monster( sceneId, "shuge_monster_" .. iniLevel .. ".ini" )

	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --c¤p±ğ²î,CopyScene_LevelGap TÕi  scene.lua ÖĞ¸³Öµ

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
	if bRetSceneID > 0 then
		x600014_NotifyFailTips( sceneId, selfId, "D¸ch chuy¬n thành công!" )
	else
		x600014_NotifyFailTips( sceneId, selfId, "S¯ lßşng bän sao ğã ğªn gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!" )
	end

end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x600014_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )					--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- ´¦ÓÚÎŞ·¨Ö´ĞĞÂß¼­toÕ ğµ ×´Ì¬
		return
	end

	if IsHaveMission( sceneId, leaderObjId, x600014_g_MissionId ) > 0 then			--ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		local misIndex = GetMissionIndexByID( sceneId, leaderObjId, x600014_g_MissionId )

		--½«ÈÎÎñtoÕ ğµ µÚ2ºÅÊı¾İÉèÖÃÎª¸±±¾toÕ ğµ ³¡¾°ºÅ
		SetMissionByIndex( sceneId, leaderObjId, misIndex, x600014_g_Param_sceneid, destsceneId )
		NewWorld( sceneId, leaderObjId, destsceneId, x600014_g_Fuben_X, x600014_g_Fuben_Z )
	end
end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x600014_OnPlayerEnter( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600014_g_MissionId ) == 0 then				--Èç¹û½øÈë¸±±¾Ç°É¾³ıÈÎÎñ,ÔòÖ±½Ó´«ËÍ»Ø
		x600014_NotifyFailTips( sceneId, selfId, "Các hÕ ğã không nh§n nhi®m vø này t× trß¾c" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
		NewWorld( sceneId, selfId, oldsceneId, x600014_g_Back_X, x600014_g_Back_Z )
		return
	end

	local monstercount = GetMonsterCount( sceneId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600014_g_MissionId )
	local KillNumber = GetMissionParam( sceneId, selfId, misIndex, x600014_g_MissionParam_KillNumber )
  
	-- ¸Éµô¶àÓàtoÕ ğµ ¹Ö
	if monstercount > KillNumber then
		local i
		for i = 0, monstercount - KillNumber - 1 do
			LuaFnDeleteMonster( sceneId, GetMonsterObjID( sceneId, i ) )
		end
	end
end

--**********************************
--ÓĞÍæ¼ÒTÕi ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x600014_OnHumanDie( sceneId, selfId, killerId )
	if x600014_g_DeadTrans == 1 then														--ËÀÍöºóC¥n ±»Ç¿ÖÆÌß³ö³¡¾°
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
		NewWorld( sceneId, selfId, oldsceneId, x600014_g_Back_X, x600014_g_Back_Z )
	end
end

--**********************************
--·ÅÆú
--**********************************
function x600014_OnAbandon( sceneId, selfId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600014_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x600014_g_Param_sceneid )

	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
	CallScriptFunction( x600014_g_SciTechScript, "OnAbandon", sceneId, selfId )

	if sceneId == copyscene then											--Èç¹ûTÕi ¸±±¾ÀïÉ¾³ıÈÎÎñ,ÔòÖ±½Ó´«ËÍ»Ø
		x600014_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
		NewWorld( sceneId, selfId, oldsceneId, x600014_g_Back_X, x600014_g_Back_Z )
	end
end

--**********************************
-- »Ø³Ç,Ö»ÓĞThành ph¯ ÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x600014_BackToCity( sceneId, selfId )
	--changed by xindefeng
	--¸±±¾ĞÂ»úÖÆ:¼ûx600014_AcceptEnterCopyScene()
	--CallScriptFunction( x600014_g_CityMissionScript, "BackToCity", sceneId, selfId, x600014_g_MissionId, x600014_g_Back_X, x600014_g_Back_Z )
	
	--±¾ÏëĞŞ¸Äx600014_g_CityMissionScripttoÕ ğµ x600014_BackToCity()º¯Êı,µ«ÅÂÒıÓ giâyütoÕ ğµ ½Å±¾Ì«¶à,ËùÒÔ±¾½Å±¾²»ÒıÓÃ
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )					--È¡ ği¬m½øÈë¸±±¾Ê±ËùTÕi ³¡¾°ºÅ
	CallScriptFunction( 400900, "TransferFunc", sceneId, selfId, oldsceneId, x600014_g_Back_X, x600014_g_Back_Z )	--´«ËÍ
end

--**********************************
--¼ÌĞø
--**********************************
function x600014_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600014_g_MissionName )
		AddText( sceneId, x600014_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600014_g_ScriptId, x600014_g_MissionId )
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600014_CheckSubmit( sceneId, selfId, selectRadioId )
	--ÅĞ¶ÏÈÎÎñĞúng·ñÒÑ¾­Íê³É
	local ret = CallScriptFunction( x600014_g_SciTechScript, "CheckSubmit", sceneId, selfId )
	return ret
end

--**********************************
--Ìá½»
--**********************************
function x600014_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600014_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	if x600014_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600014_g_SciTechScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x600014_OnKillObject( sceneId, selfId, objdataId, objId )
	if IsHaveMission( sceneId, selfId, x600014_g_MissionId ) == 0 then
		return
	end

	--Ğúng·ñĞúng¸±±¾
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--Ğúng·ñĞúngËùC¥n toÕ ğµ ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x600014_g_CopySceneType then
		return
	end

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														--Èç¹û¸±±¾ÒÑ¾­±»ÖÃ³É¹Ø±Õ×´Ì¬,ÔòÉ±¹ÖÎŞĞ§
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600014_g_MissionId )
	local killedbossnumber = GetMissionParam( sceneId, selfId, misIndex, x600014_g_Param_killcount )	--É±ËÀBosstoÕ ğµ ÊıÁ¿

	killedbossnumber = killedbossnumber + 1
	SetMissionByIndex( sceneId, selfId, misIndex, x600014_g_Param_killcount, killedbossnumber )	--ÉèÖÃÉ±ËÀBosstoÕ ğµ ÊıÁ¿

	local KillNumber = GetMissionParam( sceneId, selfId, misIndex, x600014_g_MissionParam_KillNumber )

	local strText = format( "Ğã giªt chªt: %d/%d", killedbossnumber, KillNumber )
	x600014_NotifyFailTips( sceneId, selfId, strText )

	if killedbossnumber >= KillNumber then
		--ÉèÖÃNhi®m vø hoàn thành±êÖ¾
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )

		strText = format( "Hoàn t¤t nhi®m vø, trong vòng %d giây næa s¨ ğßa ğªn ch² ra vào", x600014_g_CloseTick * x600014_g_TickTime )
		x600014_NotifyFailTips( sceneId, selfId, strText )

		--½«ÈÎÎñtoÕ ğµ µÚ1ºÅÊı¾İÉèÖÃÎª1,±íÊ¾Íê³ÉtoÕ ğµ ÈÎÎñ
		SetMissionByIndex( sceneId, selfId, misIndex, x600014_g_IsMissionOkFail, 1 )	--ÉèÖÃÈÎÎñÊı¾İ
	end
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x600014_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x600014_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x600014_OnCopySceneTimer( sceneId, nowTime )

	--¸±±¾Ê±ÖÓ¶ÁÈ¡¼°ÉèÖÃ
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						--È¡ ği¬mÒÑ¾­Ö´ĞĞtoÕ ğµ ¶¨Ê±´ÎÊı
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							--ÉèÖÃĞÂtoÕ ğµ ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	for i = 0, membercount - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	if leaveFlag == 1 then															--C¥n Àë¿ª
		--Àë¿ªµ¹¼ÆÊ±¼ätoÕ ğµ ¶ÁÈ¡ºÍÉèÖÃ
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount >= x600014_g_CloseTick then										--µ¹¼ÆÊ±¼äµ½,´ó¼Ò¶¼³öÈ¥°É
			local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )			--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ

			--½«µ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòtoÕ ğµ ³¡¾°
			for i = 0, membercount - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					NewWorld( sceneId, mems[i], oldsceneId, x600014_g_Back_X, x600014_g_Back_Z )
				end
			end
		else
			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË,³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local strText = format( "Các hÕ s¨ r¶i khöi n½i này trong vòng %d giây næa", ( x600014_g_CloseTick - leaveTickCount ) * x600014_g_TickTime )

			for i = 0, membercount - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x600014_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	end
end

function x600014_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
