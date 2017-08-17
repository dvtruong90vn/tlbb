--¸±±¾ÈÎÎñ
--Ö¸ ği¬m±¾ÅÉµÜ×Ó

--************************************************************************
--MisDescBegin

--½Å±¾ºÅ
x600025_g_ScriptId = 600025

--ÈÎÎñºÅ
x600025_g_MissionId = 1110

--Ä¿±êNPC
x600025_g_Name = "Ğông Phù Dung"

--ĞÆng c¤p nhi®m vø 
x600025_g_MissionLevel = 10000

--ÈÎÎñ¹éÀà
x600025_g_MissionKind = 50

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x600025_g_IfMissionElite = 0

--********ÏÂÃæ¼¸ÏîĞúng¶¯Ì¬ÏÔÊ¾toÕ ğµ ÄÚÈİ,ÓÃÓÚTÕi ÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
--½ÇÉ«Mission±äÁ¿Ë ği¬m÷
x600025_g_IsMissionOkFail			=0	--0 Nhi®m vø hoàn thành±ê¼Ç[Öµ²»ÄÜ±ä]
x600025_g_MissionParam_SubId		=1	--1 ×ÓÈÎÎñ½Å±¾ºÅ´æ·ÅÎ»ÖÃ[Öµ²»ÄÜ±ä]
x600025_g_MissionParam_KillNumber	=2	--2 C¥n ÏûÃğtoÕ ğµ ¹ÖÎïÊıÁ¿
x600025_g_Param_sceneid				=3	--3ºÅ: µ±Ç°¸±±¾ÈÎÎñtoÕ ğµ ³¡¾°ºÅ
x600025_g_Param_teamid				=4	--4ºÅ: ½Ó¸±±¾ÈÎÎñÊ±ºòtoÕ ğµ ¶ÓÎéºÅ
x600025_g_Param_killcount			=5	--5ºÅ: É±ËÀÈÎÎñ¹ÖtoÕ ğµ ÊıÁ¿
x600025_g_Param_time				=6	--6ºÅ: Íê³É¸±±¾ËùÓÃÊ±¼ä(µ¥Î»:  giây)
--6ºÅ: Î´ÓÃ
--7ºÅ: Î´ÓÃ

--Ñ­»·ÈÎÎñtoÕ ğµ Êı¾İË÷Òı,ÀïÃæ´æ×ÅÒÑ×ötoÕ ğµ »·Êı
x600025_g_MissionRound = 55
--**********************************ÒÔÉÏĞúng¶¯Ì¬****************************

--ÈÎÎñÎÄ±¾ÃèÊö
x600025_g_MissionName = "Nhi®m vø khuªch trß½ng"
x600025_g_MissionInfo = ""													--ÈÎÎñÃèÊö
x600025_g_MissionTarget = "    Chï ği¬m · ğây t¤t cä ğ® tØ cüa b±n bang. "					--Møc tiêu nhi®m vø
x600025_g_ContinueInfo = "    Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"						--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x600025_g_SubmitInfo = "    Sñ tình tiªn tri¬n nhß thª nào r°i?"								--Íê³ÉÎ´Ìá½»Ê±toÕ ğµ npc¶Ô»°
x600025_g_MissionComplete = "    XÑng ğáng là ğ® tØ ßu tú cüa b±n bang, ha ha ha. "			--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°

x600025_g_Parameter_Kill_CountRandom = { { id = 300469, numNeeded = 2, numKilled = 5 } }

-- Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600025_g_CityMissionScript = 600001
x600025_g_ExpandScript = 600023
x600025_g_TransScript = 400900

--ÈÎÎñ½±Àø

--MisDescEnd
--************************************************************************

--¸±±¾Ãû³Æ
x600025_g_CopySceneName = "Trß¶ng võ"

x600025_g_CopySceneType = FUBEN_JIAOCHANG	--¸±±¾ÀàĞÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ

x600025_g_CopySceneMap = "jiaochang.nav"
x600025_g_Exit = "jiaochang_area.ini"
x600025_g_LimitMembers = 1				--¿ÉÒÔ½ø¸±±¾toÕ ğµ ×îĞ¡¶ÓÎéÈËÊı
x600025_g_TickTime = 5					--»Øµ÷½Å±¾toÕ ğµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x600025_g_LimitTotalHoldTime = 360		--¸±±¾¿ÉÒÔ´æ»îtoÕ ğµ Ê±¼ä(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x600025_g_LimitTimeSuccess = 500		--¸±±¾Ê±¼äÏŞÖÆ(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,Nhi®m vø hoàn thành
x600025_g_CloseTick = 3					--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊı)
x600025_g_NoUserTime = 300				--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´ætoÕ ğµ Ê±¼ä(µ¥Î»:  giây)
x600025_g_DeadTrans = 0					--ËÀÍö×ªÒÆÄ£Ê½,0: ËÀÍöºó»¹¿ÉÒÔ¼ÌĞøTÕi ¸±±¾,1: ËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x600025_g_MonsterCount = 10				--µÜ×ÓÊıÁ¿
x600025_g_Fuben_X = 31					--½øÈë¸±±¾toÕ ğµ Î»ÖÃX
x600025_g_Fuben_Z = 13					--½øÈë¸±±¾toÕ ğµ Î»ÖÃZ
x600025_g_Back_X = 146					--Ô´³¡¾°Î»ÖÃX
x600025_g_Back_Z = 95					--Ô´³¡¾°Î»ÖÃZ

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x600025_OnDefaultEvent( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600025_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600025_g_MissionId ) > 0 then
		local bDone = x600025_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600025_g_SubmitInfo
		else
			strText = x600025_g_ContinueInfo
		end

		if bDone == 0 then												--ÈÎÎñÎ´Íê³É
			if GetNumText() == 1 then
				x600025_AcceptEnterCopyScene( sceneId, selfId )
			else
				BeginEvent( sceneId )
					AddText( sceneId, x600025_g_MissionName )
					x600025_AskEnterCopyScene( sceneId, selfId )
				EndEvent( )
				DispatchEventList( sceneId, selfId, targetId )
			end
		elseif bDone == 1 then											--ÈÎÎñÒÑ¾­Íê³É
			BeginEvent( sceneId )
				AddText( sceneId, x600025_g_MissionName )
				AddText( sceneId, strText )
			EndEvent( )
			DispatchMissionDemandInfo( sceneId, selfId, targetId, x600025_g_ScriptId, x600025_g_MissionId, bDone )
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x600025_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600025_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600025_OnAccept( sceneId, selfId, targetId )
		end
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x600025_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600025_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

   --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600025_g_MissionId ) > 0 then
		AddNumText( sceneId, x600025_g_ScriptId, x600025_g_MissionName,3,-1 )
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x600025_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600025_g_ExpandScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--Ñ¯ÎÊÍæ¼ÒĞúng·ñÒª½øÈë¸±±¾
--**********************************
function x600025_AskEnterCopyScene( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600025_g_MissionId ) <= 0 then	-- Ã»ÓĞÈÎÎñ
		return
	end

	local missionInfo = format( "    Trß¶ng có mµt vài b÷n ğ® tØ m¾i cüa bang này, các hÕ ği chï bäo h÷ ği." )

	AddText( sceneId, missionInfo )
	AddNumText( sceneId, x600025_g_ScriptId, "Vào trß¶ng", 10, 1 )
end

--**********************************
--Tiªp thø
--**********************************
function x600025_OnAccept( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x600025_g_MissionId ) == 0 then					--Ã»ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		if GetLevel( sceneId, selfId ) < 40 then
			CallScriptFunction( x600025_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Không ğü ğÆng c¤p" )
			return
		end

		--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
		AddMission( sceneId, selfId, x600025_g_MissionId, x600025_g_ScriptId, 1, 0, 0 )	-- kill¡¢area¡¢item
		if IsHaveMission( sceneId, selfId, x600025_g_MissionId ) <= 0 then
			return
		end

		CallScriptFunction( x600025_g_ExpandScript, "OnAccept", sceneId, selfId, targetId, x600025_g_ScriptId )
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600025_g_MissionId )
		SetMissionByIndex( sceneId, selfId, misIndex, x600025_g_MissionParam_KillNumber, x600025_g_MonsterCount )	--C¥n É±ËÀtoÕ ğµ ¹ÖÎïÊıÁ¿,½ö¹©¿Í»§¶ËÊ¹ÓÃ

		--ÏÔÊ¾ÄÚÈİ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
		BeginEvent( sceneId )
			AddText( sceneId, x600025_g_MissionName )
			x600025_AskEnterCopyScene( sceneId, selfId )
			AddText( sceneId, "#rCác hÕ ğã nh§n " .. x600025_g_MissionName )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x600025_AcceptEnterCopyScene( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600025_g_MissionId ) > 0 then					--ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600025_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x600025_g_Param_sceneid )

		--changed by xindefeng
		--¸±±¾ĞÂ»úÖÆ:ÎŞÂÛÊ²Ã´Ô­Òò,TÕi Î´Hoàn t¤t nhi®m vø¶ø³ö¸±±¾,¸±±¾²»¶ÔÍæ¼ÒÉíÉÏtoÕ ğµ ÈÎÎñ×öÈÎºÎ¸Ä¶¯(ÉèÖÃth¤t bÕi»òÕßÉ¾³ıÈÎÎñ),¶øÍæ¼ÒÔÙ½ø¸Ã¸±±¾Ê±,¶¼ÒªÖØĞÂ³õÊ¼»¯ÈÎÎñÊı¾İ,¶øÇÒ¸±±¾¶¼ÒªÖØĞÂ´´½¨
		--if copysceneid >= 0 then												--½ø¹ı¸±±¾
		--	--½«×Ô¼º´«ËÍµ½¸±±¾³¡¾°
		--	if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
		--		NewWorld( sceneId, selfId, copysceneid, x600025_g_Fuben_X, x600025_g_Fuben_Z )
		--		return
		--	end
		--end

		SetMissionByIndex( sceneId, selfId, misIndex, x600025_g_IsMissionOkFail, 0 )	--½«ÈÎÎñtoÕ ğµ µÚ0ºÅÊı¾İÉèÖÃÎª0,±íÊ¾Î´Íê³ÉtoÕ ğµ ÈÎÎñ
		SetMissionByIndex( sceneId, selfId, misIndex, x600025_g_Param_sceneid, -1 )		--½«ÈÎÎñtoÕ ğµ µÚ2ºÅÊı¾İÉèÖÃÎª-1, ÓÃÓÚ±£´æ¸±±¾toÕ ğµ ³¡¾°ºÅ
		
		--add by xindefeng
		SetMissionByIndex( sceneId, selfId, misIndex, x600025_g_Param_killcount, 0 )	--½«ÈÎÎñtoÕ ğµ µÚ5ºÅÊı¾İÉèÖÃÎª0, ÉèÖÃÍæ¼ÒÉ±ËÀ¹ÖÎïÊıÁ¿Îª0
		
		x600025_MakeCopyScene( sceneId, selfId )
	end
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x600025_MakeCopyScene( sceneId, selfId )
	local mylevel = GetLevel( sceneId, selfId )

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	LuaFnSetSceneLoad_Map( sceneId, x600025_g_CopySceneMap )						--µØÍ¼Ğúng±ØĞëÑ¡È¡toÕ ğµ ,¶øÇÒ±ØĞëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x600025_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x600025_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, x600025_g_CopySceneType )				--ÉèÖÃ¸±±¾Êı¾İ,ÕâÀï½«0ºÅË÷ÒıtoÕ ğµ Êı¾İÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param( sceneId, 1, x600025_g_ScriptId )					--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, 7, x600025_g_MonsterCount )				--Ê£ÓàµÜ×ÓtoÕ ğµ ÊıÁ¿

	local PlayerMaxLevel = GetHumanMaxLevelLimit() --modi:lby20071127
	
	local iniLevel
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end

	LuaFnSetSceneLoad_Area( sceneId, x600025_g_Exit )
	LuaFnSetSceneLoad_Monster( sceneId, "jiaochang_monster_" .. iniLevel .. ".ini" )

	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --c¤p±ğ²î,CopyScene_LevelGap TÕi  scene.lua ÖĞ¸³Öµ

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
	if bRetSceneID > 0 then
		x600025_NotifyFailTips( sceneId, selfId, "D¸ch chuy¬n thành công!" )
	else
		x600025_NotifyFailTips( sceneId, selfId, "S¯ lßşng bän sao ğã ğªn gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!" )
	end

end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x600025_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )					--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- ´¦ÓÚÎŞ·¨Ö´ĞĞÂß¼­toÕ ğµ ×´Ì¬
		return
	end

	if IsHaveMission( sceneId, leaderObjId, x600025_g_MissionId ) > 0 then			--ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		local misIndex = GetMissionIndexByID( sceneId, leaderObjId, x600025_g_MissionId )

		--½«ÈÎÎñtoÕ ğµ µÚ3ºÅÊı¾İÉèÖÃÎª¸±±¾toÕ ğµ ³¡¾°ºÅ
		SetMissionByIndex( sceneId, leaderObjId, misIndex, x600025_g_Param_sceneid, destsceneId )
		NewWorld( sceneId, leaderObjId, destsceneId, x600025_g_Fuben_X, x600025_g_Fuben_Z )
	end
end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x600025_OnPlayerEnter( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600025_g_MissionId ) == 0 then				--Èç¹û½øÈë¸±±¾Ç°É¾³ıÈÎÎñ,ÔòÖ±½Ó´«ËÍ»Ø
		x600025_NotifyFailTips( sceneId, selfId, "Các hÕ ğã không nh§n nhi®m vø này t× trß¾c" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
		NewWorld( sceneId, selfId, oldsceneId, x600025_g_Back_X, x600025_g_Back_Z )
		return
	end
end

--**********************************
--ÓĞÍæ¼ÒTÕi ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x600025_OnHumanDie( sceneId, selfId, killerId )
	if x600025_g_DeadTrans == 1 then														--ËÀÍöºóC¥n ±»Ç¿ÖÆÌß³ö³¡¾°
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
		NewWorld( sceneId, selfId, oldsceneId, x600025_g_Back_X, x600025_g_Back_Z )
	end
end

--**********************************
--·ÅÆú
--**********************************
function x600025_OnAbandon( sceneId, selfId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600025_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x600025_g_Param_sceneid )

	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
	CallScriptFunction( x600025_g_ExpandScript, "OnAbandon", sceneId, selfId )

	if sceneId == copyscene then											--Èç¹ûTÕi ¸±±¾ÀïÉ¾³ıÈÎÎñ,ÔòÖ±½Ó´«ËÍ»Ø
		x600025_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
		NewWorld( sceneId, selfId, oldsceneId, x600025_g_Back_X, x600025_g_Back_Z )
	end
end

--**********************************
-- »Ø³Ç,Ö»ÓĞThành ph¯ ÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x600025_BackToCity( sceneId, selfId )
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )					--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
	CallScriptFunction( x600025_g_TransScript, "TransferFunc", sceneId, selfId, oldsceneId, x600025_g_Back_X, x600025_g_Back_Z )
end

--**********************************
--¼ÌĞø
--**********************************
function x600025_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600025_g_MissionName )
		AddText( sceneId, x600025_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600025_g_ScriptId, x600025_g_MissionId )
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600025_CheckSubmit( sceneId, selfId, selectRadioId )
	--ÅĞ¶ÏÈÎÎñĞúng·ñÒÑ¾­Íê³É
	local ret = CallScriptFunction( x600025_g_ExpandScript, "CheckSubmit", sceneId, selfId )
	return ret
end

--**********************************
--Ìá½»
--**********************************
function x600025_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600025_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	if x600025_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600025_g_ExpandScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x600025_OnKillObject( sceneId, selfId, objdataId, objId )
	if IsHaveMission( sceneId, selfId, x600025_g_MissionId ) == 0 then
		return
	end

	--Ğúng·ñĞúng¸±±¾
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600025_g_MissionId )

	--Ğúng·ñĞúngËùC¥n toÕ ğµ ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x600025_g_CopySceneType then
		return
	end

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														--Èç¹û¸±±¾ÒÑ¾­±»ÖÃ³É¹Ø±Õ×´Ì¬,ÔòÉ±¹ÖÎŞĞ§
		return
	end

	local monstercount = LuaFnGetCopySceneData_Param( sceneId, 7 )
	monstercount = monstercount - 1
	LuaFnSetCopySceneData_Param( sceneId, 7, monstercount )						--Ê£ÓàµÜ×ÓtoÕ ğµ ÊıÁ¿
	SetMissionByIndex( sceneId, selfId, misIndex, x600025_g_Param_killcount, x600025_g_MonsterCount - monstercount )	--ÒÑÉ±ËÀtoÕ ğµ ¹ÖÎïÊıÁ¿,½ö¹©¿Í»§¶ËÊ¹ÓÃ

	local strText

	if monstercount > 0 then
		strText = format( "Còn lÕi %d ğ® tØ", monstercount )
		x600025_NotifyFailTips( sceneId, selfId, strText )
	else
		--ÉèÖÃNhi®m vø hoàn thành±êÖ¾
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )

		strText = format( "Hoàn t¤t nhi®m vø, trong vòng %d giây næa s¨ ğßa ğªn ch² ra vào", x600025_g_CloseTick * x600025_g_TickTime )
		x600025_NotifyFailTips( sceneId, selfId, strText )

		--½«ÈÎÎñtoÕ ğµ µÚ1ºÅÊı¾İÉèÖÃÎª1,±íÊ¾Íê³ÉtoÕ ğµ ÈÎÎñ
		SetMissionByIndex( sceneId, selfId, misIndex, x600025_g_IsMissionOkFail, 1 )	--ÉèÖÃÈÎÎñÊı¾İ
	end
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x600025_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x600025_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x600025_OnCopySceneTimer( sceneId, nowTime )

	--¸±±¾Ê±ÖÓ¶ÁÈ¡¼°ÉèÖÃ
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						--È¡ ği¬mÒÑ¾­Ö´ĞĞtoÕ ğµ ¶¨Ê±´ÎÊı
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							--ÉèÖÃĞÂtoÕ ğµ ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	for i=0, membercount-1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	if leaveFlag == 1 then															--C¥n Àë¿ª
		--Àë¿ªµ¹¼ÆÊ±¼ätoÕ ğµ ¶ÁÈ¡ºÍÉèÖÃ
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount >= x600025_g_CloseTick then										--µ¹¼ÆÊ±¼äµ½,´ó¼Ò¶¼³öÈ¥°É
			local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )			--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ

			--½«µ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòtoÕ ğµ ³¡¾°
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					NewWorld( sceneId, mems[i], oldsceneId, x600025_g_Back_X, x600025_g_Back_Z )
				end
			end
		else
			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË,³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local strText = format( "Các hÕ s¨ r¶i khöi n½i này trong vòng %d giây næa", ( x600025_g_CloseTick - leaveTickCount ) * x600025_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x600025_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	end
end

function x600025_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
