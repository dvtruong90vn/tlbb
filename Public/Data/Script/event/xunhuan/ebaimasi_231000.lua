--¸±±¾ÈÎÎñ
--ThuÖ lao

--************************************************************************
--MisDescBegin

--½Å±¾ºÅ
x231000_g_ScriptId = 231000

--¸±±¾Ãû³Æ
x231000_g_CopySceneName="ThuÖ Lao"

--ÈÎÎñºÅ
x231000_g_MissionId = 4012

--ÉÏmµt cáiÈÎÎñtoÕ ğµ ID
x231000_g_MissionIdPre = 4011

--Ä¿±êNPC
x231000_g_Name = "Dß½ng Tranh"

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x231000_g_IfMissionElite = 1

--ĞÆng c¤p nhi®m vø 
x231000_g_MissionLevel = 10000

--ÈÎÎñ¹éÀà
x231000_g_MissionKind = 1

--ÈÎÎñÎÄ±¾ÃèÊö
x231000_g_MissionName="ThuÖ lao"
x231000_g_MissionInfo="Trong thuÖ lao có 10 tên PhÕm Nhân Ğ¥u Møc vô cùng hung hãn, chï c¥n giªt sÕch chúng, thì có th¬ tr¸ phøc t¤t cä các phÕm nhân khác. "  --ÈÎÎñÃèÊö
x231000_g_MissionTarget="Giªt chªt 10 tên PhÕm Nhân Ğ¥u Møc"	--Møc tiêu nhi®m vø
x231000_g_ContinueInfo="Các hÕ ğã giªt chªt 10 tên PhÕm Nhân Ğ¥u Møc chßa ?"	--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x231000_g_MissionComplete="R¯t cuµc ThuÖ lao ğã ğßşc giæ væng, sau này chúng ta tuy®t ğ¯i không ğßşc l½ là"	--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°

--ÈÎÎñ½±Àø
x231000_g_MoneyBonus=5000

--********ÏÂÃæ¼¸ÏîĞúng¶¯Ì¬ÏÔÊ¾toÕ ğµ ÄÚÈİ,ÓÃÓÚTÕi ÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
--Ñ­»·ÈÎÎñtoÕ ğµ Êı¾İË÷Òı,ÀïÃæ´æ×ÅÒÑ×ötoÕ ğµ »·Êı MD_SHUILAO_HUAN
--ÈÎÎñĞúng·ñÒÑ¾­Íê³É
--MissionRound =
--**********************************ÒÔÉÏĞúng¶¯Ì¬****************************
--½ÇÉ«Mission±äÁ¿Ë ği¬m÷
x231000_g_IsMissionOkFail	= 0	--0ºÅ: µ±Ç°ÈÎÎñĞúng·ñÍê³É(0Î´Íê³É£»1Íê³É)
x231000_g_MissionRound		= 5	--Define MD_BAIMASI_HUAN from ScriptGlobal.lua
x231000_g_DemandKill			= { {id=367,num=10} }
x231000_g_Param_killcount	= 1	--1ºÅ: É±ËÀÈÎÎñ¹ÖtoÕ ğµ ÊıÁ¿
x231000_g_Param_sceneid		= 2	--2ºÅ: µ±Ç°¸±±¾ÈÎÎñtoÕ ğµ ³¡¾°ºÅ
x231000_g_Param_teamid		= 3	--3ºÅ: ½Ó¸±±¾ÈÎÎñÊ±ºòtoÕ ğµ ¶ÓÎéºÅ
x231000_g_Param_time			= 4	--4ºÅ: Íê³É¸±±¾ËùÓÃÊ±¼ä(µ¥Î»:  giây)
--6ºÅ: ¾ßÌå¸±±¾ÊÂ¼ş½Å±¾Õ¼ÓÃ
--7ºÅ: ¾ßÌå¸±±¾ÊÂ¼ş½Å±¾Õ¼ÓÃ
--MisDescEnd
--************************************************************************

x231000_g_CopySceneType=FUBEN_SHUILAO	--¸±±¾ÀàĞÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ
x231000_g_LimitMembers=1			--¿ÉÒÔ½ø¸±±¾toÕ ğµ ×îĞ¡¶ÓÎéÈËÊı
x231000_g_TickTime=5				--»Øµ÷½Å±¾toÕ ğµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x231000_g_LimitTotalHoldTime=360	--¸±±¾¿ÉÒÔ´æ»îtoÕ ğµ Ê±¼ä(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x231000_g_LimitTimeSuccess=500		--¸±±¾Ê±¼äÏŞÖÆ(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÈÎÎñÍê³É
x231000_g_CloseTick=6				--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊı)
x231000_g_NoUserTime=300			--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´ætoÕ ğµ Ê±¼ä(µ¥Î»:  giây)
x231000_g_Fuben_X=95				--½øÈë¸±±¾toÕ ğµ Î»ÖÃX
x231000_g_Fuben_Z=89				--½øÈë¸±±¾toÕ ğµ Î»ÖÃZ
x231000_g_Back_X=234				--Ô´³¡¾°Î»ÖÃX
x231000_g_Back_Z=69					--Ô´³¡¾°Î»ÖÃZ
x231000_g_NeedMonsterGroupID=1		--C¥n É±ËÀtoÕ ğµ BosstoÕ ğµ GroupID
x231000_g_TotalNeedKillBoss=10		--C¥n É±ËÀBossÊıÁ¿

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x231000_OnDefaultEvent( sceneId, selfId, targetId )

	if GetName( sceneId, targetId ) ~= x231000_g_Name then						--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	if IsHaveMission( sceneId, selfId, x231000_g_MissionId ) > 0 then			--Èç¹ûÍæ¼ÒÒÑ¾­½ÓÁËCái này ÈÎÎñ
		local misIndex = GetMissionIndexByID( sceneId, selfId, x231000_g_MissionId )
		local bDone = x231000_CheckSubmit( sceneId, selfId )
		if bDone == 0 then												--ÈÎÎñÎ´Íê³É
			BeginEvent( sceneId )
				AddText( sceneId, x231000_g_MissionName )
				AddText( sceneId, "Chu¦n b¸ xong chßa?" )
			EndEvent( )
			DispatchMissionInfo( sceneId, selfId, targetId, x231000_g_ScriptId, x231000_g_MissionId )
		elseif bDone == 1 then											--ÈÎÎñÒÑ¾­Íê³É
			BeginEvent( sceneId )
				AddText( sceneId, x231000_g_MissionName )
				AddText( sceneId, x231000_g_ContinueInfo )
				AddMoneyBonus( sceneId, x231000_g_MoneyBonus )
			EndEvent( )
			DispatchMissionDemandInfo( sceneId, selfId, targetId, x231000_g_ScriptId, x231000_g_MissionId, bDone )
		end
--elseif x231000_CheckAccept( sceneId, selfId ) > 0 then						--Ã»ÓĞÈÎÎñ,Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	else
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
		BeginEvent( sceneId )
			AddText( sceneId, x231000_g_MissionName )
			AddText( sceneId, x231000_g_MissionInfo )
			AddText( sceneId, "Møc tiêu nhi®m vø: " )
			AddText( sceneId, x231000_g_MissionTarget )
			AddText( sceneId, " " )
			AddMoneyBonus( sceneId, x231000_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo( sceneId, selfId, targetId, x231000_g_ScriptId, x231000_g_MissionId )
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x231000_OnEnumerate( sceneId, selfId, targetId )
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ»òÕßThöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
--if IsHaveMission( sceneId, selfId, x231000_g_MissionId ) > 0 or x231000_CheckAccept( sceneId, selfId ) > 0 then
	if IsHaveMission( sceneId, selfId, x231000_g_MissionIdPre ) == 0 then
		x231000_MsgBox( sceneId, selfId, targetId, "  ĞÕi sß Trí Thanh cüa BÕch Mã Tñ ğang ğşi ngß½i!" )
		return
	else
		local	misIndex	= GetMissionIndexByID( sceneId, selfId, x231000_g_MissionIdPre )
		if GetMissionParam( sceneId, selfId, misIndex, x231000_g_IsMissionOkFail ) == 1 then
			x231000_MsgBox( sceneId, selfId, targetId, "  Ngß½i có th¬ quay v« BÕch Mã Tñ tìm ĞÕi sß Trí Thanh lînh t£ng thß·ng!" )
			return
		end
	end
	
	AddNumText( sceneId, x231000_g_ScriptId, x231000_g_MissionName,4,-1 )
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x231000_CheckAccept( sceneId, selfId )
	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		x231000_NotifyFailTips( sceneId, selfId, "Các hÕ phäi gia nh§p vào mµt ğµi ngû" )
		return 0
	end

	if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then
		x231000_NotifyFailTips( sceneId, selfId, "Ngß¶i không phäi là nhóm trß·ng" )
		return 0
	end

	--È¡ ği¬mÍæ¼Ò¸½½ütoÕ ğµ ¶ÓÓÑÊıÁ¿(°üÀ¨×Ô¼º)
	local nearteammembercount = GetNearTeamCount( sceneId, selfId )
	if nearteammembercount ~= LuaFnGetTeamSize( sceneId, selfId ) then
		x231000_NotifyFailTips( sceneId, selfId, "Ngß½i có nhóm viên không · g¥n ğây" )
		return 0
	end

	if nearteammembercount < x231000_g_LimitMembers then
		x231000_NotifyFailTips( sceneId, selfId, "S¯ ngß¶i trong ğµi ngû cüa các hÕ không ğü" )
		return 0
	end

	--¼ì²âĞ¡¶ÓÖĞĞúng·ñÓĞÈËÈÎÎñ¼ÇÂ¼ÒÑÂú, ¶ÓÓÑĞúng·ñÒÑ¾­½Ó¹ı´ËÈÎÎñ
	local member
	local i
	local misIndex

	for	i=0, nearteammembercount-1 do
		member = GetNearTeamMember( sceneId, selfId, i )

		if IsHaveMission( sceneId, member, x231000_g_MissionIdPre ) <= 0 then
			x231000_NotifyFailTips( sceneId, selfId, "Trong nhóm có ngß¶i chßa nh§n nhi®m vø BÕch Mã Tñ" )
			return 0
		end

		misIndex = GetMissionIndexByID( sceneId, member, x231000_g_MissionIdPre )
		if GetMissionParam( sceneId, member, misIndex, 6 ) ~= 1 then
			x231000_NotifyFailTips( sceneId, selfId, "Trong nhóm có ngß¶i ğã nhi®m vø BÕch Mã Tñ" )
			return 0
		end

		if GetMissionParam( sceneId, member, misIndex, x231000_g_IsMissionOkFail ) == 1 then
			x231000_NotifyFailTips( sceneId, selfId, "Trong nhóm có ngß¶i ğã Hoàn t¤t nhi®m vø này" )
			return 0
		end

		if GetMissionCount( sceneId, member ) >= 20 then						--¶ÓÓÑÉíÉÏÈÎÎñÊıÁ¿Ğúng·ñ´ïµ½ÉÏÏŞ20cái
			x231000_NotifyFailTips( sceneId, selfId, "Ghi chép nhi®m vø cüa ngß¶i trong ğµi ngû ğã ğ¥y" )
			return 0
		end

		if IsHaveMission( sceneId, member, x231000_g_MissionId ) > 0 then
			--¶ÓÓÑĞúng·ñÒÑ¾­½Ó¹ı´ËÈÎÎñ»òÕßÁíÍâmµt cáiÈÎÎñ
			x231000_NotifyFailTips( sceneId, selfId, "Trong ğµi ğã có ngß¶i nh§n nhi®m vø này" )
			return 0
		end
	end

	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x231000_OnAccept( sceneId, selfId )

	local teamid = GetTeamId( sceneId, selfId )

	if IsHaveMission( sceneId, selfId, x231000_g_MissionId ) > 0 then					--ÒÑ¾­ÓĞÈÎÎñtoÕ ğµ 
		local misIndex = GetMissionIndexByID( sceneId, selfId, x231000_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x231000_g_Param_sceneid )
		local saveteamid = GetMissionParam( sceneId, selfId, misIndex, x231000_g_Param_teamid )

		if copysceneid >= 0 and teamid == saveteamid then						--½ø¹ı¸±±¾
			--½«×Ô¼º´«ËÍµ½¸±±¾³¡¾°
			if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				NewWorld( sceneId, selfId, copysceneid, x231000_g_Fuben_X, x231000_g_Fuben_Z )
			else
				x231000_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi, hãy bö ği và nh§n lÕi" )
				SetMissionByIndex( sceneId, selfId, misIndex, x231000_g_IsMissionOkFail, 2 )
			end

			return
		end
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	if x231000_CheckAccept( sceneId, selfId ) == 0 then									--ÅĞ¶Ï½ÓÊÕÌõ¼ş
		return
	end

	--È¡ ği¬mÍæ¼Ò¸½½ütoÕ ğµ ¶ÓÓÑÊıÁ¿(°üÀ¨×Ô¼º)
	local nearteammembercount = GetNearTeamCount( sceneId, selfId )
	local member
	local i
	local misIndex
	for	i=0, nearteammembercount-1 do
		member = GetNearTeamMember( sceneId, selfId, i )
		--¸øÃ¿cái¶ÓÎé³ÉÔ±¼ÓÈëÈÎÎñ
		AddMission( sceneId, member, x231000_g_MissionId, x231000_g_ScriptId, 1, 0, 0 )

		misIndex = GetMissionIndexByID( sceneId, member, x231000_g_MissionId )

		SetMissionByIndex( sceneId, member, misIndex, x231000_g_IsMissionOkFail, 0 )	--½«ÈÎÎñtoÕ ğµ µÚ0ºÅÊı¾İÉèÖÃÎª0,±íÊ¾Î´Íê³ÉtoÕ ğµ ÈÎÎñ
		SetMissionByIndex( sceneId, member, misIndex, x231000_g_Param_sceneid, -1 )		--½«ÈÎÎñtoÕ ğµ µÚ2ºÅÊı¾İÉèÖÃÎª-1, ÓÃÓÚ±£´æ¸±±¾toÕ ğµ ³¡¾°ºÅ
		SetMissionByIndex( sceneId, member, misIndex, x231000_g_Param_teamid, teamid )	--½«ÈÎÎñtoÕ ğµ µÚ3ºÅÊı¾İ¶ÓÎéºÅ
	end

	x231000_MakeCopyScene( sceneId, selfId, nearteammembercount )
end

--**********************************
--·ÅÆú
--**********************************
function x231000_OnAbandon( sceneId, selfId )

	local misIndex = GetMissionIndexByID( sceneId, selfId, x231000_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x231000_g_Param_sceneid )

	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
	DelMission( sceneId, selfId, x231000_g_MissionId )

	if sceneId == copyscene then											--Èç¹ûTÕi ¸±±¾ÀïÉ¾³ıÈÎÎñ,ÔòÖ±½Ó´«ËÍ»Ø
		x231000_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
		NewWorld( sceneId, selfId, oldsceneId, x231000_g_Back_X, x231000_g_Back_Z )
	end
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x231000_MakeCopyScene( sceneId, selfId, nearmembercount )

	local mems = {}
	local mylevel = 0
	local i

	for	i=0, nearmembercount-1 do
		mems[i] = GetNearTeamMember( sceneId, selfId, i )
		mylevel = mylevel + GetLevel( sceneId, mems[i] )
	end

	mylevel = mylevel/nearmembercount

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	LuaFnSetSceneLoad_Map( sceneId, "shuilao.nav" )							--µØÍ¼Ğúng±ØĞëÑ¡È¡toÕ ğµ ,¶øÇÒ±ØĞëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x231000_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x231000_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, x231000_g_CopySceneType )				--ÉèÖÃ¸±±¾Êı¾İ,ÕâÀï½«0ºÅË÷ÒıtoÕ ğµ Êı¾İÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param( sceneId, 1, x231000_g_ScriptId )					--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, 6, GetTeamId( sceneId, selfId ) )	--±£´æ¶ÓÎéºÅ
	LuaFnSetCopySceneData_Param( sceneId, 7, 0 )							--É±ËÀBosstoÕ ğµ ÊıÁ¿

  local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end

	LuaFnSetSceneLoad_Monster( sceneId, "shuilao_monster_" .. iniLevel .. ".ini" )

	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --c¤p±ğ²î,CopyScene_LevelGap TÕi  scene.lua ÖĞ¸³Öµ

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
	if bRetSceneID > 0 then
		x231000_NotifyFailTips( sceneId, selfId, "D¸ch chuy¬n thành công!" )
	else
		x231000_NotifyFailTips( sceneId, selfId, "S¯ lßşng bän sao ğã ğªn gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!" )

		--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
		for	i=0, nearmembercount-1 do
			DelMission( sceneId, mems[i], x231000_g_MissionId )
		end
	end

end

--**********************************
--¼ÌĞø
--**********************************
function x231000_OnContinue( sceneId, selfId, targetId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x231000_g_MissionId )
	if GetMissionParam( sceneId, selfId, misIndex, x231000_g_Param_sceneid ) >= 1 then
		BeginEvent( sceneId )
			AddText( sceneId, "Xin chúc m×ng, ngß½i s¨ ğÕt ğßşc #{_MONEY"..x231000_g_MoneyBonus.."} t£ng thß·ng cüa!" )
		EndEvent( sceneId )
		DispatchMissionContinueInfo( sceneId, selfId, targetId, x231000_g_ScriptId, x231000_g_MissionId )
	end
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x231000_CheckSubmit( sceneId, selfId, selectRadioId )
	--ÅĞ¶ÏÈÎÎñĞúng·ñÒÑ¾­Íê³É
	local misIndex = GetMissionIndexByID( sceneId, selfId, x231000_g_MissionId )
	local	ret	= GetMissionParam( sceneId, selfId, misIndex, x231000_g_IsMissionOkFail )
	if ret == 1 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ìá½»
--**********************************
function x231000_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	if GetName( sceneId, targetId ) ~= x231000_g_Name then								--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	if x231000_CheckSubmit( sceneId, selfId, selectRadioId ) > 0 then					--ÒÑ¾­Hoàn t¤t nhi®m vøÁË
		--local iHuan = GetMissionData( sceneId, selfId, 10 )					--È¡ ği¬m×Ü¹²×ö¹ıtoÕ ğµ »·Êı
		--Ìí¼ÓÈÎÎñ½±Àø
		local money = x231000_g_MoneyBonus
		AddMoney( sceneId, selfId, money )
		BeginEvent( sceneId )
			AddText( sceneId, x231000_g_MissionComplete )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
		DelMission( sceneId, selfId, x231000_g_MissionId )
		local misIndex = GetMissionIndexByID( sceneId, selfId, x231000_g_MissionIdPre )	-- ği¬mµ½ÈÎÎñtoÕ ğµ ĞòÁĞºÅ
		SetMissionByIndex( sceneId, selfId, misIndex, x231000_g_IsMissionOkFail, 1 )	--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ1Î»ÖÃ1 (ÈÎÎñÍê³ÉÇé¿ö)
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x231000_OnKillObject( sceneId, selfId, objdataId, objId )

	--Ğúng·ñĞúng¸±±¾
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--Ğúng·ñĞúngËùC¥n toÕ ğµ ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x231000_g_CopySceneType then
		return
	end

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														--Èç¹û¸±±¾ÒÑ¾­±»ÖÃ³É¹Ø±Õ×´Ì¬,ÔòÉ±¹ÖÎŞĞ§
		return
	end

	--È¡ ği¬mµ±Ç°³¡¾°ÀïtoÕ ğµ ÈËÊı
	local num = LuaFnGetCopyScene_HumanCount( sceneId )

	--È¡ ği¬mÉ±ËÀ¹ÖÎïtoÕ ğµ GroupID,ÓÃÓÚÅĞ¶ÏĞúng·ñĞúngËùC¥n É±µôtoÕ ğµ Boss
	local GroupID = GetMonsterGroupID( sceneId, objId )
	if GroupID ~= x231000_g_NeedMonsterGroupID then										--²»ĞúngËùC¥n toÕ ğµ Boss
		return
	end

	local killedbossnumber = LuaFnGetCopySceneData_Param( sceneId, 7 )			--É±ËÀBosstoÕ ğµ ÊıÁ¿
	killedbossnumber = killedbossnumber + 1
	LuaFnSetCopySceneData_Param( sceneId, 7, killedbossnumber )					--ÉèÖÃÉ±ËÀBosstoÕ ğµ ÊıÁ¿

	local i
	local misIndex
	local humanObjId
	--local killedcount

	if killedbossnumber < x231000_g_TotalNeedKillBoss then

		local strText = format( "Ğã giªt tµi phÕm: %d/%d", killedbossnumber, x231000_g_TotalNeedKillBoss )

		for i=0, num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId( sceneId, i )				--È¡ ği¬mµ±Ç°³¡¾°ÀïÈËtoÕ ğµ objId

			if LuaFnIsObjValid( sceneId, humanObjId ) == 1 then					--²»TÕi ³¡¾°toÕ ğµ ²»×ö´Ë²Ù×÷
				x231000_NotifyFailTips( sceneId, humanObjId, strText )

				misIndex = GetMissionIndexByID( sceneId, humanObjId, x231000_g_MissionId )					--È¡ ği¬mÈÎÎñÊı¾İË÷ÒıÖµ
				--killedcount = GetMissionParam( sceneId, humanObjId, misIndex, x231000_g_Param_killcount )	--È¡ ği¬mÒÑ¾­É±ÁËtoÕ ğµ ¹ÖÎïÊı
				--killedcount = killedcount + 1
				SetMissionByIndex( sceneId, humanObjId, misIndex, x231000_g_Param_killcount, killedbossnumber )	--ÉèÖÃÈÎÎñÊı¾İ
			end
		end
	elseif killedbossnumber >= x231000_g_TotalNeedKillBoss then
		--ÉèÖÃÈÎÎñÍê³É±êÖ¾
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )

		--È¡ ği¬mÒÑ¾­Ö´ĞĞtoÕ ğµ ¶¨Ê±´ÎÊı
		local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )
		local strText = format( "Ğã giªt tµi phÕm: %d/%d", x231000_g_TotalNeedKillBoss, x231000_g_TotalNeedKillBoss )
		local strText2 = format( "Nhi®m vø hoàn thành, sau %d giây s¨ chuy¬n t¾i v¸ trí vào cØa", x231000_g_CloseTick * x231000_g_TickTime )

		for i=0, num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId( sceneId, i )									--È¡ ği¬mµ±Ç°³¡¾°ÀïÈËtoÕ ğµ objId

			if LuaFnIsObjValid( sceneId, humanObjId ) == 1 then										--²»TÕi ³¡¾°toÕ ğµ ²»×ö´Ë²Ù×÷
				misIndex = GetMissionIndexByID( sceneId, humanObjId, x231000_g_MissionId)					--È¡ ği¬mÈÎÎñÊı¾İË÷ÒıÖµ

				--killedcount = GetMissionParam( sceneId, humanObjId, misIndex, x231000_g_Param_killcount )	--È¡ ği¬mÒÑ¾­É±ÁËtoÕ ğµ ¹ÖÎïÊı
				--killedcount = killedcount + 1
				SetMissionByIndex( sceneId, humanObjId, misIndex, x231000_g_Param_killcount, x231000_g_TotalNeedKillBoss )	--ÉèÖÃÈÎÎñÊı¾İ

				--½«ÈÎÎñtoÕ ğµ µÚ1ºÅÊı¾İÉèÖÃÎª1,±íÊ¾Íê³ÉtoÕ ğµ ÈÎÎñ
				SetMissionByIndex( sceneId, humanObjId, misIndex, x231000_g_IsMissionOkFail, 1 )					--ÉèÖÃÈÎÎñÊı¾İ
				--Íê³É¸±±¾ËùÓÃÊ±¼ä
				SetMissionByIndex( sceneId, humanObjId, misIndex, x231000_g_Param_time, TickCount * x231000_g_TickTime )	--ÉèÖÃÈÎÎñÊı¾İ

				x231000_NotifyFailTips( sceneId, humanObjId, strText )
				x231000_NotifyFailTips( sceneId, humanObjId, strText2 )
			end
		end
	end
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x231000_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x231000_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x231000_OnCopySceneReady( sceneId, destsceneId )

	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )				-- ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then											-- ÕÒ²»µ½¸ÃÍæ¼Ò
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then		-- ´¦ÓÚÎŞ·¨Ö´ĞĞÂß¼­toÕ ğµ ×´Ì¬
		return
	end

	--È¡ ği¬mÍæ¼Ò¸½½ütoÕ ğµ ¶ÓÓÑÊıÁ¿(°üÀ¨×Ô¼º)
	local nearteammembercount = GetNearTeamCount( sceneId, leaderObjId )

	if nearteammembercount < x231000_g_LimitMembers then
		x231000_NotifyFailTips( sceneId, leaderObjId, "S¯ ngß¶i trong ğµi ngû cüa các hÕ không ğü" )
		return
	end

	local member
	local misIndex
	for	i=0, nearteammembercount-1 do
		member = GetNearTeamMember( sceneId, leaderObjId, i )

		if LuaFnIsCanDoScriptLogic( sceneId, member ) == 1 then			-- ´¦ÓÚ¿ÉÒÔÖ´ĞĞÂß¼­toÕ ğµ ×´Ì¬
			if IsHaveMission( sceneId, member, x231000_g_MissionId ) > 0 then
				misIndex = GetMissionIndexByID( sceneId, member, x231000_g_MissionId )

				--½«ÈÎÎñtoÕ ğµ µÚ2ºÅÊı¾İÉèÖÃÎª¸±±¾toÕ ğµ ³¡¾°ºÅ
				SetMissionByIndex( sceneId, member, misIndex, x231000_g_Param_sceneid, destsceneId )

				NewWorld( sceneId, member, destsceneId, x231000_g_Fuben_X, x231000_g_Fuben_Z )
			else
				x231000_NotifyFailTips( sceneId, member, "Các hÕ ğã không nh§n nhi®m vø này t× trß¾c" )
			end
		end
	end
end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x231000_OnPlayerEnter( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x231000_g_MissionId ) == 0 then				--Èç¹û½øÈë¸±±¾Ç°É¾³ıÈÎÎñ,ÔòÖ±½Ó´«ËÍ»Ø
		x231000_NotifyFailTips( sceneId, selfId, "Các hÕ ğã không nh§n nhi®m vø này t× trß¾c" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
		NewWorld( sceneId, selfId, oldsceneId, x231000_g_Back_X, x231000_g_Back_Z )
		return
	end

	--ÉèÖ giâyÀÍöºó¸´»î ği¬mÎ»ÖÃ
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x231000_g_Fuben_X, x231000_g_Fuben_Z )
end

--**********************************
--ÓĞÍæ¼ÒTÕi ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x231000_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x231000_OnCopySceneTimer( sceneId, nowTime )

	--¸±±¾Ê±ÖÓ¶ÁÈ¡¼°ÉèÖÃ
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						--È¡ ği¬mÒÑ¾­Ö´ĞĞtoÕ ğµ ¶¨Ê±´ÎÊı
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							--ÉèÖÃĞÂtoÕ ğµ ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	for	i=0, membercount-1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	if leaveFlag == 1 then															--C¥n Àë¿ª
		--Àë¿ªµ¹¼ÆÊ±¼ätoÕ ğµ ¶ÁÈ¡ºÍÉèÖÃ
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount == x231000_g_CloseTick then										--µ¹¼ÆÊ±¼äµ½,´ó¼Ò¶¼³öÈ¥°É
			local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )			--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ

			--½«µ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòtoÕ ğµ ³¡¾°
			for	i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					NewWorld( sceneId, mems[i], oldsceneId, x231000_g_Back_X, x231000_g_Back_Z )
				end
			end
		elseif leaveTickCount < x231000_g_CloseTick then
			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË,³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local strText = format( "Các hÕ s¨ r¶i khöi ğây sau %d giây!", (x231000_g_CloseTick-leaveTickCount) * x231000_g_TickTime )

			for	i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x231000_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	elseif TickCount == x231000_g_LimitTimeSuccess then
		--´Ë´¦ÉèÖÃÓĞÊ±¼äÏŞÖÆtoÕ ğµ ÈÎÎñÍê³É´¦Àí
		local misIndex
		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				x231000_NotifyFailTips( sceneId, mems[i], "Th¶i gian hoàn t¤t nhi®m vø ğã t¾i, hoàn thành!" )

				misIndex = GetMissionIndexByID( sceneId, mems[i], x231000_g_MissionId )		--È¡ ği¬mÈÎÎñÊı¾İË÷ÒıÖµ
				--½«ÈÎÎñtoÕ ğµ µÚ1ºÅÊı¾İÉèÖÃÎª1,±íÊ¾Íê³ÉtoÕ ğµ ÈÎÎñ
				SetMissionByIndex( sceneId, mems[i], misIndex, x231000_g_IsMissionOkFail, 1 )		--ÉèÖÃÈÎÎñÊı¾İ
				--Íê³É¸±±¾ËùÓÃÊ±¼ä
				SetMissionByIndex( sceneId, mems[i], misIndex, x231000_g_Param_time, TickCount * x231000_g_TickTime )	--ÉèÖÃÈÎÎñÊı¾İ
			end
		end

		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	elseif TickCount == x231000_g_LimitTotalHoldTime then									--¸±±¾×ÜÊ±¼äÏŞÖÆµ½ÁË
		--´Ë´¦ÉèÖÃ¸±±¾ÈÎÎñÓĞÊ±¼äÏŞÖÆtoÕ ğµ Çé¿ö,µ±Ê±¼äµ½ºó´¦Àí...
		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				DelMission( sceneId, mems[i], x231000_g_MissionId )							--ÈÎÎñth¤t bÕi,É¾³ıÖ®
				x231000_NotifyFailTips( sceneId, mems[i], "Nhi®m vø th¤t bÕi, quá gi¶!" )
			end
		end

		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	else
		--¶¨Ê±¼ì²é¶ÓÎé³ÉÔ±toÕ ğµ ¶ÓÎéºÅ,Èç¹û²»·ûºÏ,ÔòÌß³ö¸±±¾
		local oldteamid = LuaFnGetCopySceneData_Param( sceneId, 6 )					--È¡ ği¬m±£´ætoÕ ğµ ¶ÓÎéºÅ
		local oldsceneId

		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and IsHaveMission( sceneId, mems[i], x231000_g_MissionId ) > 0 then
				if oldteamid ~= GetTeamId( sceneId, mems[i] ) then
					DelMission( sceneId, mems[i], x231000_g_MissionId )						--ÈÎÎñth¤t bÕi,É¾³ıÖ®
					x231000_NotifyFailTips( sceneId, mems[i], "Nhi®m vø th¤t bÕi, ngß½i không · trong ğúng nhóm" )

					oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )			--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
					NewWorld( sceneId, mems[i], oldsceneId, x231000_g_Back_X, x231000_g_Back_Z )
				end
			end
		end

	end
end

function x231000_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent(sceneId)
		AddText(sceneId, Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end

--**********************************
--¶Ô»°´°¿ÚĞÅÏ¢ÌáÊ¾
--**********************************
function x231000_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
