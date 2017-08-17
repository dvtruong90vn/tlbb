-- Á¬»·¸±±¾ÈÎÎñ
-- ËÎLinh±ß½ç

--************************************************************************
--MisDescBegin

-- ½Å±¾ºÅ
x050100_g_ScriptId = 050100

-- ÈÎÎñºÅ
x050100_g_MissionId = 1260					-- 1260 - 1269

-- ÉÏmµt cáiÈÎÎñtoÕ ğµ  ID
-- g_MissionIdPre = 1260

-- Møc tiêu nhi®m vø NPC
x050100_g_Name = "Tiên Hoành Vû"

--ÈÎÎñ¹éÀà
x050100_g_MissionKind = 8

--ĞÆng c¤p nhi®m vø 
x050100_g_MissionLevel = 10000

-- ÈÎÎñÎÄ±¾ÃèÊö
x050100_g_MissionName = "Mµt tên cûng không th¬ thoát"
x050100_g_MissionInfo = "    "				-- ÈÎÎñÃèÊö
x050100_g_MissionTarget = "    Tiên Hoành Vû · Tô Châu #{_INFOAIM134,260,1, Tiên Hoành Vû} yêu c¥u các hÕ trong vòng 30 phút phäi dø và giªt chªt Dß Ğµc.#r    #{FQSH_090206_01}"						-- Møc tiêu nhi®m vø
x050100_g_ContinueInfo = "    Tr§n chiªn vô cùng tr÷ng ğÕi, nh¤t ğ¸nh không ğßşc khinh xu¤t. Các hÕ ğã chu¦n b¸ ğªn sao huy®t b÷n cß¾p chßa?"	-- Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x050100_g_SubmitInfo = "    Nhi®m vø làm thª nào r°i?"										-- Ìá½»Ê±toÕ ğµ ´ğ¸´
x050100_g_MissionComplete = "    Các hÕ làm quá t¯t r°i, chúng ta có th¬ có th¬ thông qua l®nh bài này tìm ğßşc doanh trÕi cüa b÷n phï ğ° này. Hãy ği ğªn tiêu cøc tìm #{_INFOAIM251,109,1, Hoa Kiªm Änh}, h¡n có th¬ cho ngß½i biªt lai l¸ch cüa l®nh bài"	--Hoàn t¤t nhi®m vønpcËµtoÕ ğµ »°

x050100_g_IsMissionOkFail = 0				-- 0 ºÅ: µ±Ç°ÈÎÎñĞúng·ñÍê³É(0Î´Íê³É£»1Íê³É£»2th¤t bÕi)
x050100_g_DemandKill = { { id = 4060, num = 50 }, { id = 4070, num = 10 }, { id = 4080, num = 1 }, { id = 4090, num = 1 }, { id = 4100, num = 1 } }	-- 1 ~ 5 ºÅ,¹ÖÎïĞÅÏ¢
x050100_g_Param_sceneid = 6					-- 6 ºÅ: µ±Ç°¸±±¾ÈÎÎñtoÕ ğµ ³¡¾°ºÅ

-- ÈÎÎñ½±Àø

--MisDescEnd
--************************************************************************

x050100_g_DemandKillGroup = { 4, 0, 1, 2, 3 }	-- 1 ~ 5 ºÅ¹ÖÎï¶ÔÓ¦toÕ ğµ  GroupID ºÅ,Óë x050100_g_DemandKill mµt mµt ¶ÔÓ¦
x050100_g_DogfaceGroup = 0					-- ÌÓÅÜĞ¡±øtoÕ ğµ  Group ID
x050100_g_LittleBossGroup = 2				-- Ğ¡ Boss Group ID
x050100_g_ViceBossGroup = 1					-- ËÎ¾ü¸±¶¼Í³
x050100_g_BossGroup = 3						-- Boss Group ID
x050100_g_Token = 40004315					-- ÁîÅÆºÅ

x050100_g_NumText_Main = 1					-- ½ÓÈÎÎñtoÕ ğµ Ñ¡Ïî
x050100_g_NumText_EnterCopyScene = 2		-- ÒªÇó½øÈë¸±±¾toÕ ğµ Ñ¡Ïî

x050100_g_CopySceneMap = "songliao.nav"
x050100_g_CopySceneArea = "songliao_area.ini"
x050100_g_CopySceneMonsterIni = "songliao_monster_%d.ini"

x050100_g_CopySceneType = FUBEN_SONGLIAO	-- ¸±±¾ÀàĞÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ
x050100_g_LimitMembers = 1					-- ¿ÉÒÔ½ø¸±±¾toÕ ğµ ×îĞ¡¶ÓÎéÈËÊı
x050100_g_LevelLimit = 30					-- ¿ÉÒÔ½øÈë¸±±¾toÕ ğµ ×îµÍc¤p±ğ
x050100_g_TickTime = 5						-- »Øµ÷½Å±¾toÕ ğµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x050100_g_LimitTotalHoldTime = 360			-- ¸±±¾¿ÉÒÔ´æ»îtoÕ ğµ Ê±¼ä(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x050100_g_CloseTick = 6						-- ¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊı)
x050100_g_NoUserTime = 30					-- ¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´ætoÕ ğµ Ê±¼ä(µ¥Î»:  giây)
x050100_g_LoadBossTick = 180				-- 15  phútË¢Ğ¡ Boss

x050100_g_LittleBoss = { 4080, 4081, 4082, 4083, 4084, 4085, 4086, 4087, 4088, 4089, 34080, 34081, 34082, 34083, 34084, 34085, 34086, 34087, 34088, 34089 }
x050100_g_Dogface = { 4070, 4071, 4072, 4073, 4074, 4075, 4076, 4077, 4078, 4079, 34070, 34071, 34072, 34073, 34074, 34075, 34076, 34077, 34078, 34079 }
x050100_g_DogfacePos = {
	{ 22, 70, 4 }, { 22, 70, 4 }, { 22, 70, 4 }, { 102, 67, 5 }, { 102, 67, 5 },
	{ 102, 67, 5 }, { 75, 83, 6 }, { 75, 83, 6 }, { 49, 84, 7 }, { 49, 84, 7 }
}
x050100_g_Boss = { 4100, 4101, 4102, 4103, 4104, 4105, 4106, 4107, 4108, 4109, 34100, 34101, 34102, 34103, 34104, 34105, 34106, 34107, 34108, 34109 }

x050100_g_Fuben_X = 60
x050100_g_Fuben_Z = 9
x050100_g_Back_X = 134
x050100_g_Back_Z = 261

x050100_g_Fuben_Relive_X = 60
x050100_g_Fuben_Relive_Z = 15


-- ¹ã²¥ÏûÏ¢
x050100_g_BroadcastMsg = {
	"#Y"..x050100_g_Name..": #{_BOSS45}#P ğã chªt! H¡n ğã b¸ anh hùng cüa chúng ta #{_INFOUSR$N}#P tiêu di®t! Kë nÕp mÕng tiªp theo là ai? #{_BOSS46} hay là #{_BOSS47} Ha ha ha!",
	"#Y"..x050100_g_Name..": #PAnh hùng cüa chúng ta#{_INFOUSR$N}#P, t× #Gbiên gi¾i T¯ng Liêu#P mang tin vui t¾i! Tên th± phï ác ôn#{_BOSS45}#P này, ğã b¸ tr× khØ!",
	"#Y"..x050100_g_Name..": #PM÷i ngß¶i mau ra ğây xem v¸ anh hùng cüa chúng ta! #{_INFOUSR$N}#P Mµt truy«n kÏ s¯ng, hi®p sî chiªn ğ¤u, ğÕi hi®p!"
}

x050100_g_TakeTimes = 10											-- Ã¿Ìì×î¶àLînh ´ÎÊı

--**********************************
-- ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x050100_OnDefaultEvent( sceneId, selfId, targetId )	--  ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	if GetName( sceneId, targetId ) ~= x050100_g_Name then		-- ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	local numText = GetNumText()

	if IsHaveMission( sceneId, selfId, x050100_g_MissionId ) == 0 then
		if numText == x050100_g_NumText_Main then
			if x050100_CheckAccept( sceneId, selfId ) > 0 then
				--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
				BeginEvent( sceneId )
					AddText( sceneId, x050100_g_MissionName )
					AddText( sceneId, "    R¯t cuµc ğã có ngß¶i t¾i tr×ng tr¸ lû ác t£c này!" )
					AddText( sceneId, "    Tên th± phï này · biên gi¾i r¤t xäo quy®t. Ğ¥u møc là mã phï Dß Ğµc là kë tµi ğ° cüa Cái Bang có võ công cao và r¤t giöi dùng ğµc, chï có cách nguÜ trang thành T¯ng binh, T¯ng phù m¾i có th¬ dø h¡n xu¤t hi®n " .. GetName( sceneId, selfId ) .. ", ğ¬ di®t t§n g¯c b÷n cß¾p này, ngß½i c¥n phäi tiêu di®t chúng v¾i t¯c ğµ nhanh nh¤t, không th¬ ğ¬ 1 tên s¯ng sót!" )
					AddText( sceneId, "#{M_MUBIAO}" )
					AddText( sceneId, x050100_g_MissionTarget )
				EndEvent( )
				DispatchMissionInfo( sceneId, selfId, targetId, x050100_g_ScriptId, x050100_g_MissionId )
			end
		end
	else
		if numText == x050100_g_NumText_Main then
			local bDone = x050100_CheckSubmit( sceneId, selfId )

			BeginEvent( sceneId )
				AddText( sceneId, x050100_g_MissionName )

				if bDone == 1 then
					AddText( sceneId, x050100_g_SubmitInfo )
				else
					AddText( sceneId, x050100_g_ContinueInfo )
					x050100_AskEnterCopyScene( sceneId, selfId, targetId )
					DispatchEventList( sceneId, selfId, targetId )
					return
				end
			EndEvent( )
			DispatchMissionDemandInfo( sceneId, selfId, targetId, x050100_g_ScriptId, x050100_g_MissionId, bDone )
		elseif numText == x050100_g_NumText_EnterCopyScene then
			x050100_AcceptEnterCopyScene( sceneId, selfId, targetId )
		end
	end
end

--**********************************
-- ²»ÄÜÓĞÆäËûtoÕ ğµ ÈÎÎñ,Ã»ÓĞTr· v« 0,ÓĞTr· v« 1
--**********************************
function x050100_CheckConflictMission( sceneId, selfId )
	local missionId = 0

	for missionId = 1260, x050100_g_MissionId - 1 do
		if IsHaveMission( sceneId, selfId, missionId ) > 0 then
			return 1
		end
	end

	for missionId = x050100_g_MissionId + 1, 1269 do
		if IsHaveMission( sceneId, selfId, missionId ) > 0 then
			return 1
		end
	end

	return 0
end

--**********************************
-- ÁĞ¾ÙÊÂ¼ş
--**********************************
function x050100_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x050100_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	-- ²»ÄÜÓĞÆäËûtoÕ ğµ ÈÎÎñ
	if x050100_CheckConflictMission( sceneId, selfId ) == 1 then
		return
	end

	AddNumText( sceneId, x050100_g_ScriptId, x050100_g_MissionName, 4, x050100_g_NumText_Main )
end

--**********************************
-- ¼ì²âTiªp thøÌõ¼ş
--**********************************
function x050100_CheckAccept( sceneId, selfId )
	-- ÒÑ¾­½Ó¹ıÔò²»·ûºÏÌõ¼ş
	if IsHaveMission( sceneId, selfId, x050100_g_MissionId ) > 0 then
		return 0
	end

	-- ²»ÄÜÓĞÆäËûtoÕ ğµ ÈÎÎñ
	if x050100_CheckConflictMission( sceneId, selfId ) == 1 then
		return 0
	end

	-- ¼ì²âÍæ¼ÒĞúng·ñ·ûºÏ¸Õ·ÅÆúÈÎÎñ
	local iTime = GetMissionData( sceneId, selfId, MD_ROUNDMISSION1 )			-- ÉÏmµt ´Î·ÅÆúÈÎÎñtoÕ ğµ Ê±¼ä(µ¥Î»: mµt ¿ÌÖÓ)
	--begin modified by zhangguoxin 090207
	--local CurTime = GetHourTime()												-- µ±Ç°Ê±¼ä(µ¥Î»: mµt ¿ÌÖÓ)
	local CurTime = GetQuarterTime()												-- µ±Ç°Ê±¼ä(µ¥Î»: mµt ¿ÌÖÓ)
	--end modified by zhangguoxin 090207

	if iTime+1 >= CurTime then
		x050100_NotifyFailTips( sceneId, selfId, "Sau khi t× bö nhi®m vø 30 phút, m¾i có th¬ nh§n l¥n næa." )
		return 0
	end

	-- mµt ÌìÖ»ÄÜÁì x050100_g_TakeTimes ´Î
	local DayTimes, oldDate, nowDate, takenTimes

	DayTimes = GetMissionData( sceneId, selfId, MD_ROUNDMISSION1_TIMES )
	oldDate = mod( DayTimes, 100000 )
	takenTimes = floor( DayTimes/100000 )

	nowDate = GetDayTime()
	if nowDate ~= oldDate then
		takenTimes = 0
	end

	if takenTimes >= x050100_g_TakeTimes then
		x050100_NotifyFailTips( sceneId, selfId, "S¯ l¥n nh§n nhi®m vø cüa các hÕ hôm nay ğã vßşt quá" .. x050100_g_TakeTimes .. " l¥n, xin ngày mai quay lÕi nh§n" )
		return 0
	else
		DayTimes = nowDate + takenTimes * 100000
		SetMissionData( sceneId, selfId, MD_ROUNDMISSION1_TIMES, DayTimes )
	end

	return 1
end

--**********************************
-- ÇëÇó½øÈë¸±±¾³¡¾°
--**********************************
function x050100_AskEnterCopyScene( sceneId, selfId, targetId )
	AddNumText( sceneId, x050100_g_ScriptId, "ThÆng tiªn biên cß½ng", 10, x050100_g_NumText_EnterCopyScene )
end

--**********************************
--Tiªp thø
--**********************************
function x050100_OnAccept( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x050100_g_MissionId ) == 0 then					-- Ã»ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		if GetMissionCount( sceneId, selfId ) >= 20 then						-- ÉíÉÏÈÎÎñÊıÁ¿Ğúng·ñ´ïµ½ÉÏÏŞ20cái
			x050100_NotifyFailBox( sceneId, selfId, targetId, "    Nhi®m vø ghi chép ğã ğ¥y, không th¬ nh§n thêm nhi®m vø" )
			return
		end

		if GetLevel( sceneId, selfId ) < x050100_g_LevelLimit then
			x050100_NotifyFailBox( sceneId, selfId, targetId, "    ĞÆng c¤p cüa ngß½i quá th¤p, không th¬ chiªn th¡ng" )
			return
		end

		-- ²»ÄÜÓĞÆäËûtoÕ ğµ ÈÎÎñ
		if x050100_CheckConflictMission( sceneId, selfId ) == 1 then
			return
		end

		-- ¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
		AddMission( sceneId, selfId, x050100_g_MissionId, x050100_g_ScriptId, 1, 0, 0 )			-- kill¡¢area¡¢item
		if IsHaveMission( sceneId, selfId, x050100_g_MissionId ) <= 0 then
			return
		end

		-- mµt ÌìÖ»ÄÜÁì x050100_g_TakeTimes ´Î
		local DayTimes

		DayTimes = GetMissionData( sceneId, selfId, MD_ROUNDMISSION1_TIMES )
		DayTimes = DayTimes + 100000
		SetMissionData( sceneId, selfId, MD_ROUNDMISSION1_TIMES, DayTimes )

--		SetMissionEvent( sceneId, selfId, x050100_g_MissionId, 4 ) -- ×¢²á OnLockedTarget ÊÂ¼ş

		local misIndex = GetMissionIndexByID( sceneId, selfId, x050100_g_MissionId )

		SetMissionByIndex( sceneId, selfId, misIndex, x050100_g_IsMissionOkFail, 0 )	-- ÈÎÎñÍê³ÉÇé¿öÖÃÎªÎ´Íê³É
		SetMissionByIndex( sceneId, selfId, misIndex, x050100_g_Param_sceneid, -1 )		-- ¸±±¾ºÅÖÃÎª -1

		--ÏÔÊ¾ÄÚÈİ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
		BeginEvent( sceneId )
			AddText( sceneId, x050100_g_MissionName )
			AddText( sceneId, x050100_g_ContinueInfo )
			AddText( sceneId, "#r    Các hÕ ğã nh§n " .. x050100_g_MissionName )

			x050100_AskEnterCopyScene( sceneId, selfId, targetId )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
-- ÇëÇó½øÈë¸±±¾³¡¾°
--**********************************
function x050100_AcceptEnterCopyScene( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x050100_g_MissionId ) > 0 then					-- ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		local misIndex = GetMissionIndexByID( sceneId, selfId, x050100_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x050100_g_Param_sceneid )
		if copysceneid >= 0 then												-- ½ø¹ı¸±±¾
			-- ½«×Ô¼º´«ËÍµ½¸±±¾³¡¾°
			if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				NewWorld( sceneId, selfId, copysceneid, x050100_g_Fuben_X, x050100_g_Fuben_Z )
			else
				x050100_NotifyFailBox( sceneId, selfId, targetId, "     R¤t tiªc, nhi®m vø cüa ngß½i ğã th¤t bÕi" )
			end

			return
		end

		if LuaFnHasTeam( sceneId, selfId ) == 0 then
			x050100_NotifyFailBox( sceneId, selfId, targetId, "    Lû ğÕo t£c này không phäi v×a ğâu, ngß½i c¥n phäi có 1 nhóm mÕnh" )
			return
		end

		if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then
			x050100_NotifyFailBox( sceneId, selfId, targetId, "    Ta phäi ğßşc sñ xác nh§n cüa trß·ng nhóm m¾i có th¬ yên tâm ğ¬ các ngß½i thÆng tiªn biên cß½ng" )
			return
		end
		
		--bug27726,2007.11.15 by alan,ÒòÎªsceneMemberCount²»mµt ¶¨×¼È·,¸ÄÓÃ¸½½üĞµi viên ÊıÓë¶ÓÎéÈËÊıtoÕ ğµ ±È½ÏÅĞ¶Ï
		--²¢²»ÔÙÌáÊ¾¾ßÌå²»TÕi ¸½½ütoÕ ğµ Ğµi viên Ãû³Æ
				
		local teamMemberCount = GetTeamMemberCount(sceneId, selfId);	
		local nearMemberCount = GetNearTeamCount(sceneId, selfId);		
		if not teamMemberCount or not nearMemberCount or teamMemberCount ~= nearMemberCount then
			x050100_NotifyFailBox( sceneId, selfId, targetId, "    Các hÕ có nhóm viên không · g¥n ğây" )
			return
		end
		
		--bug27726 end
                                                               
		-- È¡ ği¬mÍæ¼Ò¸½½ütoÕ ğµ ¶ÓÓÑÊıÁ¿(°üÀ¨×Ô¼º)
		--local teamMemberCount = GetTeamMemberCount(sceneId, selfId);		
		--local sceneMemberCount = GetTeamSceneMemberCount(sceneId, selfId);
		--if not teamMemberCount or not sceneMemberCount or teamMemberCount ~= sceneMemberCount + 1 then
		--	x050100_NotifyFailBox( sceneId, selfId, targetId, "    Äã»¹ÓĞĞµi viên ²»TÕi ¸½½ü." )
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
		--		x050100_NotifyFailBox( sceneId, selfId, targetId, strOutmsg)
		--	end
		--	return 
		--end

		if nearMemberCount < x050100_g_LimitMembers then
			x050100_NotifyFailBox( sceneId, selfId, targetId, "    Lû ğÕo t£c này không phäi v×a ğâu, ngß½i c¥n phäi có 1 s¯ bän lînh và 1 s¯ trş thü, ta m¾i yên tâm. (trong nhóm t¯i thi­u c¥n phäi có 3 nhân v§t t× c¤p 30 tr· lên)" )
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

			if IsHaveMission( sceneId, member, x050100_g_MissionId ) <= 0 then
				if notAcceptMissionCount == 0 then
					outNotAcceptMissionStr = outNotAcceptMissionStr..GetName(sceneId, member);
				else
					outNotAcceptMissionStr = outNotAcceptMissionStr..","..GetName(sceneId, member);
				end
				notAcceptMissionCount = notAcceptMissionCount + 1;
			end

			if notAcceptMissionCount == 0 then
				misIndex = GetMissionIndexByID( sceneId, member, x050100_g_MissionId )
				if GetMissionParam( sceneId, member, misIndex, x050100_g_Param_sceneid ) >= 0 then
					if doingMissionCount == 0 then
						outDoingMissionStr = outDoingMissionStr..GetName(sceneId, member);
					else
						outDoingMissionStr = outDoingMissionStr..","..GetName(sceneId, member);
					end
					doingMissionCount = doingMissionCount + 1;
				end
			end

			numerator = numerator + GetLevel( sceneId, member ) ^ 4
			denominator = denominator + GetLevel( sceneId, member ) ^ 3
		end
		
		if notAcceptMissionCount > 0 then
			outNotAcceptMissionStr = outNotAcceptMissionStr..") chßa nh§n nhi®m vø này";
			x050100_NotifyFailBox( sceneId, selfId, targetId, outNotAcceptMissionStr);
			return
		end

		if doingMissionCount > 0 then
			outDoingMissionStr = outDoingMissionStr..") ğã ho£c ğang làm nhi®m vø.";
			x050100_NotifyFailBox( sceneId, selfId, targetId, outDoingMissionStr);
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
		LuaFnSetSceneLoad_Map( sceneId, x050100_g_CopySceneMap )						-- µØÍ¼Ğúng±ØĞëÑ¡È¡toÕ ğµ ,¶øÇÒ±ØĞëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
		LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
		LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x050100_g_NoUserTime * 1000 )
		LuaFnSetCopySceneData_Timer( sceneId, x050100_g_TickTime * 1000 )
		LuaFnSetCopySceneData_Param( sceneId, 0, x050100_g_CopySceneType )				-- ÉèÖÃ¸±±¾Êı¾İ,ÕâÀï½«0ºÅË÷ÒıtoÕ ğµ Êı¾İÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
		LuaFnSetCopySceneData_Param( sceneId, 1, x050100_g_ScriptId )					-- ½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
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
		LuaFnSetCopySceneData_Param( sceneId, 12, 0 )							-- Ğúng·ñÉ±ËÀĞ¡ Boss
		LuaFnSetCopySceneData_Param( sceneId, 13, iniLevel / 10 )				-- ´æ´¢Íæ¼ÒÃÇtoÕ ğµ c¤p±ğµµ´Î
		LuaFnSetCopySceneData_Param( sceneId, 14, 0 )							-- Ğúng·ñÒÑ¾­ÓĞĞ¡¹ÖÌÓ×ß
		LuaFnSetCopySceneData_Param( sceneId, 15, 0 )							-- Ğúng·ñÒÑ¾­Ë¢³ö´ó Boss

		LuaFnSetSceneLoad_Area( sceneId, x050100_g_CopySceneArea )

		local monsterINI = format( x050100_g_CopySceneMonsterIni, iniLevel )
		LuaFnSetSceneLoad_Monster( sceneId, monsterINI )

		LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) -- c¤p±ğ²î,CopyScene_LevelGap TÕi  scene.lua ÖĞ¸³Öµ

		local bRetSceneID = LuaFnCreateCopyScene( sceneId )						-- ³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
		if bRetSceneID > 0 then
			x050100_NotifyFailTips( sceneId, selfId, "D¸ch chuy¬n thành công!" )
		else
			x050100_NotifyFailTips( sceneId, selfId, "S¯ lßşng bän sao ğã ğªn gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!" )
		end
	end
end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x050100_OnCopySceneReady( sceneId, destsceneId )
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
		if IsHaveMission( sceneId, member, x050100_g_MissionId ) > 0 then		-- ÓĞÈÎÎñ
			validmembercount = validmembercount + 1
			members[validmembercount] = member
		end
	end

	if validmembercount < x050100_g_LimitMembers then
		x050100_NotifyFailTips( sceneId, leaderObjId, "    Lû ğÕo t£c này không phäi v×a ğâu, ngß½i c¥n phäi có 1 s¯ bän lînh và 1 s¯ trş thü, ta m¾i yên tâm. (trong nhóm t¯i thi­u c¥n phäi có 3 nhân v§t t× c¤p 30 tr· lên)" )
		return
	end

	local misIndex
	for i = 1, validmembercount do
		misIndex = GetMissionIndexByID( sceneId, members[i], x050100_g_MissionId )

		if LuaFnIsCanDoScriptLogic( sceneId, members[i] ) == 1 then			-- ´¦ÓÚ¿ÉÒÔÖ´ĞĞÂß¼­toÕ ğµ ×´Ì¬
			--½«ÈÎÎñtoÕ ğµ µÚ1ºÅÊı¾İÉèÖÃÎª¸±±¾toÕ ğµ ³¡¾°ºÅ
			SetMissionByIndex( sceneId, members[i], misIndex, x050100_g_Param_sceneid, destsceneId )
	--		SetMissionEvent( sceneId, members[i], x050100_g_MissionId, 0 )			-- ¹ØĞÄÉ±¹ÖÊÂ¼ş
			NewWorld( sceneId, members[i], destsceneId, x050100_g_Fuben_X, x050100_g_Fuben_Z )
		end
	end
end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x050100_OnPlayerEnter( sceneId, selfId )
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x050100_g_Fuben_Relive_X, x050100_g_Fuben_Relive_Z )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x050100_OnKillObject( sceneId, selfId, objdataId, objId )						-- ²ÎÊıÒâË¼: ³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎïobjId
	if IsHaveMission( sceneId, selfId, x050100_g_MissionId ) == 0 then
		return
	end

	--Ğúng·ñĞúng¸±±¾
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--Ğúng·ñĞúngËùC¥n toÕ ğµ ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x050100_g_CopySceneType then
		return
	end

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														-- Èç¹û¸±±¾ÒÑ¾­±»ÖÃ³É¹Ø±Õ×´Ì¬,ÔòÉ±¹ÖÎŞĞ§
		return
	end

	--È¡ ği¬mÉ±ËÀ¹ÖÎïtoÕ ğµ GroupID
	local GroupID = GetMonsterGroupID( sceneId, objId )
	local killedMonsterIndex, killedCount = 0, 0
	for i = 1, getn( x050100_g_DemandKillGroup ) do
		if GroupID == x050100_g_DemandKillGroup[i] then
			killedMonsterIndex = i
			killedCount = LuaFnGetCopySceneData_Param( sceneId, 7 + i - 1 ) + 1
			LuaFnSetCopySceneData_Param( sceneId, 7 + i - 1, killedCount )		-- É±ËÀBossitoÕ ğµ ÊıÁ¿
			break
		end
	end

	if killedMonsterIndex == 0 then													-- É±ËÀÁËmµt cái²»Ïà¹Ø¹Ö
		return
	end

	if x050100_g_BossGroup == GroupID then
		local BroadcastMsg = x050100_g_BroadcastMsg[ random( getn(x050100_g_BroadcastMsg) ) ]
		BroadcastMsg = gsub( BroadcastMsg, "%$N", GetName( sceneId, selfId ) )
		BroadMsgByChatPipe( sceneId, selfId, BroadcastMsg, 4 )
	end

	local maxKilledCount = x050100_g_DemandKill[killedMonsterIndex].num

	--È¡ ği¬mµ±Ç°³¡¾°ÀïtoÕ ğµ ÈËÊı
	local i, humanObjId, misIndex
	local num = LuaFnGetCopyScene_HumanCount( sceneId )
	local strText = format( "Ğã giªt %s: %d/%d", GetName( sceneId, objId ), killedCount, maxKilledCount )
	for i = 0, num - 1 do
		humanObjId = LuaFnGetCopyScene_HumanObjId( sceneId, i )					-- È¡ ği¬mµ±Ç°³¡¾°ÀïÈËtoÕ ğµ objId

		if LuaFnIsObjValid( sceneId, humanObjId ) == 1 then						-- ²»TÕi ³¡¾°toÕ ğµ ²»×ö´Ë²Ù×÷
			x050100_NotifyFailTips( sceneId, humanObjId, strText )
			Msg2Player( sceneId, humanObjId, strText, MSG2PLAYER_PARA )
			misIndex = GetMissionIndexByID( sceneId, humanObjId, x050100_g_MissionId )
			SetMissionByIndex( sceneId, humanObjId, misIndex, killedMonsterIndex, killedCount )	-- Ë¢ĞÂÉ±¹ÖÊıÁ¿

			-- É±ËÀËùÓĞ¹ÖÃ»ÓĞ·Å×ßmµt cáiÔòTÕi ÖĞÑë´óÓªÇ°Ë¢³öboss[Óà¶¾],É±ËÀºó¸±±¾ÈÎÎñÍê³É.(Óà¶¾ÉíÉÏ±ØµôÈÎÎñµÀ¾ß¡±Óà¶¾toÕ ğµ ÁîÅÆ¡±)
			if x050100_g_BossGroup == GroupID then
				-- É±ËÀÁËÒ²²»¹Ø±Õ¸±±¾,ÒòÎªÒªµÈËùÓĞÈË¶¼¼ñÁîÅÆ¡­¡­
				AddMonsterDropItem( sceneId, objId, humanObjId, x050100_g_Token )

				SetMissionByIndex( sceneId, humanObjId, misIndex, x050100_g_IsMissionOkFail, 1 )	-- ÈÎÎñÍê³É
			end
		end
	end

	-- É±ËÀµØÍ¼ÖĞÑëtoÕ ğµ Ğ¡boss[Î±×°toÕ ğµ ËÎ±ø¶¼Í³]5 giâyºó,TÕi µØÍ¼ÏÂ·½Ë¢³ö10Ö»ÑØÂ·ÏßÌÓ´ÜtoÕ ğµ Ğ¡¹Ö
	if x050100_g_LittleBossGroup == GroupID then									-- É±ËÀÁËĞ¡ Boss
		LuaFnSetCopySceneData_Param( sceneId, 12, 1 )							-- Ğúng·ñÉ±ËÀĞ¡ Boss
	end

	-- É±ËÀËùÓĞ¹ÖÃ»ÓĞ·Å×ßmµt cáiÔòTÕi ÖĞÑë´óÓªÇ°Ë¢³öboss[Óà¶¾]
	local bigBossFlag = 1
	for i = 1, 4 do
		if LuaFnGetCopySceneData_Param( sceneId, 7 + i - 1 ) < x050100_g_DemandKill[i].num then
			bigBossFlag = 0
			break
		end
	end

	if bigBossFlag == 1 then
		if LuaFnGetCopySceneData_Param( sceneId, 15 ) > 0 then					-- ²»C¥n ÔÙË¢ Boss ÁË
			return
		end

		local bossGrade = LuaFnGetCopySceneData_Param( sceneId, 13 )
		if not x050100_g_Boss[bossGrade] then
			return
		end

		local LevelGap = LuaFnGetCopySceneData_Param( sceneId, CopyScene_LevelGap )
		local bossId = LuaFnCreateMonster( sceneId, x050100_g_Boss[bossGrade], 55, 67, 14, 126, -1 )
		SetLevel( sceneId, bossId, GetLevel( sceneId, bossId ) + LevelGap )
		SetCharacterTitle(sceneId, bossId, "")
		SetMonsterGroupID( sceneId, bossId, x050100_g_BossGroup )
		LuaFnSetCopySceneData_Param( sceneId, 15, 1 )
	end
end

--**********************************
--ÓĞÍæ¼ÒTÕi ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x050100_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--Àë¿ª¸±±¾
--**********************************
function x050100_Exit( sceneId, selfId )
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				-- È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
	NewWorld( sceneId, selfId, oldsceneId, x050100_g_Back_X, x050100_g_Back_Z )
end

--**********************************
--·ÅÆú
--**********************************
function x050100_OnAbandon( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050100_g_MissionId ) == 0 then
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050100_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x050100_g_Param_sceneid )


	-- ÉèÖÃ·ÅÆúÁ¬»·ÈÎÎñtoÕ ğµ Ê±¼ä
	--begin modified by zhangguoxin 090207
	--local CurTime = GetHourTime()											-- µ±Ç°Ê±¼ä
	local CurTime = GetQuarterTime()											-- µ±Ç°Ê±¼ä
	--end modified by zhangguoxin 090207
	SetMissionData( sceneId, selfId, MD_ROUNDMISSION1, CurTime )

	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
	DelMission( sceneId, selfId, x050100_g_MissionId )
	
	--Ğúng·ñĞúngËùC¥n toÕ ğµ ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )

	if sceneId == copyscene and fubentype == x050100_g_CopySceneType then											-- Èç¹ûTÕi ¸±±¾ÀïÉ¾³ıÈÎÎñ,ÔòÖ±½Ó´«ËÍ»Ø
		x050100_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		-- È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
		NewWorld( sceneId, selfId, oldsceneId, x050100_g_Back_X, x050100_g_Back_Z )
	end
end


--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x050100_OnCopySceneTimer( sceneId, nowTime )
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

		if leaveTickCount >= x050100_g_CloseTick then										-- µ¹¼ÆÊ±¼äµ½,´ó¼Ò¶¼³öÈ¥°É
			--½«µ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòtoÕ ğµ ³¡¾°
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x050100_Exit( sceneId, mems[i] )
				end
			end
		else
			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË,³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local strText = format( "Các hÕ s¨ r¶i khöi n½i này trong vòng %d giây næa!", ( x050100_g_CloseTick - leaveTickCount ) * x050100_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x050100_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	elseif TickCount == x050100_g_LimitTotalHoldTime then									-- ¸±±¾×ÜÊ±¼äÏŞÖÆµ½ÁË
		--´Ë´¦ÉèÖÃ¸±±¾ÈÎÎñÓĞÊ±¼äÏŞÖÆtoÕ ğµ Çé¿ö,µ±Ê±¼äµ½ºó´¦Àí...
		for	i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				x050100_NotifyFailTips( sceneId, mems[i], "Th¶i gian nhi®m vø ğã hªt, r¶i cänh..." )
				x050100_Exit( sceneId, mems[i] )
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
				x050100_NotifyFailTips( sceneId, mems[i], "Ngß½i không · trong ğúng ğµi, r¶i cänh..." )
				x050100_Exit( sceneId, mems[i] )
			end
		end

		-- Ã¿ phútÌáÊ¾Íæ¼ÒÊ£ÓàÊ±¼ä
		if mod( x050100_g_TickTime * TickCount, 60 ) < x050100_g_TickTime and TickCount < x050100_g_LimitTotalHoldTime then
			local str = "Còn lÕi " .. ( x050100_g_LimitTotalHoldTime - TickCount ) * x050100_g_TickTime / 60 .. " Phút..."
			for	i = 0, membercount - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x050100_NotifyFailTips( sceneId, mems[i], str )
				end
			end
		end

		-- ¸±±¾½øĞĞ15 phútÊ±»áTÕi ¶Ó³¤Íæ¼ÒÉí±ßË¢³öĞ¡boss: Î±×°toÕ ğµ ËÎ±ø¸±¶¼Í³
		if TickCount == x050100_g_LoadBossTick then
			local bossGrade = LuaFnGetCopySceneData_Param( sceneId, 13 )
			if not x050100_g_LittleBoss[bossGrade] then
				return
			end

			local PosX, PosZ = 55, 66												-- ±ÜÃâ³öÏÖ¶ÓÎé³ÉÔ±ËÀ¹â¹â°¡ËÀ¹â¹â
			for	i = 0, membercount - 1 do
				PosX, PosZ = LuaFnGetWorldPos( sceneId, mems[i] )					-- ±ÜÃâ³öÏÖÎ´ÕÒµ½¶Ó³¤toÕ ğµ ÒâÍâ
				if LuaFnIsTeamLeader( sceneId, mems[i] ) == 1 then
					break
				end
			end

			local bossId = LuaFnCreateMonster( sceneId, x050100_g_LittleBoss[bossGrade], PosX, PosZ, 14, 124, -1 )
			SetLevel( sceneId, bossId, GetLevel( sceneId, bossId ) + LevelGap )
			SetMonsterGroupID( sceneId, bossId, x050100_g_ViceBossGroup )
		end

		-- É±ËÀµØÍ¼ÖĞÑëtoÕ ğµ Ğ¡boss[Î±×°toÕ ğµ ËÎ±ø¶¼Í³]5 giâyºó,TÕi µØÍ¼ÏÂ·½Ë¢³ö10Ö»ÑØÂ·ÏßÌÓ´ÜtoÕ ğµ Ğ¡¹Ö
		local flag = LuaFnGetCopySceneData_Param( sceneId, 12 )
		if flag > 0 then
			if flag == 1 then
				LuaFnSetCopySceneData_Param( sceneId, 12, 2 )						-- µÈmµt ÂÖÔÙ³öĞ¡¹Ö
			elseif flag == 2 then
				LuaFnSetCopySceneData_Param( sceneId, 12, 0 )

				local bossGrade = LuaFnGetCopySceneData_Param( sceneId, 13 )
				if not x050100_g_Dogface[bossGrade] then
					return
				end

				local dogfaceId = -1
				for i = 1, getn( x050100_g_DogfacePos ) do
					if x050100_g_DogfacePos[i] then
						dogfaceId = LuaFnCreateMonster( sceneId, x050100_g_Dogface[bossGrade], x050100_g_DogfacePos[i][1], x050100_g_DogfacePos[i][2], 1, 4, -1 )
						SetLevel( sceneId, dogfaceId, GetLevel( sceneId, dogfaceId ) + LevelGap )
						SetMonsterGroupID( sceneId, dogfaceId, x050100_g_DogfaceGroup )
						SetPatrolId( sceneId, dogfaceId, x050100_g_DogfacePos[i][3] )		-- ÉèÖÃÑ²ÂßÂ·¾¶
					end
				end
			end
		end

		-- Ğ¡¹ÖÑØÂ·Ïßµ½´ïÖ¸¶¨ÇøÓòÔòÏûÊ§
		-- µ±ÓĞmµt cáiĞ¡¹ÖÌÓ×ßºóTÕi ÆÁÄ»ÉÏ·½ÌáÊ¾Íæ¼Ò: ¡°ÌÓ´Ü·ËÀàÌÓ³ö,ÔôÈËÍ·Ä¿ÎÅ·ç²ØÄä,ÈÎÎñth¤t bÕi.¡±
		local monstercount = GetMonsterCount( sceneId )
		local monsterId, GroupID, DogX, DogZ, misIndex
		local x, z = GetLastPatrolPoint( sceneId, 5 )

		for i = 0, monstercount - 1 do
			monsterId = GetMonsterObjID( sceneId, i )
			GroupID = GetMonsterGroupID( sceneId, monsterId )

			if GroupID == x050100_g_DogfaceGroup
			 and LuaFnIsCharacterLiving( sceneId, monsterId ) == 1 then			-- ÅĞ¶Ï»î×ÅtoÕ ğµ Ğ¡±øĞúng·ñÌÓÅÜ³É¹¦
				DogX, DogZ = GetWorldPos( sceneId, monsterId )

				if (x - DogX) * (x - DogX) + (z - DogZ) * (z - DogZ) < 25 then	-- ÀëÖÕ ği¬m²»µ½ 5 Ã×
					if LuaFnGetCopySceneData_Param( sceneId, 14 ) < 1 then		-- µÚmµt ´ÎĞ¡±øÌÓÅÜ
						LuaFnSetCopySceneData_Param( sceneId, 14, 1 )			-- Ğúng·ñÒÑ¾­ÓĞĞ¡¹ÖÌÓ×ß

						for	i = 0, membercount - 1 do
							if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
								misIndex = GetMissionIndexByID( sceneId, mems[i], x050100_g_MissionId )
								SetMissionByIndex( sceneId, mems[i], misIndex, x050100_g_IsMissionOkFail, 2 )	-- ÈÎÎñth¤t bÕi
								x050100_NotifyFailTips( sceneId, mems[i], "B÷n cß¾p ğã chÕy tr¯n ra khöi núi, tên c¥m ğ¥u ğã ğánh ğßşc h½i tr¯n m¤t, nhi®m vø th¤t bÕi" )
							end
						end
					end

					LuaFnDeleteMonster( sceneId, monsterId )
				end
			end
		end

--		if GetMonsterCount( sceneId ) < 1 then
--			LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
--		end
	end
end

--**********************************
--¼ÌĞø
--**********************************
function x050100_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x050100_g_MissionName )
		AddText( sceneId, x050100_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x050100_g_ScriptId, x050100_g_MissionId )
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x050100_CheckSubmit( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050100_g_MissionId ) <= 0 then
		return 0
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050100_g_MissionId )				--  ği¬mµ½ÈÎÎñtoÕ ğµ ĞòÁĞºÅ
	if GetMissionParam( sceneId, selfId, misIndex, x050100_g_IsMissionOkFail ) ~= 1 then
		return 0
	end

	local nItemNum = GetItemCount( sceneId, selfId, x050100_g_Token )
	if nItemNum < 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x050100_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x050100_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	if x050100_CheckSubmit( sceneId, selfId ) == 1 then
		-- ²»¿Û¶«Î÷,Ö±½ÓÍê³É
		x050100_NotifyFailBox( sceneId, selfId, targetId, x050100_g_MissionComplete )
		DelMission( sceneId, selfId, x050100_g_MissionId )
		-- ÈÎÎñ»mµt î¶¯Í³¼Æ
		LuaFnAuditQuest(sceneId, selfId, "Biên gi¾i T¯ng Liêu")
		local strText = x050100_g_MissionName .. "nhi®m vø ğã hoàn thành"
		x050100_NotifyFailTips( sceneId, selfId, strText )
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )

		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		CallScriptFunction( SCENE_SCRIPT_ID, "PlaySoundEffect", sceneId, selfId, 66 )
	end
end

--**********************************
-- ¶Ô»°´°¿ÚĞÅÏ¢ÌáÊ¾
--**********************************
function x050100_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ÆÁÄ»ÖĞ¼äĞÅÏ¢ÌáÊ¾
--**********************************
function x050100_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
