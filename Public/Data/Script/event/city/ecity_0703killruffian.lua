--¸±±¾ÈÎÎñ
--É±ËÀ½¨Éè¹¤µØÑ°ĞÆÍ·Áì

--************************************************************************
--MisDescBegin

--½Å±¾ºÅ
x600039_g_ScriptId = 600039

--ÈÎÎñºÅ
x600039_g_MissionId = 1111

--Ä¿±êNPC
x600039_g_Name = "Tr¸nh Vô Danh"

--ĞÆng c¤p nhi®m vø 
x600039_g_MissionLevel = 10000

--ÈÎÎñ¹éÀà
x600039_g_MissionKind = 50

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x600039_g_IfMissionElite = 0

--********ÏÂÃæ¼¸ÏîĞúng¶¯Ì¬ÏÔÊ¾toÕ ğµ ÄÚÈİ,ÓÃÓÚTÕi ÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
--½ÇÉ«Mission±äÁ¿Ë ği¬m÷

x600039_g_IsMissionOkFail			=0	--0 Nhi®m vø hoàn thành±ê¼Ç
x600039_g_MissionParam_SubId		=1	--1 ×ÓÈÎÎñ½Å±¾ºÅ´æ·ÅÎ»ÖÃ
x600039_g_Param_sceneid				=2	--2 µ±Ç°¸±±¾ÈÎÎñtoÕ ğµ ³¡¾°ºÅ
x600039_g_MissionParam_BossIndex	=3	--3 Ä³ Boss toÕ ğµ TênË÷Òı
x600039_g_Param_Killed				=4	--4 ÒÑÉ±ËÀtoÕ ğµ ÊıÁ¿
x600039_g_Param_Needed				=5	--5 ĞèÉ±ËÀtoÕ ğµ ÊıÁ¿

--Ñ­»·ÈÎÎñtoÕ ğµ Êı¾İË÷Òı,ÀïÃæ´æ×ÅÒÑ×ötoÕ ğµ »·Êı
x600039_g_MissionRound = 59
--**********************************ÒÔÉÏĞúng¶¯Ì¬****************************

--ÈÎÎñÎÄ±¾ÃèÊö
x600039_g_MissionName = "Xây dñng nhi®m vø"
x600039_g_MissionInfo = ""													--ÈÎÎñÃèÊö
x600039_g_MissionTarget = "    Tìm ğßşc %s mà giang h° xßng là thü lînh và là tên c¥m ğ¥u cüa b÷n gây sñ ğ°ng th¶i giªt chªt h¡n."				--Møc tiêu nhi®m vø
x600039_g_ContinueInfo = "    Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"						--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x600039_g_SubmitInfo = "    Sñ tình tiªn tri¬n nhß thª nào r°i?"								--Íê³ÉÎ´Ìá½»Ê±toÕ ğµ npc¶Ô»°
x600039_g_MissionComplete = "    R¤t t¯t r¤t t¯t, tiªn ğµ xây dñng lÕi tång nhanh r°i. "			--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°

x600039_g_Parameter_Kill_CountRandom = { { id = 300471, numNeeded = 5, numKilled = 4 } }

x600039_g_StrForePart = 3

x600039_g_StrList = {
	[0 ] = "",
	[1 ] = "Ti¬u Thái Tuª",
	[2 ] = "Hàn Thái Tuª",
	[3 ] = "HoÕt Thái Tuª",
	[4 ] = "B®nh Thái Tuª",
	[5 ] = "Ğang Trñc Thái tuª",
	[6 ] = "Thanh Di®n Thái Tuª",
	[7 ] = "Huyªt Thü Thái Tuª",
	[8 ] = "Bát Di®n Thái Tuª",
	[9 ] = "Ác Thü Diêm La",
	[10] = "Ti¬u Diêm La",
	[11] = "Hàn Diêm La",
	[12] = "HoÕt Diêm La",
	[13] = "B®nh Diêm La",
	[14] = "CØu Ğ¥u Diêm La",
	[15] = "Kim Nhãn Diêm La",
	[16] = "Kim chß·ng Diêm La",
	[17] = "Thiªt Quy«n Bá Vß½ng",
	[18] = "Bát Bá Vß½ng",
	[19] = "B®nh Bá Vß½ng",
	[20] = "Ti¬u Bá Vß½ng",
	[21] = "TrÕi Bá Vß½ng",
	[22] = "HoÕt Bá Vß½ng",
}

-- Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600039_g_CityMissionScript = 600001
x600039_g_ConstructionScript = 600035

--ÈÎÎñ½±Àø

--MisDescEnd
--************************************************************************

--¸±±¾Ãû³Æ
x600039_g_CopySceneName = "Công ğ¸a"

x600039_g_CopySceneType = FUBEN_GONGDI	--¸±±¾ÀàĞÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ

x600039_g_CopySceneMap = "gongdi.nav"
x600039_g_Exit = "gongdi_area.ini"

x600039_g_MonsterCount = 10				--¹ÖÎïÊıÁ¿

x600039_g_TickTime = 5					--»Øµ÷½Å±¾toÕ ğµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x600039_g_CloseTick = 3					--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊı)
x600039_g_NoUserTime = 120				--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´ætoÕ ğµ Ê±¼ä(µ¥Î»:  giây)

x600039_g_BossGroupId = 51				--boss¹Ö
x600039_g_Fuben_X = 32					--½øÈë¸±±¾toÕ ğµ Î»ÖÃX
x600039_g_Fuben_Z = 50					--½øÈë¸±±¾toÕ ğµ Î»ÖÃZ
x600039_g_Back_X = 100					--Ô´³¡¾°Î»ÖÃX
x600039_g_Back_Z = 57					--Ô´³¡¾°Î»ÖÃZ

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x600039_OnDefaultEvent( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600039_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600039_g_MissionId ) > 0 then
		local bDone = x600039_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600039_g_SubmitInfo
		else
			strText = x600039_g_ContinueInfo
		end

		local misIndex = GetMissionIndexByID( sceneId, selfId, x600039_g_MissionId )

		if bDone == 0 then				--ÈÎÎñÎ´Íê³É
			if GetNumText() == 1 then	-- ÕâÀïĞúng ği¬m»÷½øÈë¸±±¾
				x600039_AcceptEnterCopyScene( sceneId, selfId )
				return
			end

			BeginEvent( sceneId )		-- ÏÔÊ¾ÈÎÎñ½ÓÈ¡½çÃæ
				AddText( sceneId, x600039_g_MissionName )
				x600039_AskEnterCopyScene( sceneId, selfId )
			EndEvent( )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end

		BeginEvent( sceneId )
			AddText( sceneId, x600039_g_MissionName )
			AddText( sceneId, strText )
		EndEvent( )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600039_g_ScriptId, x600039_g_MissionId, bDone )

	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x600039_CheckAccept( sceneId, selfId ) > 0 then
		x600039_OnAccept( sceneId, selfId, targetId )
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x600039_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600039_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

   --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600039_g_MissionId ) > 0 then
		AddNumText( sceneId, x600039_g_ScriptId, x600039_g_MissionName,3,-1 )
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x600039_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600039_g_ConstructionScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--Ñ¯ÎÊÍæ¼ÒĞúng·ñÒª½øÈë¸±±¾
--**********************************
function x600039_AskEnterCopyScene( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600039_g_MissionId ) <= 0 then	-- Ã»ÓĞÈÎÎñ
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600039_g_MissionId )
	local BossIndex = GetMissionParam( sceneId, selfId, misIndex, x600039_g_MissionParam_BossIndex )
	local missionInfo = format( "    Các hÕ ğªn ğúng lúc quá, th¶i gian g¥n ğây hi®n trß¶ng xây dñng thß¶ng xuyên có mµt ğám ngß¶i tìm c¾ gây chuy®n, kë c¥m ğ¥u ğám giang h° xßng là %s, nhi®m vø cüa các hÕ là phäi giäi quyªt kë c¥m ğ¥u %s, các hÕ phäi c¯ lên.",
		x600039_g_StrList[BossIndex], GetName( sceneId, selfId ) )

	AddText( sceneId, missionInfo )

	AddNumText( sceneId, x600039_g_ScriptId, "Vào công trß¶ng", 10, 1 )
end

--**********************************
--Tiªp thø
--**********************************
function x600039_OnAccept( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x600039_g_MissionId ) == 0 then					--Ã»ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		if GetLevel( sceneId, selfId ) < 10 then
			CallScriptFunction( x600039_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Không ğü ğÆng c¤p" )
			return
		end

		--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
		AddMission( sceneId, selfId, x600039_g_MissionId, x600039_g_ScriptId, 1, 0, 0 )	-- kill¡¢area¡¢item
		if IsHaveMission( sceneId, selfId, x600039_g_MissionId ) <= 0 then
			return
		end

		CallScriptFunction( x600039_g_ConstructionScript, "OnAccept", sceneId, selfId, targetId, x600039_g_ScriptId )
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600039_g_MissionId )

		--PrintStr( "The count of x600039_g_StrList should be 22, the actual value is " .. getn(x600039_g_StrList) )
		-- Ëæ»úmµt cáiÃÅÅÉ
		local BossIndex = random( getn(x600039_g_StrList) )

		SetMissionByIndex( sceneId, selfId, misIndex, x600039_g_MissionParam_BossIndex, BossIndex )
		SetMissionByIndex( sceneId, selfId, misIndex, x600039_g_Param_Needed, x600039_g_MonsterCount )		-- ½ö¹©¿Í»§¶ËÊ¹ÓÃ

		--ÏÔÊ¾ÄÚÈİ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
		BeginEvent( sceneId )
			AddText( sceneId, x600039_g_MissionName )
			x600039_AskEnterCopyScene( sceneId, selfId )
			AddText( sceneId, "#rCác hÕ ğã nh§n " .. x600039_g_MissionName )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x600039_AcceptEnterCopyScene( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600039_g_MissionId ) > 0 then					--ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600039_g_MissionId )
		--local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x600039_g_Param_sceneid )

		--if copysceneid >= 0 and GetMissionParam( sceneId, selfId, misIndex, x600039_g_IsMissionOkFail ) == 0 then												--½ø¹ı¸±±¾
		--	--½«×Ô¼º´«ËÍµ½¸±±¾³¡¾°
		--	if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
		--		NewWorld( sceneId, selfId, copysceneid, x600039_g_Fuben_X, x600039_g_Fuben_Z )
		--		return
		--	end
		--end

		SetMissionByIndex( sceneId, selfId, misIndex, x600039_g_IsMissionOkFail, 0 )	--½«ÈÎÎñtoÕ ğµ µÚ0ºÅÊı¾İÉèÖÃÎª0,±íÊ¾Î´Íê³ÉtoÕ ğµ ÈÎÎñ
		SetMissionByIndex( sceneId, selfId, misIndex, x600039_g_Param_sceneid, -1 )		--½«ÈÎÎñtoÕ ğµ µÚ2ºÅÊı¾İÉèÖÃÎª-1, ÓÃÓÚ±£´æ¸±±¾toÕ ğµ ³¡¾°ºÅ
		x600039_MakeCopyScene( sceneId, selfId )
	end
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x600039_MakeCopyScene( sceneId, selfId )
	local mylevel = GetLevel( sceneId, selfId )

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	LuaFnSetSceneLoad_Map( sceneId, x600039_g_CopySceneMap )						--µØÍ¼Ğúng±ØĞëÑ¡È¡toÕ ğµ ,¶øÇÒ±ØĞëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x600039_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x600039_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, x600039_g_CopySceneType )				--ÉèÖÃ¸±±¾Êı¾İ,ÕâÀï½«0ºÅË÷ÒıtoÕ ğµ Êı¾İÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param( sceneId, 1, x600039_g_ScriptId )					--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, 6, 0 )							--Ğúng·ñĞã giªt chªt ÁËboss
	LuaFnSetCopySceneData_Param( sceneId, 7, x600039_g_MonsterCount )				--Ê£ÓàµÜ×ÓtoÕ ğµ ÊıÁ¿

 local PlayerMaxLevel = GetHumanMaxLevelLimit() --modi:lby20071127
 
	local iniLevel
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end

	LuaFnSetSceneLoad_Area( sceneId, x600039_g_Exit )
	LuaFnSetSceneLoad_Monster( sceneId, "gongdi_monster_" .. iniLevel .. ".ini" )

	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --c¤p±ğ²î,CopyScene_LevelGap TÕi  scene.lua ÖĞ¸³Öµ

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
	if bRetSceneID > 0 then
		x600039_NotifyFailTips( sceneId, selfId, "D¸ch chuy¬n thành công!" )
	else
		x600039_NotifyFailTips( sceneId, selfId, "S¯ lßşng bän sao ğã ğªn gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!" )
	end

end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x600039_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )					--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- ´¦ÓÚÎŞ·¨Ö´ĞĞÂß¼­toÕ ğµ ×´Ì¬
		return
	end

	if IsHaveMission( sceneId, leaderObjId, x600039_g_MissionId ) > 0 then			--ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		local misIndex = GetMissionIndexByID( sceneId, leaderObjId, x600039_g_MissionId )

		--½«ÈÎÎñtoÕ ğµ µÚ2ºÅÊı¾İÉèÖÃÎª¸±±¾toÕ ğµ ³¡¾°ºÅ
		SetMissionByIndex( sceneId, leaderObjId, misIndex, x600039_g_Param_sceneid, destsceneId )
		NewWorld( sceneId, leaderObjId, destsceneId, x600039_g_Fuben_X, x600039_g_Fuben_Z )
	end
end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x600039_OnPlayerEnter( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600039_g_MissionId ) == 0 then				--Èç¹û½øÈë¸±±¾Ç°É¾³ıÈÎÎñ,ÔòÖ±½Ó´«ËÍ»Ø
		x600039_NotifyFailTips( sceneId, selfId, "Các hÕ ğã không nh§n nhi®m vø này t× trß¾c" )
		x600039_BackToCity( sceneId, selfId )
		return
	end

	local monstercount = GetMonsterCount( sceneId )
	local monsterId, i
	for i = 0, monstercount - 1 do
		-- ÕÒµ½ Boss = monsterId
		monsterId = GetMonsterObjID( sceneId, i )
		local GroupID = GetMonsterGroupID( sceneId, monsterId )
		if GroupID == x600039_g_BossGroupId then
			local misIndex = GetMissionIndexByID( sceneId, selfId, x600039_g_MissionId )
			local BossIndex = GetMissionParam( sceneId, selfId, misIndex, x600039_g_MissionParam_BossIndex )
			SetCharacterName( sceneId, monsterId, x600039_g_StrList[BossIndex] )
			break
		end
	end
	
	-- hongyu
	-- TÕi Íæ¼Ò½øÈë³¡¾°toÕ ğµ Ê±ºò,°ÑÍæ¼ÒtoÕ ğµ Ïà¹ØÈÎÎñÉ±ÈËÊıÉèÖÃÎª 1
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600039_g_MissionId )
	SetMissionByIndex( sceneId, selfId, misIndex, x600039_g_Param_Killed, 0 )	--ÉèÖÃÈÎÎñÊı¾İ
	-- end
end

--**********************************
--ÓĞÍæ¼ÒTÕi ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x600039_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--·ÅÆú
--**********************************
function x600039_OnAbandon( sceneId, selfId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600039_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x600039_g_Param_sceneid )

	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
	CallScriptFunction( x600039_g_ConstructionScript, "OnAbandon", sceneId, selfId )

	if sceneId == copyscene then											--Èç¹ûTÕi ¸±±¾ÀïÉ¾³ıÈÎÎñ,ÔòÖ±½Ó´«ËÍ»Ø
		x600039_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )
		x600039_BackToCity( sceneId, selfId )
	end
end

--**********************************
-- »Ø³Ç,Ö»ÓĞThành ph¯ ÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x600039_BackToCity( sceneId, selfId )
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )					--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
	NewWorld( sceneId, selfId, oldsceneId, x600039_g_Back_X, x600039_g_Back_Z )
end

--**********************************
--¼ÌĞø
--**********************************
function x600039_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600039_g_MissionName )
		AddText( sceneId, x600039_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600039_g_ScriptId, x600039_g_MissionId )
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600039_CheckSubmit( sceneId, selfId, selectRadioId )
	--ÅĞ¶ÏÈÎÎñĞúng·ñÒÑ¾­Íê³É
	local ret = CallScriptFunction( x600039_g_ConstructionScript, "CheckSubmit", sceneId, selfId )
	return ret
end

--**********************************
--Ìá½»
--**********************************
function x600039_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600039_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	if x600039_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600039_g_ConstructionScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x600039_OnKillObject( sceneId, selfId, objdataId, objId )
	if IsHaveMission( sceneId, selfId, x600039_g_MissionId ) == 0 then
		return
	end

	--Ğúng·ñĞúng¸±±¾
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600039_g_MissionId )

	--Ğúng·ñĞúngËùC¥n toÕ ğµ ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x600039_g_CopySceneType then
		return
	end

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														--Èç¹û¸±±¾ÒÑ¾­±»ÖÃ³É¹Ø±Õ×´Ì¬,ÔòÉ±¹ÖÎŞĞ§
		return
	end

	local monstercount = GetMissionParam( sceneId, selfId, misIndex, x600039_g_Param_Killed )
	monstercount = monstercount + 1
	SetMissionByIndex( sceneId, selfId, misIndex, x600039_g_Param_Killed, monstercount )	--ÉèÖÃÈÎÎñÊı¾İ

	local strText = format( "Ğã giªt chªt tên gây sñ: %d/%d", monstercount, x600039_g_MonsterCount )
	x600039_NotifyFailTips( sceneId, selfId, strText )

	if monstercount >= x600039_g_MonsterCount then
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )

		strText = format( "Hoàn t¤t nhi®m vø, trong vòng %d giây næa s¨ ğßa ğªn ch² ra vào", x600039_g_CloseTick * x600039_g_TickTime )

		--½«ÈÎÎñtoÕ ğµ µÚ1ºÅÊı¾İÉèÖÃÎª1,±íÊ¾Íê³ÉtoÕ ğµ ÈÎÎñ
		SetMissionByIndex( sceneId, selfId, misIndex, x600039_g_IsMissionOkFail, 1 )	--ÉèÖÃÈÎÎñÊı¾İ

		x600039_NotifyFailTips( sceneId, selfId, strText )
	end
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x600039_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x600039_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x600039_OnCopySceneTimer( sceneId, nowTime )

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

		if leaveTickCount >= x600039_g_CloseTick then										--µ¹¼ÆÊ±¼äµ½,´ó¼Ò¶¼³öÈ¥°É
			--½«µ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòtoÕ ğµ ³¡¾°
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x600039_BackToCity( sceneId, mems[i] )
				end
			end
		else
			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË,³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local strText = format( "Các hÕ s¨ r¶i khöi n½i này trong vòng %d giây næa", ( x600039_g_CloseTick - leaveTickCount ) * x600039_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x600039_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	end
end

function x600039_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
