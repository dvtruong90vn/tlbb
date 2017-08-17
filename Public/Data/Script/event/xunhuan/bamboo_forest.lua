-- Á¬»·¸±±¾ÈÎÎñ
-- ÖñÁÖ

--************************************************************************
--MisDescBegin

-- ½Å±¾ºÅ
x050101_g_ScriptId = 050101

-- ÈÎÎñºÅ
x050101_g_MissionId = 1261					-- 1260 - 1269

-- ÉÏmµt cáiÈÎÎñtoÕ ğµ  ID
-- g_MissionIdPre = 1260

-- Møc tiêu nhi®m vø NPC
x050101_g_Name = "Hoa Kiªm Vû"

--ÈÎÎñ¹éÀà
x050101_g_MissionKind = 8

--ĞÆng c¤p nhi®m vø 
x050101_g_MissionLevel = 10000

-- ÈÎÎñÎÄ±¾ÃèÊö
x050101_g_MissionName = "Tr× hÕi"
x050101_g_MissionInfo = "    "														-- ÈÎÎñÃèÊö
x050101_g_MissionTarget = "    Hoa Kiªm Vû · Tô Châu #{_INFOAIM354,203,1, Hoa Kiªm Vû} yêu c¥u các hÕ giªt chªt 80 con Dã Hùng và H°ng Hùng Vß½ng.#r    #{FQSH_090206_01}"						-- Møc tiêu nhi®m vø
x050101_g_ContinueInfo = "    Các các hÕ ğã chu¦n b¸ r°i m¶i ğªn Trúc Lâm tiêu di®t H°ng Hùng Vß½ng!"					-- Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x050101_g_SubmitInfo = "    Nhi®m vø làm thª nào r°i?"										-- Ìá½»Ê±toÕ ğµ ´ğ¸´
x050101_g_MissionComplete = "    Các các hÕ ğã giªt chªt H°ng Báo Vß½ng r°i, thì theo ğã thoä thu§n ta s¨ cho các các hÕ biªt lai lich cüa l®nh bài. Các các hÕ mang bÑc thß này giao cho #{_INFOAIM62,162,1, Ti«n Hoành Vû}, huynh ¤y tñ s¨ hi¬u m÷i vi®c."	--Hoàn t¤t nhi®m vønpcËµtoÕ ğµ »°

x050101_g_IsMissionOkFail = 0														-- 0 ºÅ: µ±Ç°ÈÎÎñĞúng·ñÍê³É(0Î´Íê³É£»1Íê³É£»2th¤t bÕi)
x050101_g_DemandKill = { { id = 4120, num = 1 }, { id = 4110, num = 80 } }			-- 1 ~ 2 ºÅ,¹ÖÎïĞÅÏ¢
x050101_g_Param_sceneid = 3															-- 3 ºÅ: µ±Ç°¸±±¾ÈÎÎñtoÕ ğµ ³¡¾°ºÅ

-- ÈÎÎñ½±Àø

--MisDescEnd
--************************************************************************

x050101_g_DemandKillGroup = { 2, 1 }		-- 1 ~ 2 ºÅ¹ÖÎï¶ÔÓ¦toÕ ğµ  GroupID ºÅ,Óë x050101_g_DemandKill mµt mµt ¶ÔÓ¦
x050101_g_BossGroup = 2						-- Boss Group ID
x050101_g_Token = 40004315					-- ÁîÅÆºÅ
x050101_g_Mail = 40004316					-- ÊéĞÅ

x050101_g_NumText_Main = 1					-- ½ÓÈÎÎñtoÕ ğµ Ñ¡Ïî
x050101_g_NumText_EnterCopyScene = 2		-- ÒªÇó½øÈë¸±±¾toÕ ğµ Ñ¡Ïî

x050101_g_CopySceneMap = "zhulin.nav"
x050101_g_CopySceneArea = "zhulin_area.ini"
x050101_g_CopySceneMonsterIni = "zhulin_monster_%d.ini"

x050101_g_CopySceneType = FUBEN_ZHULIN		-- ¸±±¾ÀàĞÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ
x050101_g_LimitMembers = 1					-- ¿ÉÒÔ½ø¸±±¾toÕ ğµ ×îĞ¡¶ÓÎéÈËÊı
x050101_g_LevelLimit = 30					-- ¿ÉÒÔ½øÈë¸±±¾toÕ ğµ ×îµÍc¤p±ğ
x050101_g_TickTime = 5						-- »Øµ÷½Å±¾toÕ ğµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x050101_g_LimitTotalHoldTime = 360			-- ¸±±¾¿ÉÒÔ´æ»îtoÕ ğµ Ê±¼ä(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x050101_g_CloseTick = 6						-- ¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊı)
x050101_g_NoUserTime = 30					-- ¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´ætoÕ ğµ Ê±¼ä(µ¥Î»:  giây)

x050101_g_Fuben_X = 97
x050101_g_Fuben_Z = 113
x050101_g_Back_X = 354
x050101_g_Back_Z = 204

x050101_g_Fuben_Relive_X = 97
x050101_g_Fuben_Relive_Z = 113

-- ¹ã²¥ÏûÏ¢
x050101_g_BroadcastMsg = {
	"#Y"..x050101_g_Name .. ": #W#{_INFOUSR$N}#PğÕi hi®p th§t là mÕnh, mµt quy«n ğã ğánh b©p #{_BOSS46}#P ğã có #{_INFOUSR$N}#P ğÕi hi®p ·, tên trµm nào dám ngang ngßşc?",
	"#Y"..x050101_g_Name .. ": #W#{_INFOUSR$N}#pğÕi hi®p th§t là khá, quét sÕch r×ng trúc Tô Châu. Mµt tr§n giáng xu¯ng ğã ğ¶i, không có #GH°ng Hùng#P không d©p n±i",
	"#Y"..x050101_g_Name .. "; #W#{_INFOUSR$N}#pğÕi hi®p th§t là lşi hÕi, danh tiªng nghîa hi®p lßu danh ngàn ğ¶i. Võ công càng không phäi nói, phàm là#G H°ng Hùng #Pğ«u vŞ ğ¥u hªt"
}

x050101_g_TakeTimes = 10											-- Ã¿Ìì×î¶àLînh ´ÎÊı
--**********************************
-- ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x050101_OnDefaultEvent( sceneId, selfId, targetId )	--  ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	if GetName( sceneId, targetId ) ~= x050101_g_Name then		-- ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	local numText = GetNumText()

	if IsHaveMission( sceneId, selfId, x050101_g_MissionId ) == 0 then
		if numText == x050101_g_NumText_Main then
			if x050101_CheckAccept( sceneId, selfId ) > 0 then
				--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
				BeginEvent( sceneId )
					AddText( sceneId, x050101_g_MissionName )
					AddText( sceneId, "    Khá l¡m, Ta quä thñc có th¬ nói cho ngß½i biªt lai l¸ch cüa t¤m l®nh bài này, nhßng trß¾c ğó, ngß½i phäi giúp ta mµt chuy®n" )
					AddText( sceneId, "    Trong r×ng trúc ngoài thành Tô Châu có 1ğàn g¤u hoang, chúng v¯n r¤t ngoan, nhßng t× khi có 1 con g¤u ğö lên làm thü lînh, chúng tr· nên hung dæ, g¥n ğây liên tøc t¤n công vào thôn. Nhßng tri«u ğình không h« gØi quân lính t¾i ğ¯i phó lû ác tång này. Ğ¬ tránh cho lû ác tång không làm hÕi t¾i dân làng, ta mu¯n nhanh chóng tìm cách di®t tr× con g¤u ğö ğáng chªt kia" )
					AddText( sceneId, "    Nªu ngß½i có th¬ giúp ta giªt ğßşc con g¤u ğö, ta s¨ k¬ cho ngß½i ngay v« lai l¸ch t¤m l®nh bài này" )
					AddText( sceneId, "#{M_MUBIAO}" )
					AddText( sceneId, x050101_g_MissionTarget )
				EndEvent( )
				DispatchMissionInfo( sceneId, selfId, targetId, x050101_g_ScriptId, x050101_g_MissionId )
			end
		end
	else
		if numText == x050101_g_NumText_Main then
			local bDone = x050101_CheckSubmit( sceneId, selfId )

			BeginEvent( sceneId )
				AddText( sceneId, x050101_g_MissionName )

				if bDone == 1 then
					AddText( sceneId, x050101_g_SubmitInfo )
				else
					AddText( sceneId, x050101_g_ContinueInfo )
					x050101_AskEnterCopyScene( sceneId, selfId, targetId )
					DispatchEventList( sceneId, selfId, targetId )
					return
				end
			EndEvent( )
			DispatchMissionDemandInfo( sceneId, selfId, targetId, x050101_g_ScriptId, x050101_g_MissionId, bDone )
		elseif numText == x050101_g_NumText_EnterCopyScene then
			x050101_AcceptEnterCopyScene( sceneId, selfId, targetId )
		end
	end
end

--**********************************
-- ²»ÄÜÓĞÆäËûtoÕ ğµ ÈÎÎñ,Ã»ÓĞTr· v« 0,ÓĞTr· v« 1
--**********************************
function x050101_CheckConflictMission( sceneId, selfId )
	local missionId = 0

	for missionId = 1260, x050101_g_MissionId - 1 do
		if IsHaveMission( sceneId, selfId, missionId ) > 0 then
			return 1
		end
	end

	for missionId = x050101_g_MissionId + 1, 1269 do
		if IsHaveMission( sceneId, selfId, missionId ) > 0 then
			return 1
		end
	end

	return 0
end

--**********************************
-- ÁĞ¾ÙÊÂ¼ş
--**********************************
function x050101_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x050101_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	-- ²»ÄÜÓĞÆäËûtoÕ ğµ ÈÎÎñ
	if x050101_CheckConflictMission( sceneId, selfId ) == 1 then
		return
	end

	AddNumText( sceneId, x050101_g_ScriptId, x050101_g_MissionName, 4, x050101_g_NumText_Main )
end

-- Ã»ÓĞÁîÅÆÈçºÎ´¦Àí?²»ÏÔÊ¾ÌõÄ¿(²»ÏÔÊ¾toÕ ğµ ºó¹û¿ÉÄÜĞúngÈÃÄ³Ğ©Íæ¼Ò²»ÖªµÀÕâÀïÓĞÈÎÎñ)»¹Ğúng¸ø³öÌáÊ¾?
--**********************************
-- ¼ì²âTiªp thøÌõ¼ş
--**********************************
function x050101_CheckAccept( sceneId, selfId )
	-- ÒÑ¾­½Ó¹ıÔò²»·ûºÏÌõ¼ş
	if IsHaveMission( sceneId, selfId, x050101_g_MissionId ) > 0 then
		return 0
	end

	-- ²»ÄÜÓĞÆäËûtoÕ ğµ ÈÎÎñ
	if x050101_CheckConflictMission( sceneId, selfId ) == 1 then
		return 0
	end

	-- ¼ì²âÍæ¼ÒĞúng·ñ·ûºÏ¸Õ·ÅÆúÈÎÎñ
	local iTime = GetMissionData( sceneId, selfId, MD_ROUNDMISSION2 )			-- ÉÏmµt ´Î·ÅÆúÈÎÎñtoÕ ğµ Ê±¼ä(µ¥Î»: mµt ¿ÌÖÓ)
	--begin modified by zhangguoxin 090207
	--local CurTime = GetHourTime()												-- µ±Ç°Ê±¼ä(µ¥Î»: mµt ¿ÌÖÓ)
	local CurTime = GetQuarterTime()												-- µ±Ç°Ê±¼ä(µ¥Î»: mµt ¿ÌÖÓ)
	--end modified by zhangguoxin 090207

	if iTime+1  >= CurTime then
		x050101_NotifyFailTips( sceneId, selfId, "Sau khi t× bö nhi®m vø 30 phút, m¾i có th¬ nh§n l¥n næa." )
		return 0
	end

	-- Èç¹ûÃ»ÓĞ: C¥n ¡°Óà¶¾toÕ ğµ ÁîÅÆ¡±
	if LuaFnGetAvailableItemCount( sceneId, selfId, x050101_g_Token ) < 1 then
		x050101_NotifyFailTips( sceneId, selfId, "    C¥n có #{_ITEM" .. x050101_g_Token .."}>" )
		return 0
	end

	-- mµt ÌìÖ»ÄÜÁì x050101_g_TakeTimes ´Î
	local DayTimes, oldDate, nowDate, takenTimes

	DayTimes = GetMissionData( sceneId, selfId, MD_ROUNDMISSION2_TIMES )
	oldDate = mod( DayTimes, 100000 )
	takenTimes = floor( DayTimes/100000 )

	nowDate = GetDayTime()
	if nowDate ~= oldDate then
		takenTimes = 0
	end

	if takenTimes >= x050101_g_TakeTimes then
		x050101_NotifyFailTips( sceneId, selfId, "S¯ l¥n nh§n nhi®m vø cüa các hÕ hôm nay ğã vßşt quá" .. x050101_g_TakeTimes .. " l¥n, xin ngày mai quay lÕi nh§n" )
		return 0
	else
		DayTimes = nowDate + takenTimes * 100000
		SetMissionData( sceneId, selfId, MD_ROUNDMISSION2_TIMES, DayTimes )
	end

	return 1
end

--**********************************
-- ÇëÇó½øÈë¸±±¾³¡¾°
--**********************************
function x050101_AskEnterCopyScene( sceneId, selfId, targetId )
	AddNumText( sceneId, x050101_g_ScriptId, "ThÆng tiªn r×ng trúc", 10, x050101_g_NumText_EnterCopyScene )
end

--**********************************
--Tiªp thø
--**********************************
function x050101_OnAccept( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x050101_g_MissionId ) == 0 then					-- Ã»ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		if GetMissionCount( sceneId, selfId ) >= 20 then						-- ÉíÉÏÈÎÎñÊıÁ¿Ğúng·ñ´ïµ½ÉÏÏŞ20cái
			x050101_NotifyFailBox( sceneId, selfId, targetId, "    Nhi®m vø ghi chép ğã ğ¥y, không th¬ nh§n thêm nhi®m vø" )
			return
		end

		if GetLevel( sceneId, selfId ) < x050101_g_LevelLimit then
			x050101_NotifyFailBox( sceneId, selfId, targetId, "    ĞÆng c¤p cüa ngß½i quá th¤p, nhi®m vø này ğ¯i v¾i ngß½i quá nguy hi¬m, hãy luy®n t§p trß¾c khi t¾i" )
			return
		end

		-- ²»ÄÜÓĞÆäËûtoÕ ğµ ÈÎÎñ
		if x050101_CheckConflictMission( sceneId, selfId ) == 1 then
			return
		end

		-- Èç¹ûÍæ¼ÒÉíÉÏ¾ßÓĞmµt ¿éÒÔÉÏtoÕ ğµ µÀ¾ß¡±Óà¶¾toÕ ğµ ÁîÅÆ¡±, có th¬ · ´ËTiªp thøĞÂÈÎÎñ¡°³ıº¦¡±,½ÓÈÎÎñtoÕ ğµ Í¬Ê±ÏûºÄmµt cáiÁîÅÆ¡±Óà¶¾toÕ ğµ ÁîÅÆ¡±.
		if LuaFnDelAvailableItem( sceneId, selfId, x050101_g_Token, 1 ) == 0 then
			-- ·ñÔòÏÔÊ¾: C¥n ¡°Óà¶¾toÕ ğµ ÁîÅÆ¡±
			x050101_NotifyFailBox( sceneId, selfId, targetId, "    C¥n có #{_ITEM" .. x050101_g_Token .."}>" )
			return
		end

		-- ¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
		AddMission( sceneId, selfId, x050101_g_MissionId, x050101_g_ScriptId, 1, 0, 0 )			-- kill¡¢area¡¢item
		if IsHaveMission( sceneId, selfId, x050101_g_MissionId ) <= 0 then
			return
		end

		-- mµt ÌìÖ»ÄÜÁì x050101_g_TakeTimes ´Î
		local DayTimes

		DayTimes = GetMissionData( sceneId, selfId, MD_ROUNDMISSION2_TIMES )
		DayTimes = DayTimes + 100000
		SetMissionData( sceneId, selfId, MD_ROUNDMISSION2_TIMES, DayTimes )

--		SetMissionEvent( sceneId, selfId, x050101_g_MissionId, 4 ) -- ×¢²á OnLockedTarget ÊÂ¼ş

		local misIndex = GetMissionIndexByID( sceneId, selfId, x050101_g_MissionId )

		SetMissionByIndex( sceneId, selfId, misIndex, x050101_g_IsMissionOkFail, 0 )	-- ÈÎÎñÍê³ÉÇé¿öÖÃÎªÎ´Íê³É
		SetMissionByIndex( sceneId, selfId, misIndex, x050101_g_Param_sceneid, -1 )		-- ¸±±¾ºÅÖÃÎª -1

		--ÏÔÊ¾ÄÚÈİ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
		BeginEvent( sceneId )
			AddText( sceneId, x050101_g_MissionName )
			AddText( sceneId, x050101_g_ContinueInfo )
			AddText( sceneId, "#r    Các hÕ ğã nh§n " .. x050101_g_MissionName )

			x050101_AskEnterCopyScene( sceneId, selfId, targetId )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
-- ÇëÇó½øÈë¸±±¾³¡¾°
--**********************************
function x050101_AcceptEnterCopyScene( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x050101_g_MissionId ) > 0 then					-- ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		local misIndex = GetMissionIndexByID( sceneId, selfId, x050101_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x050101_g_Param_sceneid )
		if copysceneid >= 0 then												-- ½ø¹ı¸±±¾
			-- ½«×Ô¼º´«ËÍµ½¸±±¾³¡¾°
			if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				NewWorld( sceneId, selfId, copysceneid, x050101_g_Fuben_X, x050101_g_Fuben_Z )
			else
				x050101_NotifyFailBox( sceneId, selfId, targetId, "    R¤t tiªc, nhi®m vø cüa ngß½i ğã th¤t bÕi" )
			end

			return
		end

		if LuaFnHasTeam( sceneId, selfId ) == 0 then
			x050101_NotifyFailBox( sceneId, selfId, targetId, "    Mµt mình ngß½i thñc lñc möng, hãy g÷i thêm m¤y ngß¶i t¾i giúp ği" )
			return
		end

		if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then
			x050101_NotifyFailBox( sceneId, selfId, targetId, "    Ngß½i không phäi là ğµi trß·ng, chï có ğµi trß·ng m¾i có th¬ quyªt ğ¸nh nh§n uÖ thác cüa ta hay không" )
			return
		end
		
		--bug27726,2007.11.15 by alan,ÒòÎªsceneMemberCount²»mµt ¶¨×¼È·,¸ÄÓÃ¸½½üĞµi viên ÊıÓë¶ÓÎéÈËÊıtoÕ ğµ ±È½ÏÅĞ¶Ï
		--²¢²»ÔÙÌáÊ¾¾ßÌå²»TÕi ¸½½ütoÕ ğµ Ğµi viên Ãû³Æ
				
		local teamMemberCount = GetTeamMemberCount(sceneId, selfId);	
		local nearMemberCount = GetNearTeamCount(sceneId, selfId);		
		if not teamMemberCount or not nearMemberCount or teamMemberCount ~= nearMemberCount then
			x050101_NotifyFailBox( sceneId, selfId, targetId, "    Các hÕ còn có nhóm viên · g¥n ğây" )
			return
		end
		
		--bug27726 end

		-- È¡ ği¬mÍæ¼Ò¸½½ütoÕ ğµ ¶ÓÓÑÊıÁ¿(°üÀ¨×Ô¼º)
		--local teamMemberCount = GetTeamMemberCount(sceneId, selfId);
		--local sceneMemberCount = GetTeamSceneMemberCount(sceneId, selfId);
		--if not teamMemberCount or not sceneMemberCount or teamMemberCount ~= sceneMemberCount + 1 then
		--	x050101_NotifyFailBox( sceneId, selfId, targetId, "    Äã»¹ÓĞĞµi viên ²»TÕi ¸½½ü." )
		--	return
		--end
		
		--local nearMemberCount = GetNearTeamCount(sceneId, selfId)
		--if nearMemberCount ~= sceneMemberCount + 1 then
		--	local strOutmsg = "Trong ğµi ngû có thành viên (";
		--	local checkNearCount = 0;
		--	for	i = 0, sceneMemberCount - 1 do
		--		local sceneMemId = LuaFnGetTeamSceneMember(sceneId, selfId, i);
		--		if sceneMemId and sceneMemId >= 0 then
		--			local findFlag = 0;
		--			for	j = 0, nearMemberCount - 1 do
		--				local nearMemId = GetNearTeamMember(sceneId, selfId, j);
		--				if nearMemId and nearMemId == sceneMemId then
		--					findFlag = 1;
		--					break;
		--				end
		--			end
					
		--			if findFlag == 0 then
		--				memName = GetName(sceneId, sceneMemId);
		--				if checkNearCount == 0 then
		--					strOutmsg = strOutmsg..memName;
		--				else
		--					strOutmsg = strOutmsg.."¡¢"..memName;
		--				end
		--				checkNearCount = checkNearCount + 1;
		--			end
		--		end
		--	end
		--	if checkNearCount  > 0 then
		--		strOutmsg = strOutmsg..")²»TÕi ¸½½ü,Çë¼¯ºÏºóÔÙÕÒÎÒ½øÈë»î¶¯.";
		--		x050101_NotifyFailBox( sceneId, selfId, targetId, strOutmsg)
		--	end
		--	return 
		--end
		
		if nearMemberCount < x050101_g_LimitMembers then
			x050101_NotifyFailBox( sceneId, selfId, targetId, "    Trong r×ng trúc g¤u dæ r¤t nhi«u ít nh¤t các ngß½i phäi có 3 ngß¶i ğ°ng hành, ta m¾i yên tâm ğ¬ các ngß½i ği" )
			return
		end

		-- ¼ì²âĞ¡¶ÓÖĞĞúng·ñÓĞÈËÈÎÎñ¼ÇÂ¼ÒÑÂú, ¶ÓÓÑĞúng·ñÒÑ¾­½Ó¹ı´ËÈÎÎñ
		local member, mylevel, numerator, denominator = 0, 0, 0, 0
		local outNotAcceptMissionStr = "BÕn có thành viên trong nhóm (";
		local notAcceptMissionCount = 0;
		local outDoingMissionStr = "BÕn có thành viên trong nhóm (";
		local doingMissionCount = 0;
		for	i = 0, nearMemberCount - 1 do
			member = GetNearTeamMember( sceneId, selfId, i )

			if IsHaveMission( sceneId, member, x050101_g_MissionId ) <= 0 then
				if notAcceptMissionCount == 0 then
					outNotAcceptMissionStr = outNotAcceptMissionStr..GetName(sceneId, member);
				else
					outNotAcceptMissionStr = outNotAcceptMissionStr..", "..GetName(sceneId, member);
				end
				notAcceptMissionCount = notAcceptMissionCount + 1;
			end

			if notAcceptMissionCount == 0 then
				misIndex = GetMissionIndexByID( sceneId, member, x050101_g_MissionId )
				if GetMissionParam( sceneId, member, misIndex, x050101_g_Param_sceneid ) >= 0 then
					if doingMissionCount == 0 then
						outDoingMissionStr = outDoingMissionStr..GetName(sceneId, member);
					else
						outDoingMissionStr = outDoingMissionStr..", "..GetName(sceneId, member);
					end
					doingMissionCount = doingMissionCount + 1;
				end
			end

			numerator = numerator + GetLevel( sceneId, member ) ^ 4
			denominator = denominator + GetLevel( sceneId, member ) ^ 3
		end
		
		if notAcceptMissionCount > 0 then
			outNotAcceptMissionStr = outNotAcceptMissionStr..") chßa nh§n nhi®m vø này";
			x050101_NotifyFailBox( sceneId, selfId, targetId, outNotAcceptMissionStr);
			return
		end
		
		if doingMissionCount > 0 then
			outDoingMissionStr = outDoingMissionStr..") ğã ho£c ğang làm nhi®m vø.";
			x050101_NotifyFailBox( sceneId, selfId, targetId, outDoingMissionStr);
			return
		end

		if denominator <= 0 then
			mylevel = 0
		else
			mylevel = numerator / denominator
		end

    local PlayerMaxLevel = GetHumanMaxLevelLimit()
		local iniLevel
		if mylevel < 10 then
			iniLevel = 10
		elseif mylevel < PlayerMaxLevel then
			iniLevel = floor( mylevel/10 ) * 10
		else
			iniLevel = PlayerMaxLevel
		end

		local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
		LuaFnSetSceneLoad_Map( sceneId, x050101_g_CopySceneMap )						-- µØÍ¼Ğúng±ØĞëÑ¡È¡toÕ ğµ ,¶øÇÒ±ØĞëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
		LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
		LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x050101_g_NoUserTime * 1000 )
		LuaFnSetCopySceneData_Timer( sceneId, x050101_g_TickTime * 1000 )
		LuaFnSetCopySceneData_Param( sceneId, 0, x050101_g_CopySceneType )				-- ÉèÖÃ¸±±¾Êı¾İ,ÕâÀï½«0ºÅË÷ÒıtoÕ ğµ Êı¾İÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
		LuaFnSetCopySceneData_Param( sceneId, 1, x050101_g_ScriptId )					-- ½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
		LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							-- ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
		LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							-- ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
		LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							-- ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
		LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							-- ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
		LuaFnSetCopySceneData_Param( sceneId, 6, GetTeamId( sceneId, selfId ) )	-- ±£´æ¶ÓÎéºÅ
		LuaFnSetCopySceneData_Param( sceneId, 7, 0 )							-- É±ËÀBoss1toÕ ğµ ÊıÁ¿
		LuaFnSetCopySceneData_Param( sceneId, 8, 0 )							-- É±ËÀBoss2toÕ ğµ ÊıÁ¿
		LuaFnSetCopySceneData_Param( sceneId, 9, 0 )							-- É±ËÀBoss3toÕ ğµ ÊıÁ¿
		LuaFnSetCopySceneData_Param( sceneId, 10, 0 )							-- É±ËÀBoss4toÕ ğµ ÊıÁ¿
		LuaFnSetCopySceneData_Param( sceneId, 11, 0 )							-- É±ËÀBoss5toÕ ğµ ÊıÁ¿
		LuaFnSetCopySceneData_Param( sceneId, 12, 0 )							-- Ğúng·ñÉ±ËÀºìĞÜÍõ
		LuaFnSetCopySceneData_Param( sceneId, 13, iniLevel / 10 )				-- ´æ´¢Íæ¼ÒÃÇtoÕ ğµ c¤p±ğµµ´Î
		LuaFnSetCopySceneData_Param( sceneId, 14, 0 )							-- ºìĞÜÍõĞúng·ñÒÑ¾­¼ÓÑª

		LuaFnSetSceneLoad_Area( sceneId, x050101_g_CopySceneArea )

		local monsterINI = format( x050101_g_CopySceneMonsterIni, iniLevel )
		LuaFnSetSceneLoad_Monster( sceneId, monsterINI )

		LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) -- c¤p±ğ²î,CopyScene_LevelGap TÕi  scene.lua ÖĞ¸³Öµ

		local bRetSceneID = LuaFnCreateCopyScene( sceneId )						-- ³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
		if bRetSceneID > 0 then
			x050101_NotifyFailTips( sceneId, selfId, "D¸ch chuy¬n thành công!" )
		else
			x050101_NotifyFailTips( sceneId, selfId, "S¯ lßşng bän sao ğã ğªn gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!" )
		end
	end
end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x050101_OnCopySceneReady( sceneId, destsceneId )
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
	local i, nearMemberCount, member
	local members = {}
	local validmembercount = 0

	nearMemberCount = GetNearTeamCount( sceneId, leaderObjId )
	for i = 0, nearMemberCount - 1 do
		member = GetNearTeamMember( sceneId, leaderObjId, i )
		if IsHaveMission( sceneId, member, x050101_g_MissionId ) > 0 then		-- ÓĞÈÎÎñ
			validmembercount = validmembercount + 1
			members[validmembercount] = member
		end
	end

	if validmembercount < x050101_g_LimitMembers then
		x050101_NotifyFailTips( sceneId, leaderObjId, "    Trong r×ng trúc g¤u dæ r¤t nhi«u, ít nh¤t các ngß½i phäi có 3 ngß¶i ğ°ng hành, ta m¾i yên tâm ğ¬ các ngß½i ği, trong nhóm c¥n có 3 nhân v§t ít nh¤t t× c¤p 30 tr· lên)" )
		return
	end

	local misIndex
	for i = 1, validmembercount do
		misIndex = GetMissionIndexByID( sceneId, members[i], x050101_g_MissionId )

		if LuaFnIsCanDoScriptLogic( sceneId, members[i] ) == 1 then			-- ´¦ÓÚ¿ÉÒÔÖ´ĞĞÂß¼­toÕ ğµ ×´Ì¬
			--½«ÈÎÎñtoÕ ğµ µÚ1ºÅÊı¾İÉèÖÃÎª¸±±¾toÕ ğµ ³¡¾°ºÅ
			SetMissionByIndex( sceneId, members[i], misIndex, x050101_g_Param_sceneid, destsceneId )
	--		SetMissionEvent( sceneId, members[i], x050101_g_MissionId, 0 )			-- ¹ØĞÄÉ±¹ÖÊÂ¼ş
			NewWorld( sceneId, members[i], destsceneId, x050101_g_Fuben_X, x050101_g_Fuben_Z )
		end
	end
end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x050101_OnPlayerEnter( sceneId, selfId )
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x050101_g_Fuben_Relive_X, x050101_g_Fuben_Relive_Z )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x050101_OnKillObject( sceneId, selfId, objdataId, objId )						-- ²ÎÊıÒâË¼: ³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎïobjId
	if IsHaveMission( sceneId, selfId, x050101_g_MissionId ) == 0 then
		return
	end

	--Ğúng·ñĞúng¸±±¾
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--Ğúng·ñĞúngËùC¥n toÕ ğµ ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x050101_g_CopySceneType then
		return
	end

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														-- Èç¹û¸±±¾ÒÑ¾­±»ÖÃ³É¹Ø±Õ×´Ì¬,ÔòÉ±¹ÖÎŞĞ§
		return
	end

	--È¡ ği¬mÉ±ËÀ¹ÖÎïtoÕ ğµ GroupID
	local GroupID = GetMonsterGroupID( sceneId, objId )
	if GroupID == x050101_g_BossGroup then
		LuaFnSetCopySceneData_Param( sceneId, 12, 1 )							-- Ğúng·ñÉ±ËÀºìĞÜÍõ

		local monstercount = GetMonsterCount( sceneId )
		local bossId
		for i = 0, monstercount - 1 do
			bossId = GetMonsterObjID( sceneId, i )
			-- ÉèÖÃ³É·ÇÖ÷¶¯¹¥»÷
			-- »ù´¡ AI ±äÎª 1
			SetNPCAIType( sceneId, bossId, 1 )
			-- À©Õ¹ AI ±äÎª 0
			SetAIScriptID( sceneId, bossId, 0 )
			-- È»ºó¿ªÊ¼·¢´ô
			NpcToIdle( sceneId, bossId )
		end

		local BroadcastMsg = x050101_g_BroadcastMsg[ random( getn(x050101_g_BroadcastMsg) ) ]
		BroadcastMsg = gsub( BroadcastMsg, "%$N", GetName( sceneId, selfId ) )
		BroadMsgByChatPipe( sceneId, selfId, BroadcastMsg, 4 )

	end

	local killedMonsterIndex, killedCount = 0, 0
	for i = 1, getn( x050101_g_DemandKillGroup ) do
		if GroupID == x050101_g_DemandKillGroup[i] then
			killedMonsterIndex = i
			killedCount = LuaFnGetCopySceneData_Param( sceneId, 7 + i - 1 ) + 1
			LuaFnSetCopySceneData_Param( sceneId, 7 + i - 1, killedCount )		-- É±ËÀBossitoÕ ğµ ÊıÁ¿
			break
		end
	end

	if killedMonsterIndex == 0 then													-- É±ËÀÁËmµt cái²»Ïà¹Ø¹Ö
		return
	end

	local maxKilledCount = x050101_g_DemandKill[killedMonsterIndex].num

	--È¡ ği¬mµ±Ç°³¡¾°ÀïtoÕ ğµ ÈËÊı
	local num = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local misIndex
	local strText = format( "Ğã giªt %s: %d/%d", GetName( sceneId, objId ), killedCount, maxKilledCount )
	for i = 0, num - 1 do
		mems[i + 1] = LuaFnGetCopyScene_HumanObjId( sceneId, i )					-- È¡ ği¬mµ±Ç°³¡¾°ÀïÈËtoÕ ğµ objId

		if LuaFnIsObjValid( sceneId, mems[i + 1] ) == 1 then						-- ²»TÕi ³¡¾°toÕ ğµ ²»×ö´Ë²Ù×÷
			x050101_NotifyFailTips( sceneId, mems[i + 1], strText )
			Msg2Player( sceneId, mems[i + 1], strText, MSG2PLAYER_PARA )
			misIndex = GetMissionIndexByID( sceneId, mems[i + 1], x050101_g_MissionId )
			SetMissionByIndex( sceneId, mems[i + 1], misIndex, killedMonsterIndex, killedCount )	-- Ë¢ĞÂÉ±¹ÖÊıÁ¿
		end
	end

	local leaveFlag = 1
	for i = 1, getn( x050101_g_DemandKillGroup ) do
		if LuaFnGetCopySceneData_Param( sceneId, 7 + i - 1 ) < x050101_g_DemandKill[i].num then
			leaveFlag = 0
			break
		end
	end

	-- É±ËÀËùÓĞ¹ÖÔòÀë¿ª³¡¾°
	if leaveFlag == 1 then
		local misIndex
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )

		for i = 1, num do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then						-- ²»TÕi ³¡¾°toÕ ğµ ²»×ö´Ë²Ù×÷
				x050101_NotifyFailTips( sceneId, mems[i], "Møc tiêu nhi®m vø ğã hoàn thành, s¡p r¶i khöi phø bän..." )
				misIndex = GetMissionIndexByID( sceneId, mems[i], x050101_g_MissionId )
				SetMissionByIndex( sceneId, mems[i], misIndex, x050101_g_IsMissionOkFail, 1 )	-- ÈÎÎñÍê³É
			end
		end
	end
end

--**********************************
--ÓĞÍæ¼ÒTÕi ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x050101_OnHumanDie( sceneId, selfId, killerId )
	-- ÈÎºÎmµt cáiÍæ¼ÒËÀÍö¶¼»áµ¼ÖÂºìĞÜÍõÉúÃüÈ«Âú
--	if LuaFnGetCopySceneData_Param( sceneId, 12 ) == 1 then								-- ĞÜÍõËÀÁË¾Í²»ÅĞ¶ÏÁË
--		return
--	end
--
--	local monstercount = GetMonsterCount( sceneId )
--	local monsterId, GroupID
--
--	for i = 0, monstercount - 1 do
--		monsterId = GetMonsterObjID( sceneId, i )
--		GroupID = GetMonsterGroupID( sceneId, monsterId )
--
--		if GroupID == x050101_g_BossGroup then
--			RestoreHp( sceneId, monsterId )
--			break
--		end
--	end
end

--**********************************
--Àë¿ª¸±±¾
--**********************************
function x050101_Exit( sceneId, selfId )
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				-- È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
	NewWorld( sceneId, selfId, oldsceneId, x050101_g_Back_X, x050101_g_Back_Z )
end

--**********************************
--¼ÌĞø
--**********************************
function x050101_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x050101_g_MissionName )
		AddText( sceneId, x050101_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x050101_g_ScriptId, x050101_g_MissionId )
end

--**********************************
--·ÅÆú
--**********************************
function x050101_OnAbandon( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050101_g_MissionId ) == 0 then
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050101_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x050101_g_Param_sceneid )

	-- ÉèÖÃ·ÅÆúÁ¬»·ÈÎÎñtoÕ ğµ Ê±¼ä
	--begin modified by zhangguoxin 090207
	--local CurTime = GetHourTime()											-- µ±Ç°Ê±¼ä
	local CurTime = GetQuarterTime()											-- µ±Ç°Ê±¼ä
	--begin modified by zhangguoxin 090207
	SetMissionData( sceneId, selfId, MD_ROUNDMISSION2, CurTime )

	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
	DelMission( sceneId, selfId, x050101_g_MissionId )
	
	--Ğúng·ñĞúngËùC¥n toÕ ğµ ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )

	if sceneId == copyscene and fubentype == x050101_g_CopySceneType then											-- Èç¹ûTÕi ¸±±¾ÀïÉ¾³ıÈÎÎñ,ÔòÖ±½Ó´«ËÍ»Ø
		x050101_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		-- È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
		NewWorld( sceneId, selfId, oldsceneId, x050101_g_Back_X, x050101_g_Back_Z )
	end
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x050101_OnCopySceneTimer( sceneId, nowTime )
	--¸±±¾Ê±ÖÓ¶ÁÈ¡¼°ÉèÖÃ
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						-- È¡ ği¬mÒÑ¾­Ö´ĞĞtoÕ ğµ ¶¨Ê±´ÎÊı
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							-- ÉèÖÃĞÂtoÕ ğµ ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	for i = 0, membercount - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	local LevelGap = LuaFnGetCopySceneData_Param( sceneId, CopyScene_LevelGap )

	if leaveFlag == 1 then															-- C¥n Àë¿ª
		--Àë¿ªµ¹¼ÆÊ±¼ätoÕ ğµ ¶ÁÈ¡ºÍÉèÖÃ
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount >= x050101_g_CloseTick then										-- µ¹¼ÆÊ±¼äµ½,´ó¼Ò¶¼³öÈ¥°É
			--½«µ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòtoÕ ğµ ³¡¾°
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x050101_Exit( sceneId, mems[i] )
				end
			end
		else
			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË,³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local strText = format( "Các hÕ s¨ r¶i khöi n½i này trong vòng %d giây næa", ( x050101_g_CloseTick - leaveTickCount ) * x050101_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x050101_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	elseif TickCount == x050101_g_LimitTotalHoldTime then									-- ¸±±¾×ÜÊ±¼äÏŞÖÆµ½ÁË
		--´Ë´¦ÉèÖÃ¸±±¾ÈÎÎñÓĞÊ±¼äÏŞÖÆtoÕ ğµ Çé¿ö,µ±Ê±¼äµ½ºó´¦Àí...
		for	i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				x050101_NotifyFailTips( sceneId, mems[i], "Th¶i gian nhi®m vø ğã hªt, r¶i cänh..." )
				x050101_Exit( sceneId, mems[i] )
			end
		end

		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	else
		--¶¨Ê±¼ì²é¶ÓÎé³ÉÔ±toÕ ğµ ¶ÓÎéºÅ,Èç¹û²»·ûºÏ,ÔòÌß³ö¸±±¾
		local oldteamid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- È¡ ği¬m±£´ætoÕ ğµ ¶ÓÎéºÅ
		local oldsceneId

		for	i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and oldteamid ~= GetTeamId( sceneId, mems[i] ) then
				x050101_NotifyFailTips( sceneId, mems[i], "Ngß½i không · trong ğúng ğµi, r¶i cänh..." )
				x050101_Exit( sceneId, mems[i] )
			end
		end

		-- Ã¿ phútÌáÊ¾Íæ¼ÒÊ£ÓàÊ±¼ä
		if mod( x050101_g_TickTime * TickCount, 60 ) < x050101_g_TickTime and TickCount < x050101_g_LimitTotalHoldTime then
			local str = "Còn lÕi " .. ( x050101_g_LimitTotalHoldTime - TickCount ) * x050101_g_TickTime / 60 .. " Phút..."
			for	i = 0, membercount - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x050101_NotifyFailTips( sceneId, mems[i], str )
				end
			end
		end

		local monstercount = GetMonsterCount( sceneId )
		local bossId, GroupID, bossX, bossZ = -1
		local x, z = GetLastPatrolPoint( sceneId, 0 )
		for i = 0, monstercount - 1 do
			if LuaFnGetCopySceneData_Param( sceneId, 14 ) > 0 then
				break
			end

			bossId = GetMonsterObjID( sceneId, i )
			GroupID = GetMonsterGroupID( sceneId, bossId )

			if GroupID == x050101_g_BossGroup then												-- ÅĞ¶Ï Boss Ğúng·ñÌÓµ½Ö¸¶¨µØ ği¬m
				bossX, bossZ = GetWorldPos( sceneId, bossId )
				--	Èç¹ûÌÓµ½ÁËÔò
				if (x - bossX) * (x - bossX) + (z - bossZ) * (z - bossZ) < 25 then		-- ÀëÖÕ ği¬m²»µ½ 5 Ã×
					-- ·è¿ñÌÓ´ÜºótoÕ ğµ ·¢´ôĞúng±ØÒªtoÕ ğµ 
					NpcToIdle( sceneId, bossId )
					-- »Ö¸´ÆøÑª
					RestoreHp( sceneId, bossId )
					-- »ù´¡ AI ±äÎª 0
					SetNPCAIType( sceneId, bossId, 0 )
					-- À©Õ¹ AI ±äÎª 129
					SetAIScriptID( sceneId, bossId, 129 )
					-- É¾³ıÑ²ÂßÂ·¾¶
					SetPatrolId( sceneId, bossId, -1 )
					LuaFnSetCopySceneData_Param( sceneId, 14, 1 )
				end

				break
			end
		end
	end
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x050101_CheckSubmit( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050101_g_MissionId ) <= 0 then
		return 0
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050101_g_MissionId )				--  ği¬mµ½ÈÎÎñtoÕ ğµ ĞòÁĞºÅ
	if GetMissionParam( sceneId, selfId, misIndex, x050101_g_IsMissionOkFail ) ~= 1 then
		return 0
	end

	if LuaFnGetTaskItemBagSpace( sceneId, selfId ) < 1 then
		x050101_NotifyFailTips( sceneId, selfId, "Thiªu mµt ô v§t ph¦m nhi®m vø" )
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x050101_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x050101_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	if x050101_CheckSubmit( sceneId, selfId ) == 1 then
		x050101_NotifyFailBox( sceneId, selfId, targetId, x050101_g_MissionComplete )
		TryRecieveItem( sceneId, selfId, x050101_g_Mail, 1 )
		DelMission( sceneId, selfId, x050101_g_MissionId )
		-- ÈÎÎñ»mµt î¶¯Í³¼Æ
		LuaFnAuditQuest(sceneId, selfId, "Trúc Lâm")
		local strText = x050101_g_MissionName .. "nhi®m vø ğã hoàn thành"
		x050101_NotifyFailTips( sceneId, selfId, strText )
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )

		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		CallScriptFunction( SCENE_SCRIPT_ID, "PlaySoundEffect", sceneId, selfId, 66 )
	end
end

--**********************************
-- ¶Ô»°´°¿ÚĞÅÏ¢ÌáÊ¾
--**********************************
function x050101_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ÆÁÄ»ÖĞ¼äĞÅÏ¢ÌáÊ¾
--**********************************
function x050101_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
