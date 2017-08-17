--¸±±¾ÈÎÎñ
--Ë®ÀÎ
--10cái·¸ÈËÍ·Ä¿,¸÷Í³Áì5Ö»Ğ¡¹Ö

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x232002_g_ScriptId	= 232002
--¸±±¾Ãû³Æ
x232002_g_CopySceneName	= "ThuÖ Lao"
--ÈÎÎñºÅ
x232002_g_MissionId			= 1213
--ÉÏmµt cáiÈÎÎñtoÕ ğµ ID
x232002_g_MissionIdPre	= 1212
--Ä¿±êNPC
x232002_g_Name					= "H° Diên Khánh"
--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x232002_g_IfMissionElite= 1
--ĞÆng c¤p nhi®m vø 
x232002_g_MissionLevel	= 10000
--ÈÎÎñ¹éÀà
x232002_g_MissionKind		= 1
--ÈÎÎñÎÄ±¾ÃèÊö
x232002_g_MissionName			= "ThuÖ lao"
--ÈÎÎñÃèÊö
x232002_g_MissionInfo			= "#{event_xunhuan_0006}"
--Møc tiêu nhi®m vø
x232002_g_MissionTarget		= "  H° Diên Khánh · tÕi Thái H° #{_INFOAIM67,77,4,H° Diên Khánh} yêu c¥u các hÕ giªt 10 tên phÕm nhân ğ¥u møc và 50 con ti¬u quái."
--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x232002_g_ContinueInfo		= "  Có phäi ngß½i ğã giªt chªt 10 tên ğ¥u møc phÕm nhân hung hãn và nhi«u ti¬u quái v§t?"
--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°
x232002_g_MissionComplete	= "  R¯t cuµc ThuÖ lao ğã ğßşc giæ væng, sau này chúng ta tuy®t ğ¯i không ğßşc l½ là"
--ÈÎÎñ½±Àø
x232002_g_MoneyBonus			= 1000
--********ÏÂÃæ¼¸ÏîĞúng¶¯Ì¬ÏÔÊ¾toÕ ğµ ÄÚÈİ,ÓÃÓÚTÕi ÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
--Ñ­»·ÈÎÎñtoÕ ğµ Êı¾İË÷Òı,ÀïÃæ´æ×ÅÒÑ×ötoÕ ğµ »·Êı MD_SHUILAO_HUAN
--ÈÎÎñĞúng·ñÒÑ¾­Íê³É
--MissionRound =
--**********************************ÒÔÉÏĞúng¶¯Ì¬****************************
--½ÇÉ«Mission±äÁ¿Ë ği¬m÷
x232002_g_IsMissionOkFail	= 0	--0ºÅ: µ±Ç°ÈÎÎñĞúng·ñÍê³É(0Î´Íê³É£»1Íê³É)
x232002_g_MissionRound		= 5	--Define MD_BAIMASI_HUAN from ScriptGlobal.lua
x232002_g_DemandKill			= { {id=367,num=60} }
x232002_g_Param_killcount	= 1	--1ºÅ: É±ËÀÈÎÎñ¹ÖtoÕ ğµ ÊıÁ¿
x232002_g_Param_sceneid		= 2	--2ºÅ: µ±Ç°¸±±¾ÈÎÎñtoÕ ğµ ³¡¾°ºÅ
x232002_g_Param_teamid		= 3	--3ºÅ: ½Ó¸±±¾ÈÎÎñÊ±ºòtoÕ ğµ ¶ÓÎéºÅ
x232002_g_Param_time			= 4	--4ºÅ: Íê³É¸±±¾ËùÓÃÊ±¼ä(µ¥Î»:  giây)
--6ºÅ: ¾ßÌå¸±±¾ÊÂ¼ş½Å±¾Õ¼ÓÃ
--7ºÅ: ¾ßÌå¸±±¾ÊÂ¼ş½Å±¾Õ¼ÓÃ
--MisDescEnd
--************************************************************************

x232002_g_CopySceneType			= FUBEN_SHUILAO	--¸±±¾ÀàĞÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ
x232002_g_LimitMembers			= 1		--¿ÉÒÔ½ø¸±±¾toÕ ğµ ×îĞ¡¶ÓÎéÈËÊı
x232002_g_TickTime					= 5		--»Øµ÷½Å±¾toÕ ğµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x232002_g_LimitTotalHoldTime= 360	--¸±±¾¿ÉÒÔ´æ»îtoÕ ğµ Ê±¼ä(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x232002_g_CloseTick					= 6		--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊı)
x232002_g_NoUserTime				= 300	--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´ætoÕ ğµ Ê±¼ä(µ¥Î»:  giây)
x232002_g_Fuben_X						= 95	--½øÈë¸±±¾toÕ ğµ Î»ÖÃX
x232002_g_Fuben_Z						= 89	--½øÈë¸±±¾toÕ ğµ Î»ÖÃZ
x232002_g_Back_X						= 52	--Ô´³¡¾°Î»ÖÃX
x232002_g_Back_Z						= 96	--Ô´³¡¾°Î»ÖÃZ
x232002_g_NeedMonsterGroupID= 1		--C¥n É±ËÀtoÕ ğµ BosstoÕ ğµ GroupID
x232002_g_TotalNeedKillBoss	= 60	--C¥n É±ËÀBossÊıÁ¿

--¸±±¾Êı¾İË÷Òı¶ÔÕÕ
x232002_g_keySD					=
{
	["typ"]	= 0,	--ÉèÖÃ¸±±¾ÀàĞÍ
	["spt"]	= 1,	--ÉèÖÃ¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	["tim"]	= 2,	--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	["scn"]	= 3,	--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	["cls"]	= 4,	--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	["dwn"]	= 5,	--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	["tem"]	= 6,	--±£´æ¶ÓÎéºÅ
	["kil"]	= 7,	--É±ËÀBosstoÕ ğµ ÊıÁ¿
	["lev"]	= 8,	--¹ÖÎï×ÔÊÊÓ¦µÈc¤p
}

--½ÓÈ¡ÈÎÎñtoÕ ğµ ×îµÍµÈc¤p
x232002_g_minLevel			= 20
--C¥n ÅäÖÃĞ¡¹ÖÎï
x232002_g_namMonster		= "PhÕm nhân bình thß¶ng"
x232002_g_typMonster		= --ÆÕÍ¨·¸ÈË10~100c¤p
	{ 2490, 2491, 2492, 2493, 2494,
		2495, 2496, 2497, 2498, 2499 }

--1/20toÕ ğµ ¼¸ÂÊ¸øÓÚ±¦Ê¯½±Àø
x232002_g_gemList				= { 50101001, 50101002, 50111001, 50111002 }
x232002_g_gemRate				= 20
					
x232002_g_IsMissionOkFailPre	= 0	--0ºÅ: Æ½¶¨ÈÎÎñĞúng·ñÍê³É(0Î´Íê³É£»1Íê³É)

x232002_g_MaxSameIPNum = 3
--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x232002_OnDefaultEvent( sceneId, selfId, targetId )

	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
	if LuaFnGetName( sceneId, targetId ) ~= x232002_g_Name then
		return
	end

	--Èç¹ûÍæ¼ÒÒÑ¾­½ÓÁËCái này ÈÎÎñ
	if IsHaveMission( sceneId, selfId, x232002_g_MissionId ) > 0 then

		local	misIndex	= GetMissionIndexByID( sceneId, selfId, x232002_g_MissionId )
		local	bDone			= x232002_CheckSubmit( sceneId, selfId )
		--ÈÎÎñÎ´Íê³É
		if bDone == 0 then
			BeginEvent( sceneId )
				AddText( sceneId, x232002_g_MissionName )
				AddText( sceneId, "  Chu¦n b¸ xong chßa?" )
			EndEvent()
			DispatchMissionInfo( sceneId, selfId, targetId, x232002_g_ScriptId, x232002_g_MissionId )
		--ÈÎÎñÒÑ¾­Íê³É
		elseif bDone == 1 then
			BeginEvent( sceneId )
				AddText( sceneId, x232002_g_MissionName )
				AddText( sceneId, x232002_g_ContinueInfo )
				AddMoneyBonus( sceneId, x232002_g_MoneyBonus )
			EndEvent( )
			DispatchMissionDemandInfo( sceneId, selfId, targetId, x232002_g_ScriptId, x232002_g_MissionId, bDone )
		end

	else

		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
		BeginEvent( sceneId )
			AddText( sceneId, x232002_g_MissionName )
			AddText( sceneId, x232002_g_MissionInfo )
			AddText( sceneId, "#{M_MUBIAO}" )
			AddText( sceneId, x232002_g_MissionTarget )
			AddText( sceneId, " " )
			AddMoneyBonus( sceneId, x232002_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo( sceneId, selfId, targetId, x232002_g_ScriptId, x232002_g_MissionId )

	end

end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x232002_OnEnumerate( sceneId, selfId, targetId )

	if IsHaveMission( sceneId, selfId, x232002_g_MissionIdPre ) == 0 then
		x232002_MsgBox( sceneId, selfId, targetId, "  Huynh ğ® H° Diên Báo cüa ta ğã t¾i Tô Châu cÑu binh r°i, ngß½i có g£p không?" )
		return
	else
		if IsHaveMission( sceneId, selfId, x232002_g_MissionId ) == 1 then
			local	misIndex		= GetMissionIndexByID( sceneId, selfId, x232002_g_MissionId )
			local	misIndexPre	= GetMissionIndexByID( sceneId, selfId, x232002_g_MissionIdPre )
			if GetMissionParam( sceneId, selfId, misIndex, x232002_g_IsMissionOkFail ) == 1
				and GetMissionParam( sceneId, selfId, misIndexPre, x232002_g_IsMissionOkFailPre ) == 1 then
					x232002_MsgBox( sceneId, selfId, targetId, "  Ngß½i có th¬ quay v« Tô Châu tìm huynh ğ® H° Diên Báo cüa ta lînh t£ng thß·ng!" )
					return
			end
			if GetMissionParam( sceneId, selfId, misIndex, x232002_g_IsMissionOkFail ) ~= 1
				and GetMissionParam( sceneId, selfId, misIndexPre, x232002_g_IsMissionOkFailPre ) == 2 then
					x232002_MsgBox( sceneId, selfId, targetId, "  R¤t tiªc, nhi®m vø bình ğ¸nh cüa ngß½i ğã th¤t bÕi" )
					return
			end
		end
	end

	AddNumText( sceneId, x232002_g_ScriptId, x232002_g_MissionName, 4, -1 )

end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x232002_CheckAccept( sceneId, selfId, targetId )

	if LuaFnGetLevel( sceneId, selfId ) < x232002_g_minLevel then
		x232002_NotifyTip( sceneId, selfId, "ĞÆng c¤p cüa các hÕ quá th¤p, phÕm nhân khá lşi hÕi" )
		x232002_NotifyTip( sceneId, selfId, "Vçn ğşi ngß½i ğªn"..x232002_g_minLevel.."Sau khi thång c¤p t¾i tìm ta" )
		return 0
	end

	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		x232002_NotifyTip( sceneId, selfId, "Lßşng phÕm nhân trong ThuÖ lao r¤t ğông, ngß½i ğ½n thân thª lñc möng" )
		x232002_NotifyTip( sceneId, selfId, "Hay là g÷i thêm vài trş thü t¾i giúp" )
		return 0
	end

	if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then
		x232002_NotifyTip( sceneId, selfId, "Ngß½i không phäi là nhóm trß·ng" )
		x232002_NotifyTip( sceneId, selfId, "Chï có nhóm trß·ng m¾i có th¬ quyªt ğ¸nh tiªp nh§n üy thác cüa ta hay không" )
		return 0
	end

	--È¡ ği¬mÍæ¼Ò¸½½ütoÕ ğµ ¶ÓÓÑÊıÁ¿(°üÀ¨×Ô¼º)
	local	numMem	= GetNearTeamCount( sceneId, selfId )
	if numMem ~= LuaFnGetTeamSize( sceneId, selfId ) then
		x232002_NotifyTip( sceneId, selfId, "Ngß½i có nhóm viên không · g¥n ğây" )
		return 0
	end

	if numMem < x232002_g_LimitMembers then
		x232002_NotifyTip( sceneId, selfId, "Lßşng phÕm nhân trong ThuÖ lao r¤t ğông" )
		x232002_NotifyTip( sceneId, selfId, "Chí ít các ngß½i cûng c¥n có "..x232002_g_LimitMembers.." ta m¾i yên tâm ğ¬ các ngß½i ği" )
		return 0
	end

	--¼ì²âĞ¡¶ÓÖĞĞúng·ñÓĞÈËÈÎÎñ¼ÇÂ¼ÒÑÂú, ¶ÓÓÑĞúng·ñÒÑ¾­½Ó¹ı´ËÈÎÎñ
	local member
	local i
	local misIndex
	--Ôö¼ÓIPÅĞ¶Ï
	local hostIp=""
	local IPList={}
	for	i=0, numMem-1 do
		member = GetNearTeamMember( sceneId, selfId, i )

		if IsHaveMission( sceneId, member, x232002_g_MissionIdPre ) <= 0 then
			x232002_NotifyTip( sceneId, selfId, "Trong nhóm có ngß¶i chßa nh§n nhi®m vø ThuÖ lao" )
			return 0
		end

		misIndex = GetMissionIndexByID( sceneId, member, x232002_g_MissionIdPre )
		if GetMissionParam( sceneId, member, misIndex, 6 ) ~= 1 then
			x232002_NotifyTip( sceneId, selfId, "Trong nhóm có ngß¶i ğã nh§n nhi®m vø bình ğ¸nh" )
			return 0
		end
		
		if GetMissionParam( sceneId, member, misIndex, x232002_g_IsMissionOkFailPre ) == 1 then
			x232002_NotifyTip( sceneId, selfId, "Trong nhóm có ngß¶i ğã hoàn t¤t nhi®m vø bình ğ¸nh" )
			x232002_MsgBox( sceneId, selfId, targetId, "  Vô cùng cäm tÕ các hÕ ğã giúp ta bình ğ¸nh ğám phän loÕn ThuÖ lao, xin quay v« Tô Châu tìm huynh ğ® H° Diên Báo cüa ta lînh t£ng thß·ng. Chút quà m÷n tö thành ı" )
			return 0
		end

		if GetMissionParam( sceneId, member, misIndex, x232002_g_IsMissionOkFail ) == 1 then
			x232002_NotifyTip( sceneId, selfId, "Trong nhóm có ngß¶i ğã Hoàn t¤t nhi®m vø này" )
			return 0
		end

		--¶ÓÓÑÉíÉÏÈÎÎñÊıÁ¿Ğúng·ñ´ïµ½ÉÏÏŞ20cái
		if GetMissionCount( sceneId, member ) >= 20 then
			x232002_NotifyTip( sceneId, selfId, "Ghi chép nhi®m vø cüa ngß¶i trong ğµi ngû ğã ğ¥y" )
			return 0
		end

		if IsHaveMission( sceneId, member, x232002_g_MissionId ) > 0 then
			--¶ÓÓÑĞúng·ñÒÑ¾­½Ó¹ı´ËÈÎÎñ»òÕßÁíÍâmµt cáiÈÎÎñ
			x232002_NotifyTip( sceneId, selfId, "Trong ğµi ğã có ngß¶i nh§n nhi®m vø này" )
			return 0
		end
		
		hostIp = GetHostIP(sceneId, member)
		IPList[i]=hostIp
		
	end
	local sameIPNum = 1
	for	i=0, numMem-1 do
		local nTemp = 1
		for j=0,numMem-1 do
			if IPList[i] == IPList[j] and i ~= j then
				nTemp = nTemp + 1
			end
		end
		if sameIPNum < nTemp then
			sameIPNum = nTemp
		end			
	end

	if sameIPNum >= x232002_g_MaxSameIPNum then
		--x232002_NotifyTip( sceneId, selfId, "#{SLIP_090714_1}" )
		x232002_MsgBox( sceneId, selfId, targetId, "#{SLIP_090714_1}" )
		return 0
	end

	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x232002_OnAccept( sceneId, selfId, targetId )

	local teamid = GetTeamId( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x232002_g_MissionId ) > 0 then
		local misIndex 		= GetMissionIndexByID( sceneId, selfId, x232002_g_MissionId )
		local misIndexPre	= GetMissionIndexByID( sceneId, selfId, x232002_g_MissionIdPre )
		local copysceneid	= GetMissionParam( sceneId, selfId, misIndex, x232002_g_Param_sceneid )
		local saveteamid	= GetMissionParam( sceneId, selfId, misIndex, x232002_g_Param_teamid )
		--½ø¹ı¸±±¾
		if copysceneid >= 0 and teamid == saveteamid then
			--½«×Ô¼º´«ËÍµ½¸±±¾³¡¾°
			if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				NewWorld( sceneId, selfId, copysceneid, x232002_g_Fuben_X, x232002_g_Fuben_Z )
			else
				x232002_NotifyTip( sceneId, selfId, "Nhi®m vø th¤t bÕi, hãy bö ği và nh§n lÕi" )
				SetMissionByIndex( sceneId, selfId, misIndex, x232002_g_IsMissionOkFail, 2 )
				SetMissionByIndex( sceneId, selfId, misIndexPre, x232002_g_IsMissionOkFailPre, 2 )
			end
			return
		end
	end

	--ÅĞ¶Ï½ÓÊÕÌõ¼ş
	if x232002_CheckAccept( sceneId, selfId, targetId ) == 0 then
		return
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	--È¡ ği¬mÍæ¼Ò¸½½ütoÕ ğµ ¶ÓÓÑÊıÁ¿(°üÀ¨×Ô¼º)
	local numMem	= GetNearTeamCount( sceneId, selfId )
	local member
	local i
	local misIndex
	for	i=0, numMem-1 do
		member = GetNearTeamMember( sceneId, selfId, i )
		--¸øÃ¿cái¶ÓÎé³ÉÔ±¼ÓÈëÈÎÎñ
		AddMission( sceneId, member, x232002_g_MissionId, x232002_g_ScriptId, 1, 0, 0 )

		misIndex = GetMissionIndexByID( sceneId, member, x232002_g_MissionId )
		--½«ÈÎÎñtoÕ ğµ µÚ0ºÅÊı¾İÉèÖÃÎª0,±íÊ¾Î´Íê³ÉtoÕ ğµ ÈÎÎñ
		SetMissionByIndex( sceneId, member, misIndex, x232002_g_IsMissionOkFail, 0 )
		--½«ÈÎÎñtoÕ ğµ µÚ2ºÅÊı¾İÉèÖÃÎª-1, ÓÃÓÚ±£´æ¸±±¾toÕ ğµ ³¡¾°ºÅ
		SetMissionByIndex( sceneId, member, misIndex, x232002_g_Param_sceneid, -1 )
		--½«ÈÎÎñtoÕ ğµ µÚ3ºÅÊı¾İ¶ÓÎéºÅ
		SetMissionByIndex( sceneId, member, misIndex, x232002_g_Param_teamid, teamid )
		
		misIndexPre = GetMissionIndexByID( sceneId, member, x232002_g_MissionIdPre )
		SetMissionByIndex( sceneId, member, misIndexPre, x232002_g_IsMissionOkFailPre, 1 )
	end

	x232002_MakeCopyScene( sceneId, selfId, numMem )
end

--**********************************
--·ÅÆú
--**********************************
function x232002_OnAbandon( sceneId, selfId )

	local misIndex		= GetMissionIndexByID( sceneId, selfId, x232002_g_MissionId )
	local copyscene		= GetMissionParam( sceneId, selfId, misIndex, x232002_g_Param_sceneid )

	x232002_NotifyTip( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )
	x232002_MissionFailExe( sceneId, selfId )

	--Èç¹ûTÕi ¸±±¾ÀïÉ¾³ıÈÎÎñ,ÔòÖ±½Ó´«ËÍ»Ø
	if sceneId == copyscene then
		--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
		local	oldsceneId	= LuaFnGetCopySceneData_Param( sceneId, 3 )
		NewWorld( sceneId, selfId, oldsceneId, x232002_g_Back_X, x232002_g_Back_Z )
	end

end

--**********************************
--´´½¨¸±±¾
--**********************************
function x232002_MakeCopyScene( sceneId, selfId, nearmembercount )

	--Ö¸Êı²ÎÊı
	local	param0	= 4;
	local	param1	= 3;

	--×îÖÕ½á¹û
	local	mylevel	= 0;

	--ÁÙÊ±±äÁ¿
	local mems		= {};
	local	tempMemlevel = 0;
	local	level0 = 0;
	local	level1 = 0;
	for	i = 0, nearmembercount - 1 do
		mems[i]	= GetNearTeamMember(sceneId, selfId, i);
		tempMemlevel = GetLevel(sceneId, mems[i]);
		level0	= level0 + (tempMemlevel ^ param0);
		level1	= level1 + (tempMemlevel ^ param1);
	end

	if level1 == 0 then
		mylevel = x232002_g_minLevel;
	else
		mylevel = level0/level1;
	end

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	--µØÍ¼Ğúng±ØĞëÑ¡È¡toÕ ğµ ,¶øÇÒ±ØĞëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetSceneLoad_Map( sceneId, "shuilao.nav" )
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x232002_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x232002_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, x232002_g_keySD["typ"], x232002_g_CopySceneType )
	LuaFnSetCopySceneData_Param( sceneId, x232002_g_keySD["spt"], x232002_g_ScriptId )
	LuaFnSetCopySceneData_Param( sceneId, x232002_g_keySD["tim"], 0 )
	LuaFnSetCopySceneData_Param( sceneId, x232002_g_keySD["scn"], -1 )
	LuaFnSetCopySceneData_Param( sceneId, x232002_g_keySD["cls"], 0 )
	LuaFnSetCopySceneData_Param( sceneId, x232002_g_keySD["dwn"], 0 )
	LuaFnSetCopySceneData_Param( sceneId, x232002_g_keySD["tem"], GetTeamId( sceneId, selfId ) )
	LuaFnSetCopySceneData_Param( sceneId, x232002_g_keySD["kil"], 0 )

  local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel;
	if mylevel < 10 then
		iniLevel = 10;
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor(mylevel/10) * 10;
	else
		iniLevel = PlayerMaxLevel;
	end
	LuaFnSetSceneLoad_Monster( sceneId, "shuilao_monster_" .. iniLevel .. ".ini" )
	LuaFnSetCopySceneData_Param( sceneId, CopyScene_LevelGap, mylevel - iniLevel )	--c¤p±ğ²î,CopyScene_LevelGap TÕi  scene.lua ÖĞ¸³Öµ
	LuaFnSetCopySceneData_Param( sceneId, x232002_g_keySD["lev"], mylevel )

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )	--³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
	if bRetSceneID > 0 then
		x232002_NotifyTip( sceneId, selfId, "D¸ch chuy¬n thành công!" )
	else
		--x232002_NotifyTip( sceneId, selfId, "S¯ lßşng bän sao ğã ğªn gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!" )

		--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
		for	i=0, nearmembercount-1 do
			x232002_NotifyTip( sceneId, mems[i], "S¯ lßşng bän sao ğã ğªn gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!" )
			DelMission( sceneId, mems[i], x232002_g_MissionId )
			
			misIndexPre	= GetMissionIndexByID( sceneId, mems[i], x232002_g_MissionIdPre )
			SetMissionByIndex( sceneId, mems[i], misIndexPre, x232002_g_IsMissionOkFailPre, 0 )
		end
	end

end

--**********************************
--¼ÌĞø
--**********************************
function x232002_OnContinue( sceneId, selfId, targetId )

	local	misIndex	= GetMissionIndexByID( sceneId, selfId, x232002_g_MissionId )
	if GetMissionParam( sceneId, selfId, misIndex, x232002_g_Param_sceneid ) >= 1 then
		BeginEvent( sceneId )
			AddText( sceneId, "  Xin chúc m×ng, ngß½i s¨ ğÕt ğßşc #{_MONEY"..x232002_g_MoneyBonus.."} t£ng thß·ng!" )
		EndEvent( sceneId )
		DispatchMissionContinueInfo( sceneId, selfId, targetId, x232002_g_ScriptId, x232002_g_MissionId )
	end

end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x232002_CheckSubmit( sceneId, selfId, selectRadioId )

	--ÅĞ¶ÏÈÎÎñĞúng·ñÒÑ¾­Íê³É
	local	misIndex	= GetMissionIndexByID( sceneId, selfId, x232002_g_MissionId )
	local	ret				= GetMissionParam( sceneId, selfId, misIndex, x232002_g_IsMissionOkFail )
	if ret == 1 then
		return 1
	else
		return 0
	end

end

--**********************************
--Ìá½»
--**********************************
function x232002_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
	if LuaFnGetName( sceneId, targetId ) ~= x232002_g_Name then
		return
	end

	--ÒÑ¾­Hoàn t¤t nhi®m vøÁË
	if x232002_CheckSubmit( sceneId, selfId, selectRadioId ) > 0 then
		--È¡ ği¬m×Ü¹²×ö¹ıtoÕ ğµ »·Êı
		--local iHuan	= GetMissionData( sceneId, selfId, 10 )

		--ÈÎÎñ½±Àø
		AddMoney( sceneId, selfId, x232002_g_MoneyBonus )
		nSeed	= random( getn( x232002_g_gemList ) )
		sName	= GetName( sceneId, selfId )
		if random( x232002_g_gemRate ) == 1 then
			nPos		= LuaFnTryRecieveItem( sceneId, selfId, x232002_g_gemList[ nSeed ], 1 )
			if nPos ~= -1 then
				sTran	= GetBagItemTransfer( sceneId, selfId, nPos )
				if random( 2 ) == 1 then
					AddGlobalCountNews( sceneId, "#{_INFOUSR"..sName.."} vì có công bình ğ¸nh ğám phän loÕn ThuÖ lao, ğßşc ğ£c bi®t t£ng thß·ng #{_INFOMSG"..sTran.."} 1 viên" )
				else
					AddGlobalCountNews( sceneId, "#{_INFOUSR"..sName.."} sau khi bình ğ¸nh ThuÖ lao, trong góc ThuÖ lao phát hi®n th¤y 1 viên #{_INFOMSG"..sTran.."}" )
				end
			end
		end

		BeginEvent( sceneId )
			AddText( sceneId, x232002_g_MissionComplete )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
		DelMission( sceneId, selfId, x232002_g_MissionId )
		-- ği¬mµ½ÈÎÎñtoÕ ğµ ĞòÁĞºÅ
		local	misIndexPre	= GetMissionIndexByID( sceneId, selfId, x232002_g_MissionIdPre )
		--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ1Î»ÖÃ1 (ÈÎÎñÍê³ÉÇé¿ö)
		SetMissionByIndex( sceneId, selfId, misIndexPre, x232002_g_IsMissionOkFailPre, 1 )
	end

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x232002_OnKillObject( sceneId, selfId, objdataId, objId )

	--Ğúng·ñĞúng¸±±¾
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--Ğúng·ñĞúngËùC¥n toÕ ğµ ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x232002_g_CopySceneType then
		return
	end

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	--Èç¹û¸±±¾ÒÑ¾­±»ÖÃ³É¹Ø±Õ×´Ì¬,ÔòÉ±¹ÖÎŞĞ§
	if leaveFlag == 1 then
		return
	end

	--È¡ ği¬mµ±Ç°³¡¾°ÀïtoÕ ğµ ÈËÊı
	local num = LuaFnGetCopyScene_HumanCount( sceneId )

	--È¡ ği¬mÉ±ËÀ¹ÖÎïtoÕ ğµ GroupID,ÓÃÓÚÅĞ¶ÏĞúng·ñĞúngËùC¥n É±µôtoÕ ğµ Boss
	local GroupID = GetMonsterGroupID( sceneId, objId )
	--²»ĞúngËùC¥n toÕ ğµ Boss
	if GetMonsterNamebyDataId( objdataId ) ~= x232002_g_namMonster and GroupID ~= x232002_g_NeedMonsterGroupID then
		return
	end

	local killedbossnumber = LuaFnGetCopySceneData_Param( sceneId, 7 )			--É±ËÀBosstoÕ ğµ ÊıÁ¿
	killedbossnumber = killedbossnumber + 1
	LuaFnSetCopySceneData_Param( sceneId, 7, killedbossnumber )					--ÉèÖÃÉ±ËÀBosstoÕ ğµ ÊıÁ¿

	local i
	local misIndex
	local humanObjId
	--local killedcount

	if killedbossnumber < x232002_g_TotalNeedKillBoss then

		local strText = format( "Ğã giªt tµi phÕm: %d/%d", killedbossnumber, x232002_g_TotalNeedKillBoss )

		for i=0, num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId( sceneId, i )				--È¡ ği¬mµ±Ç°³¡¾°ÀïÈËtoÕ ğµ objId

			if LuaFnIsObjValid( sceneId, humanObjId ) == 1 then					--²»TÕi ³¡¾°toÕ ğµ ²»×ö´Ë²Ù×÷
				x232002_NotifyTip( sceneId, humanObjId, strText )

				misIndex = GetMissionIndexByID( sceneId, humanObjId, x232002_g_MissionId )					--È¡ ği¬mÈÎÎñÊı¾İË÷ÒıÖµ
				--killedcount = GetMissionParam( sceneId, humanObjId, misIndex, x232002_g_Param_killcount )	--È¡ ği¬mÒÑ¾­É±ÁËtoÕ ğµ ¹ÖÎïÊı
				--killedcount = killedcount + 1
				SetMissionByIndex( sceneId, humanObjId, misIndex, x232002_g_Param_killcount, killedbossnumber )	--ÉèÖÃÈÎÎñÊı¾İ
			end
		end
	elseif killedbossnumber >= x232002_g_TotalNeedKillBoss then
		--ÉèÖÃÈÎÎñÍê³É±êÖ¾
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )

		--È¡ ği¬mÒÑ¾­Ö´ĞĞtoÕ ğµ ¶¨Ê±´ÎÊı
		local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )
		local strText = format( "Ğã giªt tµi phÕm: %d/%d", x232002_g_TotalNeedKillBoss, x232002_g_TotalNeedKillBoss )
		local strText2 = format( "Nhi®m vø hoàn thành, sau %d giây s¨ chuy¬n t¾i v¸ trí vào cØa", x232002_g_CloseTick * x232002_g_TickTime )

		for i=0, num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId( sceneId, i )									--È¡ ği¬mµ±Ç°³¡¾°ÀïÈËtoÕ ğµ objId

			if LuaFnIsObjValid( sceneId, humanObjId ) == 1 then										--²»TÕi ³¡¾°toÕ ğµ ²»×ö´Ë²Ù×÷
				misIndex = GetMissionIndexByID( sceneId, humanObjId, x232002_g_MissionId)					--È¡ ği¬mÈÎÎñÊı¾İË÷ÒıÖµ

				--killedcount = GetMissionParam( sceneId, humanObjId, misIndex, x232002_g_Param_killcount )	--È¡ ği¬mÒÑ¾­É±ÁËtoÕ ğµ ¹ÖÎïÊı
				--killedcount = killedcount + 1
				SetMissionByIndex( sceneId, humanObjId, misIndex, x232002_g_Param_killcount, x232002_g_TotalNeedKillBoss )	--ÉèÖÃÈÎÎñÊı¾İ

				--½«ÈÎÎñtoÕ ğµ µÚ1ºÅÊı¾İÉèÖÃÎª1,±íÊ¾Íê³ÉtoÕ ğµ ÈÎÎñ
				SetMissionByIndex( sceneId, humanObjId, misIndex, x232002_g_IsMissionOkFail, 1 )					--ÉèÖÃÈÎÎñÊı¾İ
				--Íê³É¸±±¾ËùÓÃÊ±¼ä
				SetMissionByIndex( sceneId, humanObjId, misIndex, x232002_g_Param_time, TickCount * x232002_g_TickTime )	--ÉèÖÃÈÎÎñÊı¾İ

				x232002_NotifyTip( sceneId, humanObjId, strText )
				x232002_NotifyTip( sceneId, humanObjId, strText2 )
			end
		end
	end
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x232002_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x232002_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x232002_OnCopySceneReady( sceneId, destsceneId )

	--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )

	local leaderguid	= LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId	= LuaFnGuid2ObjId( sceneId, leaderguid )
	--ÕÒ²»µ½¸ÃÍæ¼Ò
	if leaderObjId == -1 then
		return
	end

	--´¦ÓÚÎŞ·¨Ö´ĞĞÂß¼­toÕ ğµ ×´Ì¬
	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then
		return
	end

	--È¡ ği¬mÍæ¼Ò¸½½ütoÕ ğµ ¶ÓÓÑÊıÁ¿(°üÀ¨×Ô¼º)
	local numMem	= GetNearTeamCount( sceneId, leaderObjId )

	if numMem < x232002_g_LimitMembers then
		x232002_NotifyTip( sceneId, leaderObjId, "S¯ ngß¶i trong ğµi ngû cüa các hÕ không ğü" )
		return
	end

	local member
	local misIndex
	for	i=0, numMem-1 do
		member = GetNearTeamMember( sceneId, leaderObjId, i )

		if LuaFnIsCanDoScriptLogic( sceneId, member ) == 1 then			-- ´¦ÓÚ¿ÉÒÔÖ´ĞĞÂß¼­toÕ ğµ ×´Ì¬
			if IsHaveMission( sceneId, member, x232002_g_MissionId ) > 0 then
				misIndex = GetMissionIndexByID( sceneId, member, x232002_g_MissionId )

				--½«ÈÎÎñtoÕ ğµ µÚ2ºÅÊı¾İÉèÖÃÎª¸±±¾toÕ ğµ ³¡¾°ºÅ
				SetMissionByIndex( sceneId, member, misIndex, x232002_g_Param_sceneid, destsceneId )

				NewWorld( sceneId, member, destsceneId, x232002_g_Fuben_X, x232002_g_Fuben_Z )
			else
				x232002_NotifyTip( sceneId, member, "Các hÕ ğã không nh§n nhi®m vø này t× trß¾c" )
			end
		end
	end

end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x232002_OnPlayerEnter( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x232002_g_MissionId ) == 0 then				--Èç¹û½øÈë¸±±¾Ç°É¾³ıÈÎÎñ,ÔòÖ±½Ó´«ËÍ»Ø
		x232002_NotifyTip( sceneId, selfId, "Các hÕ ğã không nh§n nhi®m vø này t× trß¾c" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
		NewWorld( sceneId, selfId, oldsceneId, x232002_g_Back_X, x232002_g_Back_Z )
		return
	end

	--ÉèÖ giâyÀÍöºó¸´»î ği¬mÎ»ÖÃ
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x232002_g_Fuben_X, x232002_g_Fuben_Z )
end

--**********************************
--ÓĞÍæ¼ÒTÕi ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x232002_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x232002_OnCopySceneTimer( sceneId, nowTime )

	--¸±±¾Ê±ÖÓ¶ÁÈ¡¼°ÉèÖÃ
	--È¡ ği¬mÒÑ¾­Ö´ĞĞtoÕ ğµ ¶¨Ê±´ÎÊı
	local TickCount	= LuaFnGetCopySceneData_Param( sceneId, x232002_g_keySD["tim"] )
	TickCount = TickCount + 1
	--ÉèÖÃĞÂtoÕ ğµ ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, x232002_g_keySD["tim"], TickCount )

	if TickCount == 1 then
		--¸Õ¸ÕM· ra ³¡¾°Ê±,TÕi Ã¿cáiBossÖÜÎ§Ë¢³öÊıÖ»Ğ¡¹Ö
		local	iniLevel= LuaFnGetCopySceneData_Param( sceneId, x232002_g_keySD["lev"] )
		x232002_RefreshMonster( sceneId, iniLevel )
	end

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	for	i=0, membercount-1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	--C¥n Àë¿ª
	if leaveFlag == 1 then
		--Àë¿ªµ¹¼ÆÊ±¼ätoÕ ğµ ¶ÁÈ¡ºÍÉèÖÃ
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount == x232002_g_CloseTick then										--µ¹¼ÆÊ±¼äµ½,´ó¼Ò¶¼³öÈ¥°É
			local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )	--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ

			--½«µ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòtoÕ ğµ ³¡¾°
			for	i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					NewWorld( sceneId, mems[i], oldsceneId, x232002_g_Back_X, x232002_g_Back_Z )
				end
			end
		elseif leaveTickCount < x232002_g_CloseTick then
			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË,³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local strText = format( "Các hÕ s¨ r¶i khöi ğây sau %d giây!", (x232002_g_CloseTick-leaveTickCount) * x232002_g_TickTime )

			for	i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x232002_NotifyTip( sceneId, mems[i], strText )
				end
			end
		end
	elseif TickCount == 1 then
		local	CloseMin	= floor( x232002_g_LimitTotalHoldTime * x232002_g_TickTime / 60 )
		if CloseMin > 0 then
			for	i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x232002_NotifyTip( sceneId, mems[i], "Phø bän hi®n tÕi "..CloseMin.." Phút sau ğóng cØa!!" )
				end
			end
		end
	elseif TickCount >= x232002_g_LimitTotalHoldTime then						--¸±±¾×ÜÊ±¼äÏŞÖÆµ½ÁË
		--´Ë´¦ÉèÖÃ¸±±¾ÈÎÎñÓĞÊ±¼äÏŞÖÆtoÕ ğµ Çé¿ö,µ±Ê±¼äµ½ºó´¦Àí...
		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				x232002_NotifyTip( sceneId, mems[i], "Nhi®m vø th¤t bÕi, quá gi¶!" )
				--ÈÎÎñth¤t bÕi,É¾³ıÖ®
				x232002_MissionFailExe( sceneId, mems[i] )
			end
		end

		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	else
		--¶¨Ê±¼ì²é¶ÓÎé³ÉÔ±toÕ ğµ ¶ÓÎéºÅ,Èç¹û²»·ûºÏ,ÔòÌß³ö¸±±¾
		local oldteamid = LuaFnGetCopySceneData_Param( sceneId, 6 )		--È¡ ği¬m±£´ætoÕ ğµ ¶ÓÎéºÅ
		local oldsceneId

		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and IsHaveMission( sceneId, mems[i], x232002_g_MissionId ) > 0 then
				if oldteamid ~= GetTeamId( sceneId, mems[i] ) then
					--ÈÎÎñth¤t bÕi,É¾³ıÖ®
					x232002_NotifyTip( sceneId, mems[i], "Nhi®m vø th¤t bÕi, ngß½i không · trong ğúng nhóm" )
					x232002_MissionFailExe( sceneId, mems[i] )

					oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )	--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
					NewWorld( sceneId, mems[i], oldsceneId, x232002_g_Back_X, x232002_g_Back_Z )
				end
			end
		end

	end
end

--**********************************
--ĞÑÄ¿ÌáÊ¾
--**********************************
function x232002_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--**********************************
--¶Ô»°´°¿ÚĞÅÏ¢ÌáÊ¾
--**********************************
function x232002_MsgBox( sceneId, selfId, targetId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--TÕi Ã¿cáiBossÖÜÎ§Ë¢³öÊıÖ»Ğ¡¹Ö
--**********************************
function x232002_RefreshMonster( sceneId, iniLevel )

	local	ini		= floor( iniLevel / 10 )
	if ini <= 0 then
		ini	= 1
	elseif ini > 10 then
		ini	= 10
	end
	local	typ		= x232002_g_typMonster[ini]	--¹ÖÎï±àºÅ
	local	nai		= 0													--ÖÇÄÜ±àºÅ
	local	px, py														--³¡¾°Î»ÖÃ

	--È¡ ği¬m´Ë³¡¾°ÖĞtoÕ ğµ ¹ÖÎïÊıÁ¿
	local	numMon= GetMonsterCount( sceneId )
	--¹ÖÎïtoÕ ğµ ObjId
	local idMon
	--¹ÖÎï·Ö²¼
	local	lstLay	= { {-1,-1}, {1,-1}, {-1,1}, {1,1}, {0,0} }
	for i=0, numMon-1 do
		idMon				= GetMonsterObjID( sceneId, i )
		local	x, y
		x, y				= LuaFnGetWorldPos( sceneId, idMon )
		
		--´´½¨ÖÜ±ßĞ¡¹Ö
		local	objId
		local	untLay
		for _, untLay in lstLay do
			px	= floor( x ) + untLay[1]
			py	= floor( y ) + untLay[2]
			objId = LuaFnCreateMonster( sceneId, typ, px, py, nai, -1, -1 )
			SetLevel( sceneId, objId, iniLevel )
		end
	end

end

--**********************************
--ÈÎÎñth¤t bÕi
--**********************************
function x232002_MissionFailExe( sceneId, selfId )

	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
	DelMission( sceneId, selfId, x232002_g_MissionId )
	DelMission( sceneId, selfId, x232002_g_MissionIdPre )

	x232002_NotifyTip( sceneId, selfId, "Nhi®m vø b¸ h® th¯ng tñ ğµng xóa" )
	
	-- ği¬mµ½»·Êı
	local	MissionRound= GetMissionData( sceneId, selfId, MD_BAIMASI_HUAN )
	--»·ÊıÔö¼Ó1
	-- SetMissionData( sceneId, selfId, MD_BAIMASI_HUAN, MissionRound + 1 )

end
