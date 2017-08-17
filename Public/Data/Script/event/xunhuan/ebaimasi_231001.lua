--¸±±¾ÈÎÎñ
--ÕäççÆå¾Ö

--************************************************************************
--MisDescBegin

--½Å±¾ºÅ
x231001_g_ScriptId = 231001

--¸±±¾Ãû³Æ
x231001_g_CopySceneName="Trân Long KÏ Cuµc"

--ÈÎÎñºÅ
x231001_g_MissionId = 4013

--ÉÏmµt cáiÈÎÎñtoÕ ğµ ID
x231001_g_MissionIdPre = 4011

--Ä¿±êNPC
x231001_g_Name = "Vß½ng Tích Tân"

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x231001_g_IfMissionElite = 1

--ĞÆng c¤p nhi®m vø 
x231001_g_MissionLevel = 10000

--ÈÎÎñ¹éÀà
x231001_g_MissionKind = 1

--ÈÎÎñÎÄ±¾ÃèÊö
x231001_g_MissionName="Trân Long KÏ Cuµc"
x231001_g_MissionInfo="Giªt hªt 200 quân c¶ trên bàn c¶, giäi thoát Vß½ng Tích Tân ra khöi sñ kh¯ng chª cüa Trân Long KÏ Cuµc"  --ÈÎÎñÃèÊö
x231001_g_MissionTarget="Giªt chªt 200 quân c¶"	--Møc tiêu nhi®m vø
x231001_g_ContinueInfo="Các hÕ ğã giªt chªt hªt 200 quân c¶ chßa ?"	--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x231001_g_MissionComplete="Cám ½n, cu¯i cùng ta ğã ğßşc giäi thoát khöi ván c¶ này r°i"	--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°

--ÈÎÎñ½±Àø
x231001_g_MoneyBonus=5000

--********ÏÂÃæ¼¸ÏîĞúng¶¯Ì¬ÏÔÊ¾toÕ ğµ ÄÚÈİ,ÓÃÓÚTÕi ÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
--Ñ­»·ÈÎÎñtoÕ ğµ Êı¾İË÷Òı,ÀïÃæ´æ×ÅÒÑ×ötoÕ ğµ »·Êı MD_LINGLONG_HUAN
--ÈÎÎñĞúng·ñÒÑ¾­Íê³É
--MissionRound =
--**********************************ÒÔÉÏĞúng¶¯Ì¬****************************
--½ÇÉ«Mission±äÁ¿Ë ği¬m÷
x231001_g_IsMissionOkFail	= 0	--0ºÅ: µ±Ç°ÈÎÎñĞúng·ñÍê³É(0Î´Íê³É£»1Íê³É)
x231001_g_MissionRound		= 5	--Define MD_BAIMASI_HUAN from ScriptGlobal.lua
--x231001_g_DemandKill		= { {id=700,num=108} }
x231001_g_Custom					= { {id="Ğã giªt: #r#r Kì TØ",num=108} }
x231001_g_Param_killcount	=	1	--1ºÅ: É±ËÀÈÎÎñ¹ÖtoÕ ğµ ÊıÁ¿
x231001_g_Param_sceneid		= 2	--2ºÅ: µ±Ç°¸±±¾ÈÎÎñtoÕ ğµ ³¡¾°ºÅ
x231001_g_Param_teamid		= 3	--3ºÅ: ½Ó¸±±¾ÈÎÎñÊ±ºòtoÕ ğµ ¶ÓÎéºÅ
x231001_g_Param_time			= 4	--4ºÅ: Íê³É¸±±¾ËùÓÃÊ±¼ä(µ¥Î»:  giây)
--6ºÅ: ¾ßÌå¸±±¾ÊÂ¼ş½Å±¾Õ¼ÓÃ
--7ºÅ: ¾ßÌå¸±±¾ÊÂ¼ş½Å±¾Õ¼ÓÃ
--MisDescEnd
--************************************************************************

x231001_g_CopySceneType=FUBEN_ZHENGLONG	--¸±±¾ÀàĞÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ
x231001_g_LimitMembers=1			--¿ÉÒÔ½ø¸±±¾toÕ ğµ ×îĞ¡¶ÓÎéÈËÊı
x231001_g_TickTime=5				--»Øµ÷½Å±¾toÕ ğµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x231001_g_LimitTotalHoldTime=360	--¸±±¾¿ÉÒÔ´æ»îtoÕ ğµ Ê±¼ä(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x231001_g_LimitTimeSuccess=500		--¸±±¾Ê±¼äÏŞÖÆ(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÈÎÎñÍê³É
x231001_g_CloseTick=6				--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊı)
x231001_g_NoUserTime=300			--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´ætoÕ ğµ Ê±¼ä(µ¥Î»:  giây)
x231001_g_Fuben_X=40				--½øÈë¸±±¾toÕ ğµ Î»ÖÃX
x231001_g_Fuben_Z=45				--½øÈë¸±±¾toÕ ğµ Î»ÖÃZ
x231001_g_Relive_X=68				--¸±±¾¸´»îtoÕ ğµ Î»ÖÃX
x231001_g_Relive_Z=90				--¸±±¾¸´»îtoÕ ğµ Î»ÖÃZ
x231001_g_Back_X=365				--Ô´³¡¾°Î»ÖÃX
x231001_g_Back_Z=227					--Ô´³¡¾°Î»ÖÃZ
x231001_g_TotalNeedKill=108		--C¥n É±ËÀ¹ÖÎïÊıÁ¿

x231001_g_StartTick=36 --¿ªÊ¼³ö¹ÖtoÕ ğµ Ê±¼ä
x231001_g_A_B=7000	--ÓÉ²»¿É¹¥»÷×´Ì¬±ä³É¿É¹¥»÷×´Ì¬toÕ ğµ Ê±¼ä(µ¥Î»: ºÁ giây)
x231001_g_B_C=15000	--ÓÉ¿É¹¥»÷×´Ì¬±ä³ÉÈËĞÎ¹ÖÎïtoÕ ğµ Ê±¼ä(µ¥Î»: ºÁ giây)
x231001_g_MoTypeCount=9 --¹ÖÎï×éÊıÁ¿
x231001_g_Black_A={701,701,701,701,701,701,701,701,701}
x231001_g_Black_B={1780,1781,1782,1783,1784,1785,1786,1787,1788}
x231001_g_Black_C={1800,1801,1802,1803,1804,1805,1806,1807,1808}
x231001_g_White_A={700,700,700,700,700,700,700,700,700}
x231001_g_White_B={1770,1771,1772,1773,1774,1775,1776,1777,1778}
x231001_g_White_C={1790,1791,1792,1793,1794,1795,1796,1797,1798}
x231001_g_LastBoss={1850,1851,1852,1853,1854,1855,1856,1857,1858}
x231001_g_mListCount=1 --¿ÉÒÔÓÃÓÚÑ¡ÔñtoÕ ğµ ÆåÆ×ÊıÁ¿
x231001_g_mListSize=100 --Ã¿cáiÆåÆ×ÓµÓĞtoÕ ğµ ²½Êı
--ÆåÆ×Êı¾İ
x231001_g_mList = {}
x231001_g_mList[1]= {288,72,301,60,111,70,167,318,316,280,262,296,319,315,337,317,309,173,43,45,40,59,41,61,24,62,230,44,58,77,39,128,129,147,148,92,93,74,91,73,336,335,279,297,261,312,105,90,103,67,65,83,102,123,104,101,140,120,64,63,161,144,184,287,306,249,250,269,270,268,212,307,289,305,325,324,326,229,210,248,192,174,87,47,108,109,145,259,343,285,182,172,157,137,76,96,112,126,146,180}
x231001_g_mList[2]= {288,72,301,60,111,70,167,318,316,280,262,296,319,315,337,317,309,173,43,45,40,59,41,61,24,62,230,44,58,77,39,128,129,147,148,92,93,74,91,73,336,335,279,297,261,312,105,90,103,67,65,83,102,123,104,101,140,120,64,63,161,144,184,287,306,249,250,269,270,268,212,307,289,305,325,324,326,229,210,248,192,174,87,47,108,109,145,259,343,285,182,172,157,137,76,96,112,126,146,180}
x231001_g_mList[3]= {288,72,301,60,111,70,167,318,316,280,262,296,319,315,337,317,309,173,43,45,40,59,41,61,24,62,230,44,58,77,39,128,129,147,148,92,93,74,91,73,336,335,279,297,261,312,105,90,103,67,65,83,102,123,104,101,140,120,64,63,161,144,184,287,306,249,250,269,270,268,212,307,289,305,325,324,326,229,210,248,192,174,87,47,108,109,145,259,343,285,182,172,157,137,76,96,112,126,146,180}
x231001_g_mList[4]= {288,72,301,60,111,70,167,318,316,280,262,296,319,315,337,317,309,173,43,45,40,59,41,61,24,62,230,44,58,77,39,128,129,147,148,92,93,74,91,73,336,335,279,297,261,312,105,90,103,67,65,83,102,123,104,101,140,120,64,63,161,144,184,287,306,249,250,269,270,268,212,307,289,305,325,324,326,229,210,248,192,174,87,47,108,109,145,259,343,285,182,172,157,137,76,96,112,126,146,180}
x231001_g_mList[5]= {288,72,301,60,111,70,167,318,316,280,262,296,319,315,337,317,309,173,43,45,40,59,41,61,24,62,230,44,58,77,39,128,129,147,148,92,93,74,91,73,336,335,279,297,261,312,105,90,103,67,65,83,102,123,104,101,140,120,64,63,161,144,184,287,306,249,250,269,270,268,212,307,289,305,325,324,326,229,210,248,192,174,87,47,108,109,145,259,343,285,182,172,157,137,76,96,112,126,146,180}

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x231001_OnDefaultEvent( sceneId, selfId, targetId )

	if GetName( sceneId, targetId ) ~= x231001_g_Name then						--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	if IsHaveMission( sceneId, selfId, x231001_g_MissionId ) > 0 then			--Èç¹ûÍæ¼ÒÒÑ¾­½ÓÁËCái này ÈÎÎñ
		local misIndex = GetMissionIndexByID( sceneId, selfId, x231001_g_MissionId )
		local bDone = x231001_CheckSubmit( sceneId, selfId )
		if bDone == 0 then												--ÈÎÎñÎ´Íê³É
			BeginEvent( sceneId )
				AddText( sceneId, x231001_g_MissionName )
				AddText( sceneId, "Chu¦n b¸ xong chßa?" )
			EndEvent( )
			DispatchMissionInfo( sceneId, selfId, targetId, x231001_g_ScriptId, x231001_g_MissionId )
		elseif bDone == 1 then											--ÈÎÎñÒÑ¾­Íê³É
			BeginEvent( sceneId )
				AddText( sceneId, x231001_g_MissionName )
				AddText( sceneId, x231001_g_ContinueInfo )
				AddMoneyBonus( sceneId, x231001_g_MoneyBonus )
			EndEvent( )
			DispatchMissionDemandInfo( sceneId, selfId, targetId, x231001_g_ScriptId, x231001_g_MissionId, bDone )
		end
--elseif x231001_CheckAccept( sceneId, selfId ) > 0 then						--Ã»ÓĞÈÎÎñ,Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	else
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
		BeginEvent( sceneId )
			AddText( sceneId, x231001_g_MissionName )
			AddText( sceneId, x231001_g_MissionInfo )
			AddText( sceneId, "Møc tiêu nhi®m vø: " )
			AddText( sceneId, x231001_g_MissionTarget )
			AddText( sceneId, " " )
			AddMoneyBonus( sceneId, x231001_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo( sceneId, selfId, targetId, x231001_g_ScriptId, x231001_g_MissionId )
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x231001_OnEnumerate( sceneId, selfId, targetId )
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ»òÕßThöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
--if IsHaveMission( sceneId, selfId, x231001_g_MissionId ) > 0 or x231001_CheckAccept( sceneId, selfId ) > 0 then
	if IsHaveMission( sceneId, selfId, x231001_g_MissionIdPre ) == 0 then
		x231001_MsgBox( sceneId, selfId, targetId, "  ĞÕi sß Trí Thanh cüa BÕch Mã Tñ ğang ğşi ngß½i!" )
		return
	else
		local	misIndex	= GetMissionIndexByID( sceneId, selfId, x231001_g_MissionIdPre )
		if GetMissionParam( sceneId, selfId, misIndex, x231001_g_IsMissionOkFail ) == 1 then
			x231001_MsgBox( sceneId, selfId, targetId, "  Ngß½i có th¬ quay v« BÕch Mã Tñ tìm ĞÕi sß Trí Thanh lînh t£ng thß·ng!" )
			return
		end
	end

	AddNumText( sceneId, x231001_g_ScriptId, x231001_g_MissionName,4,-1 )
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x231001_CheckAccept( sceneId, selfId )
	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		x231001_NotifyFailTips( sceneId, selfId, "Các hÕ phäi gia nh§p vào mµt ğµi ngû" )
		return 0
	end

	if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then
		x231001_NotifyFailTips( sceneId, selfId, "Ngß¶i không phäi là nhóm trß·ng" )
		return 0
	end

	--È¡ ği¬mÍæ¼Ò¸½½ütoÕ ğµ ¶ÓÓÑÊıÁ¿(°üÀ¨×Ô¼º)
	local nearteammembercount = GetNearTeamCount( sceneId, selfId )
	if nearteammembercount ~= LuaFnGetTeamSize( sceneId, selfId ) then
		x231001_NotifyFailTips( sceneId, selfId, "Ngß½i có nhóm viên không · g¥n ğây" )
		return 0
	end

	if nearteammembercount < x231001_g_LimitMembers then
		x231001_NotifyFailTips( sceneId, selfId, "S¯ ngß¶i trong ğµi ngû cüa các hÕ không ğü" )
		return 0
	end


	--¼ì²âĞ¡¶ÓÖĞĞúng·ñÓĞÈËÈÎÎñ¼ÇÂ¼ÒÑÂú, ¶ÓÓÑĞúng·ñÒÑ¾­½Ó¹ı´ËÈÎÎñ
	local member
	local i
	local misIndex

	for	i=0, nearteammembercount-1 do
		member = GetNearTeamMember( sceneId, selfId, i )

		if IsHaveMission( sceneId, member, x231001_g_MissionIdPre ) <= 0 then
			x231001_NotifyFailTips( sceneId, selfId, "Trong nhóm có ngß¶i chßa nh§n nhi®m vø BÕch Mã Tñ" )
			return 0
		end

		misIndex = GetMissionIndexByID( sceneId, member, x231001_g_MissionIdPre )
		if GetMissionParam( sceneId, member, misIndex, 7 ) ~= 1 then
			x231001_NotifyFailTips( sceneId, selfId, "Trong nhóm có ngß¶i ğã nhi®m vø BÕch Mã Tñ" )
			return 0
		end

		if GetMissionParam( sceneId, member, misIndex, x231001_g_IsMissionOkFail ) == 1 then
			x231001_NotifyFailTips( sceneId, selfId, "Trong nhóm có ngß¶i ğã Hoàn t¤t nhi®m vø này" )
			return 0
		end

		if GetMissionCount( sceneId, member ) >= 20 then						--¶ÓÓÑÉíÉÏÈÎÎñÊıÁ¿Ğúng·ñ´ïµ½ÉÏÏŞ20cái
			x231001_NotifyFailTips( sceneId, selfId, "Ghi chép nhi®m vø cüa ngß¶i trong ğµi ngû ğã ğ¥y" )
			return 0
		end

		if IsHaveMission( sceneId, member, x231001_g_MissionId ) > 0 then
			--¶ÓÓÑĞúng·ñÒÑ¾­½Ó¹ı´ËÈÎÎñ»òÕßÁíÍâmµt cáiÈÎÎñ
			x231001_NotifyFailTips( sceneId, selfId, "Trong ğµi ğã có ngß¶i nh§n nhi®m vø này" )
			return 0
		end
	end

	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x231001_OnAccept( sceneId, selfId )

	local teamid = GetTeamId( sceneId, selfId )

	if IsHaveMission( sceneId, selfId, x231001_g_MissionId ) > 0 then					--ÒÑ¾­ÓĞÈÎÎñtoÕ ğµ 
		local misIndex = GetMissionIndexByID( sceneId, selfId, x231001_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x231001_g_Param_sceneid )
		local saveteamid = GetMissionParam( sceneId, selfId, misIndex, x231001_g_Param_teamid )

		if copysceneid >= 0 and teamid == saveteamid then						--½ø¹ı¸±±¾
			--½«×Ô¼º´«ËÍµ½¸±±¾³¡¾°
			if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				NewWorld( sceneId, selfId, copysceneid, x231001_g_Fuben_X, x231001_g_Fuben_Z )
			else
				x231001_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi, hãy bö ği và nh§n lÕi" )
				SetMissionByIndex( sceneId, selfId, misIndex, x231001_g_IsMissionOkFail, 2 )
			end

			return
		end
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	if x231001_CheckAccept( sceneId, selfId ) == 0 then									--ÅĞ¶Ï½ÓÊÕÌõ¼ş
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
		AddMission( sceneId, member, x231001_g_MissionId, x231001_g_ScriptId, 1, 0, 0 )

		misIndex = GetMissionIndexByID( sceneId, member, x231001_g_MissionId )

		SetMissionByIndex( sceneId, member, misIndex, x231001_g_IsMissionOkFail, 0 )	--½«ÈÎÎñtoÕ ğµ µÚ0ºÅÊı¾İÉèÖÃÎª0,±íÊ¾Î´Íê³ÉtoÕ ğµ ÈÎÎñ
		SetMissionByIndex( sceneId, member, misIndex, x231001_g_Param_sceneid, -1 )		--½«ÈÎÎñtoÕ ğµ µÚ2ºÅÊı¾İÉèÖÃÎª-1, ÓÃÓÚ±£´æ¸±±¾toÕ ğµ ³¡¾°ºÅ
		SetMissionByIndex( sceneId, member, misIndex, x231001_g_Param_teamid, teamid )	--½«ÈÎÎñtoÕ ğµ µÚ3ºÅÊı¾İ¶ÓÎéºÅ
	end

	x231001_MakeCopyScene( sceneId, selfId, nearteammembercount )
end

--**********************************
--·ÅÆú
--**********************************
function x231001_OnAbandon( sceneId, selfId )

	local misIndex = GetMissionIndexByID( sceneId, selfId, x231001_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x231001_g_Param_sceneid )

	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
	DelMission( sceneId, selfId, x231001_g_MissionId )

	if sceneId == copyscene then										--Èç¹ûTÕi ¸±±¾ÀïÉ¾³ıÈÎÎñ,ÔòÖ±½Ó´«ËÍ»Ø
		x231001_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )	--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
		NewWorld( sceneId, selfId, oldsceneId, x231001_g_Back_X, x231001_g_Back_Z )
	end
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x231001_MakeCopyScene( sceneId, selfId, nearmembercount )

	local mems = {}
	local mylevel = 0
	local i

	for	i=0, nearmembercount-1 do
		mems[i] = GetNearTeamMember( sceneId, selfId, i )
		mylevel = mylevel + GetLevel( sceneId, mems[i] )
	end

	mylevel = mylevel/nearmembercount

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	LuaFnSetSceneLoad_Map( sceneId, "zhenlong.nav" )						--µØÍ¼Ğúng±ØĞëÑ¡È¡toÕ ğµ ,¶øÇÒ±ØĞëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x231001_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x231001_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, x231001_g_CopySceneType )				--ÉèÖÃ¸±±¾Êı¾İ,ÕâÀï½«0ºÅË÷ÒıtoÕ ğµ Êı¾İÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param( sceneId, 1, x231001_g_ScriptId )					--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, 6, GetTeamId( sceneId, selfId ) )	--±£´æ¶ÓÎéºÅ
	LuaFnSetCopySceneData_Param( sceneId, 7, 0 )							--É±ËÀBosstoÕ ğµ ÊıÁ¿
	LuaFnSetCopySceneData_Param( sceneId, 8, random(1, x231001_g_mListCount) )		--Ñ¡ÓÃtoÕ ğµ ÆåÆ×
	LuaFnSetCopySceneData_Param( sceneId, 9, 0 )							--ÒÑ¾­ÏÂÁËtoÕ ğµ ²½Êı

  local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end

	LuaFnSetCopySceneData_Param( sceneId, 10, iniLevel / 10 )				--¼ÇÂ¼Ëù²úÉútoÕ ğµ ¹ÖÎï×é

	LuaFnSetSceneLoad_Monster( sceneId, "zhenlong_monster_" .. iniLevel .. ".ini" )

	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --c¤p±ğ²î,CopyScene_LevelGap TÕi  scene.lua ÖĞ¸³Öµ

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
	if bRetSceneID > 0 then
		x231001_NotifyFailTips( sceneId, selfId, "D¸ch chuy¬n thành công!" )
	else
		x231001_NotifyFailTips( sceneId, selfId, "S¯ lßşng bän sao ğã ğªn gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!" )

		--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
		for	i=0, nearmembercount-1 do
			DelMission( sceneId, mems[i], x231001_g_MissionId )
		end
	end
end

--**********************************
--¼ÌĞø
--**********************************
function x231001_OnContinue( sceneId, selfId, targetId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x231001_g_MissionId )
	if GetMissionParam( sceneId, selfId, misIndex, x231001_g_Param_sceneid ) >= 1 then
		BeginEvent( sceneId )
			AddText( sceneId, "Xin chúc m×ng, ngß½i s¨ ğÕt ğßşc #{_MONEY"..x231001_g_MoneyBonus.."} t£ng thß·ng cüa!" )
		EndEvent( sceneId )
		DispatchMissionContinueInfo( sceneId, selfId, targetId, x231001_g_ScriptId, x231001_g_MissionId )
	end
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x231001_CheckSubmit( sceneId, selfId, selectRadioId )
	--ÅĞ¶ÏÈÎÎñĞúng·ñÒÑ¾­Íê³É
	local misIndex = GetMissionIndexByID( sceneId, selfId, x231001_g_MissionId )
	local	ret	= GetMissionParam( sceneId, selfId, misIndex, x231001_g_IsMissionOkFail )
	if ret == 1 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ìá½»
--**********************************
function x231001_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	if GetName( sceneId, targetId ) ~= x231001_g_Name then								--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	if x231001_CheckSubmit( sceneId, selfId, selectRadioId ) > 0 then					--ÒÑ¾­Hoàn t¤t nhi®m vøÁË
		--local iHuan = GetMissionData( sceneId, selfId, 10 )					--È¡ ği¬m×Ü¹²×ö¹ıtoÕ ğµ »·Êı
		--Ìí¼ÓÈÎÎñ½±Àø
		local money = x231001_g_MoneyBonus
		AddMoney( sceneId, selfId, money )
		BeginEvent( sceneId )
			AddText( sceneId, x231001_g_MissionComplete )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
		DelMission( sceneId, selfId, x231001_g_MissionId )
		local misIndex = GetMissionIndexByID( sceneId, selfId, x231001_g_MissionIdPre )	-- ği¬mµ½ÈÎÎñtoÕ ğµ ĞòÁĞºÅ
		SetMissionByIndex( sceneId, selfId, misIndex, x231001_g_IsMissionOkFail, 1 )	--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ1Î»ÖÃ1 (ÈÎÎñÍê³ÉÇé¿ö)
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x231001_OnKillObject( sceneId, selfId, objdataId ,objId )

	--Ğúng·ñĞúng¸±±¾
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--Ğúng·ñĞúngËùC¥n toÕ ğµ ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x231001_g_CopySceneType then
		return
	end

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														--Èç¹û¸±±¾ÒÑ¾­±»ÖÃ³É¹Ø±Õ×´Ì¬,ÔòÉ±¹ÖÎŞĞ§
		return
	end

	--È¡ ği¬mµ±Ç°³¡¾°ÀïtoÕ ğµ ÈËÊı
	local num = LuaFnGetCopyScene_HumanCount( sceneId )

	local killednumber = LuaFnGetCopySceneData_Param( sceneId, 7 )				--É±ËÀ¹ÖtoÕ ğµ ÊıÁ¿
	killednumber = killednumber + 1
	LuaFnSetCopySceneData_Param( sceneId, 7, killednumber )						--ÉèÖÃÉ±ËÀBosstoÕ ğµ ÊıÁ¿

	local i
	local misIndex
	local humanObjId
	--local killedcount

	if killednumber < x231001_g_TotalNeedKill then

		local strText = format( "Ğã giªt Kì TØ: %d/%d", killednumber, x231001_g_TotalNeedKill )

		for i=0, num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId( sceneId, i )				--È¡ ği¬mµ±Ç°³¡¾°ÀïÈËtoÕ ğµ objId

			if LuaFnIsObjValid( sceneId, humanObjId ) == 1 then					--²»TÕi ³¡¾°toÕ ğµ ²»×ö´Ë²Ù×÷
				x231001_NotifyFailTips( sceneId, humanObjId, strText )

				misIndex = GetMissionIndexByID( sceneId, humanObjId, x231001_g_MissionId )					--È¡ ği¬mÈÎÎñÊı¾İË÷ÒıÖµ
				--killedcount = GetMissionParam( sceneId, humanObjId, misIndex, x231001_g_Param_killcount )	--È¡ ği¬mÒÑ¾­É±ÁËtoÕ ğµ ¹ÖÎïÊı
				--killedcount = killedcount + 1
				SetMissionByIndex( sceneId, humanObjId, misIndex, x231001_g_Param_killcount, killednumber )	--ÉèÖÃÈÎÎñÊı¾İ
			end
		end
	elseif killednumber >= x231001_g_TotalNeedKill then
		--ÉèÖÃÈÎÎñÍê³É±êÖ¾
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )

		--È¡ ği¬mÒÑ¾­Ö´ĞĞtoÕ ğµ ¶¨Ê±´ÎÊı
		local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )
		local strText = format( "ÒÑÉ±ËÀÆå×Ó:  %d/%d", x231001_g_TotalNeedKill, x231001_g_TotalNeedKill )
		local strText2 = format( "Nhi®m vø hoàn thành, sau %d giây s¨ chuy¬n t¾i v¸ trí vào cØa", x231001_g_CloseTick * x231001_g_TickTime )

		for i=0, num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId( sceneId, i )									--È¡ ği¬mµ±Ç°³¡¾°ÀïÈËtoÕ ğµ objId

			if LuaFnIsObjValid( sceneId, humanObjId ) == 1 then										--²»TÕi ³¡¾°toÕ ğµ ²»×ö´Ë²Ù×÷
				misIndex = GetMissionIndexByID( sceneId, humanObjId, x231001_g_MissionId)					--È¡ ği¬mÈÎÎñÊı¾İË÷ÒıÖµ

				--killedcount = GetMissionParam( sceneId, humanObjId, misIndex, x231001_g_Param_killcount )	--È¡ ği¬mÒÑ¾­É±ÁËtoÕ ğµ ¹ÖÎïÊı
				--killedcount = killedcount + 1
				SetMissionByIndex( sceneId, humanObjId, misIndex, x231001_g_Param_killcount, x231001_g_TotalNeedKill )	--ÉèÖÃÈÎÎñÊı¾İ

				--½«ÈÎÎñtoÕ ğµ µÚ1ºÅÊı¾İÉèÖÃÎª1,±íÊ¾Íê³ÉtoÕ ğµ ÈÎÎñ
				SetMissionByIndex( sceneId, humanObjId, misIndex, x231001_g_IsMissionOkFail, 1 )					--ÉèÖÃÈÎÎñÊı¾İ
				--Íê³É¸±±¾ËùÓÃÊ±¼ä
				SetMissionByIndex( sceneId, humanObjId, misIndex, x231001_g_Param_time, TickCount * x231001_g_TickTime )	--ÉèÖÃÈÎÎñÊı¾İ

				x231001_NotifyFailTips( sceneId, humanObjId, strText )
				x231001_NotifyFailTips( sceneId, humanObjId, strText2 )
			end
		end
	end
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x231001_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x231001_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x231001_OnCopySceneReady( sceneId, destsceneId )

	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )							--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
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

	if nearteammembercount < x231001_g_LimitMembers then
		x231001_NotifyFailTips( sceneId, leaderObjId, "S¯ ngß¶i trong ğµi ngû cüa các hÕ không ğü" )
		return
	end

	local member
	local misIndex
	for	i=0, nearteammembercount-1 do
		member = GetNearTeamMember( sceneId, leaderObjId, i )

		if LuaFnIsCanDoScriptLogic( sceneId, member ) == 1 then			-- ´¦ÓÚ¿ÉÒÔÖ´ĞĞÂß¼­toÕ ğµ ×´Ì¬
			if IsHaveMission( sceneId, member, x231001_g_MissionId ) > 0 then
				misIndex = GetMissionIndexByID( sceneId, member, x231001_g_MissionId )

				--½«ÈÎÎñtoÕ ğµ µÚ2ºÅÊı¾İÉèÖÃÎª¸±±¾toÕ ğµ ³¡¾°ºÅ
				SetMissionByIndex( sceneId, member, misIndex, x231001_g_Param_sceneid, destsceneId )

				NewWorld( sceneId, member, destsceneId, x231001_g_Fuben_X, x231001_g_Fuben_Z )
			else
				x231001_NotifyFailTips( sceneId, member, "Các hÕ ğã không nh§n nhi®m vø này t× trß¾c" )
			end
		end
	end
end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x231001_OnPlayerEnter( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x231001_g_MissionId ) == 0 then				--Èç¹û½øÈë¸±±¾Ç°É¾³ıÈÎÎñ,ÔòÖ±½Ó´«ËÍ»Ø
		x231001_NotifyFailTips( sceneId, selfId, "Các hÕ ğã không nh§n nhi®m vø này t× trß¾c" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
		NewWorld( sceneId, selfId, oldsceneId, x231001_g_Back_X, x231001_g_Back_Z )
		return
	end

	--ÉèÖ giâyÀÍöºó¸´»î ği¬mÎ»ÖÃ
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x231001_g_Relive_X, x231001_g_Relive_Z )
end

--**********************************
--ÓĞÍæ¼ÒTÕi ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x231001_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x231001_OnCopySceneTimer( sceneId, nowTime )

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

		if leaveTickCount == x231001_g_CloseTick then										--µ¹¼ÆÊ±¼äµ½,´ó¼Ò¶¼³öÈ¥°É
			local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )			--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ

			--½«µ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòtoÕ ğµ ³¡¾°
			for	i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					NewWorld( sceneId, mems[i], oldsceneId, x231001_g_Back_X, x231001_g_Back_Z )
				end
			end
		elseif leaveTickCount < x231001_g_CloseTick then
			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË,³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local strText = format( "Các hÕ s¨ r¶i khöi ğây sau %d giây!", (x231001_g_CloseTick-leaveTickCount) * x231001_g_TickTime )

			for	i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x231001_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	elseif TickCount == x231001_g_LimitTimeSuccess then
		--´Ë´¦ÉèÖÃÓĞÊ±¼äÏŞÖÆtoÕ ğµ ÈÎÎñÍê³É´¦Àí
		local misIndex
		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				x231001_NotifyFailTips( sceneId, mems[i], "Th¶i gian hoàn t¤t nhi®m vø ğã t¾i, hoàn thành!" )

				misIndex = GetMissionIndexByID( sceneId, mems[i], x231001_g_MissionId )		--È¡ ği¬mÈÎÎñÊı¾İË÷ÒıÖµ
				--½«ÈÎÎñtoÕ ğµ µÚ1ºÅÊı¾İÉèÖÃÎª1,±íÊ¾Íê³ÉtoÕ ğµ ÈÎÎñ
				SetMissionByIndex( sceneId, mems[i], misIndex, x231001_g_IsMissionOkFail, 1 )		--ÉèÖÃÈÎÎñÊı¾İ
				--Íê³É¸±±¾ËùÓÃÊ±¼ä
				SetMissionByIndex( sceneId, mems[i], misIndex, x231001_g_Param_time, TickCount * x231001_g_TickTime )	--ÉèÖÃÈÎÎñÊı¾İ
			end
		end

		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	elseif TickCount == x231001_g_LimitTotalHoldTime then									--¸±±¾×ÜÊ±¼äÏŞÖÆµ½ÁË
		--´Ë´¦ÉèÖÃ¸±±¾ÈÎÎñÓĞÊ±¼äÏŞÖÆtoÕ ğµ Çé¿ö,µ±Ê±¼äµ½ºó´¦Àí...
		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				DelMission( sceneId, mems[i], x231001_g_MissionId )							--ÈÎÎñth¤t bÕi,É¾³ıÖ®
				x231001_NotifyFailTips( sceneId, mems[i], "Nhi®m vø th¤t bÕi, quá gi¶!" )
			end
		end

		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	else
		--¶¨Ê±¼ì²é¶ÓÎé³ÉÔ±toÕ ğµ ¶ÓÎéºÅ,Èç¹û²»·ûºÏ,ÔòÌß³ö¸±±¾
		local oldteamid = LuaFnGetCopySceneData_Param( sceneId, 6 )					--È¡ ği¬m±£´ætoÕ ğµ ¶ÓÎéºÅ
		local oldsceneId

		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and IsHaveMission( sceneId, mems[i], x231001_g_MissionId ) > 0 then
				if oldteamid ~= GetTeamId( sceneId, mems[i] ) then
					DelMission( sceneId, mems[i], x231001_g_MissionId )						--ÈÎÎñth¤t bÕi,É¾³ıÖ®
					x231001_NotifyFailTips( sceneId, mems[i], "Nhi®m vø th¤t bÕi, ngß½i không · trong ğúng nhóm" )

					oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )			--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
					NewWorld( sceneId, mems[i], oldsceneId, x231001_g_Back_X, x231001_g_Back_Z )
				end
			end
		end

		--¹ÖÎï¿ØÖÆÂß¼­
		if TickCount >= x231001_g_StartTick and membercount > 0 then						--Ê±¼äµ½,¿ªÊ¼³ö¹Ö
			local mgroup = LuaFnGetCopySceneData_Param( sceneId, 10 )				--¼ÇÂ¼Ëù²úÉútoÕ ğµ ¹ÖÎï×é
			if mgroup > x231001_g_MoTypeCount then
				--print( "Error! " )
				mgroup = 1
			end

			--±ä»¯¹ÖÎï
			local monsterobjid = -1
			local monstercount = GetMonsterCount( sceneId )
			local monstertype
			local newMonsterType = -1
			local newAIType = -1
			local mcreatetime
			local PosX
			local PosZ
			local LevelGap = LuaFnGetCopySceneData_Param( sceneId, CopyScene_LevelGap )
			for i=0, monstercount-1 do
				monsterobjid = GetMonsterObjID( sceneId, i )
				if LuaFnIsCharacterLiving( sceneId, monsterobjid ) > 0 then			--»îtoÕ ğµ ¹ÖÎï
					monstertype = GetMonsterDataID( sceneId, monsterobjid )			--¹ÖÎïÀàĞÍ
					mcreatetime = GetObjCreateTime( sceneId, monsterobjid )			--¹ÖÎï´´½¨Ê±¼ä
					PosX, PosZ = LuaFnGetWorldPos( sceneId, monsterobjid )
					PosX = floor( PosX )
					PosZ = floor( PosZ )

					if monstertype == x231001_g_Black_A[mgroup] then
						if nowTime >= mcreatetime + x231001_g_A_B then						--C¥n ½«¹ÖÎï±ä³ÉB×´Ì¬ÁË
							newMonsterType = x231001_g_Black_B[mgroup]
							newAIType = 7
						end
					elseif monstertype == x231001_g_Black_B[mgroup] then
						if nowTime >= mcreatetime + x231001_g_A_B + x231001_g_B_C then				--C¥n ½«¹ÖÎï±ä³ÉC×´Ì¬ÁË
							newMonsterType = x231001_g_Black_C[mgroup]
							newAIType = 5
						end
					elseif monstertype == x231001_g_White_A[mgroup] then
						if nowTime >= mcreatetime + x231001_g_A_B then						--C¥n ½«¹ÖÎï±ä³ÉB×´Ì¬ÁË
							newMonsterType = x231001_g_White_B[mgroup]
							newAIType = 7
						end
					elseif monstertype == x231001_g_White_B[mgroup] then
						if nowTime >= mcreatetime + x231001_g_A_B + x231001_g_B_C then				--C¥n ½«¹ÖÎï±ä³ÉC×´Ì¬ÁË
							newMonsterType = x231001_g_White_C[mgroup]
							newAIType = 5
						end
					end

					if newMonsterType ~= -1 and monstertype ~= x231001_g_LastBoss[mgroup] then
						LuaFnDeleteMonster( sceneId, monsterobjid )
						monsterobjid = LuaFnCreateMonster( sceneId, newMonsterType, PosX, PosZ, newAIType, 0, -1 )
						SetLevel( sceneId, monsterobjid, GetLevel( sceneId, monsterobjid ) + LevelGap )
					end
				end
			end

			if TickCount == x231001_g_StartTick then
				for	i=0, membercount-1 do
					x231001_NotifyFailTips( sceneId, mems[i], "Cuµc chiªn b¡t ğ¥u!" )
				end
			end

			local QiPu = LuaFnGetCopySceneData_Param( sceneId, 8 )					--È¡ ği¬mÆåÆ×
			local PressStep = LuaFnGetCopySceneData_Param( sceneId, 9 )				--È¡ ği¬mÒÑ¾­ÏÂÁËtoÕ ğµ ²½Êı
			if PressStep < x231001_g_mListSize then
				PressStep = PressStep + 1
				local QiPuValue = 0

				if QiPu >= 1 and QiPu <= getn(x231001_g_mList) then
					QiPuValue = x231001_g_mList[QiPu][PressStep]
				else
					QiPuValue = x231001_g_mList[getn(x231001_g_mList)][PressStep]
				end

				--¸ù¾İÆåÆ×Éú³É¹ÖÎï
				PosX, PosZ = x231001_IndexToPos( QiPuValue )
				MonsterType = mod( PressStep, 2 )

				newAIType = 3
				if PressStep == x231001_g_mListSize then									--×îºómµt cáiË¢toÕ ğµ ÌØÊâ¹ÖÎï
					newMonsterType = x231001_g_LastBoss[mgroup]
					newAIType = 0
				else
					if MonsterType == 0 then
						newMonsterType = x231001_g_Black_A[mgroup]
					else
						newMonsterType = x231001_g_White_A[mgroup]
					end
				end

				monsterobjid = LuaFnCreateMonster( sceneId, newMonsterType, PosX, PosZ, newAIType, -1, -1 )
				SetLevel( sceneId, monsterobjid, GetLevel( sceneId, monsterobjid ) + LevelGap )
				--print( QiPu, PressStep, QiPuValue, MonsterType, monsterobjid )

				LuaFnSetCopySceneData_Param( sceneId, 9, PressStep )				--ÉèÖÃĞÂtoÕ ğµ ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
			end
		end
	end
end

function x231001_IndexToPos( index )
	xP = floor( index/19 )
	zP = mod( index, 19 )
	return xP*3 + 36 + 1, zP*3 + 36 + 1
end

function x231001_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent(sceneId)
		AddText(sceneId, Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end

--**********************************
--¶Ô»°´°¿ÚĞÅÏ¢ÌáÊ¾
--**********************************
function x231001_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
