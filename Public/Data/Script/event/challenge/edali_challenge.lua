-- ¸÷ÀŞÌ¨¶ÔÓ¦µÄ ½Å±¾

x806014_g_ScriptId = 806014

x806014_g_GlobalChallengeScript = 806010

-- ¸±±¾³¡¾°
x806014_g_CopyScene = "leitai_1.nav"

-- ¸±±¾³ö¿Ú
x806014_g_CopySceneExit = "leitai_1_area.ini"

-- ¸±±¾µÇÂ½µØµã
x806014_g_Pos = { x=32, z=33, offset=3.53 }

-- ¸±±¾ÎŞÈËÊ±¹Ø±ÕÊ±¼ä (ºÁÃë)
x806014_g_CopySceneCloseTime = 3000

-- ¸±±¾¶¨Ê±Æ÷´¥·¢ÖÜÆÚ (ºÁÃë)
x806014_g_TickTime = 5000

-- ÀŞÌ¨¿ªÊ¼Ê±¼ä
x806014_g_BeginTick = 3

-- ¸±±¾Ö»Ê£ÏÂÒ»·½Ê±µÄ¹Ø±ÕÖÜÆÚ ( µ¥Î»Îª¶¨Ê±Æ÷´¥·¢ÖÜÆÚ )
x806014_g_CloseTick = 3

-- ¸±±¾Pvp¹æÔò
x806014_g_PvpRuler = 9	--modify by zchw

-- ¸±±¾ÀàĞÍºÅ
x806014_g_CopySceneType = FUBEN_PVP_LEITAI

-- ÌôÕ½Ë«·½ÕóÓªºÅ
x806014_g_Camp = { self=10, target=11 }

-- ÌôÕ½½áÊøÒÔºó»Øµ½µÄÎ»ÖÃ
x806014_g_BackPos = { sceneId=186, x=166, z=45 }

-- ÎŞµĞ BUFF ~~~
x806014_g_Buff = 112

x806014_g_BuffID_ClearChgBodyBuff = 84
-- ÈÃ selfId (¼°¶ÓÓÑ) ÌôÕ½ targetId (¼°¶ÓÓÑ)
function x806014_DoChallenge( sceneId, selfId, targetId )
	-- ÏÈ´´½¨Ò»¸ö¸±±¾£¬Èç¹û´´½¨³É¹¦£¬Ôò¼ÌĞø£¬·ñÔò·µ»Ø
	local CreatorGUID = LuaFnObjId2Guid( sceneId, selfId )
	local TargetGUID = LuaFnObjId2Guid( sceneId, targetId )
	LuaFnSetSceneLoad_Map( sceneId, x806014_g_CopyScene )						-- µØÍ¼ÊÇ±ØĞëÑ¡È¡µÄ£¬¶øÇÒ±ØĞëÔÚConfig/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader( sceneId, CreatorGUID )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x806014_g_CopySceneCloseTime )
	LuaFnSetCopySceneData_PvpRuler( sceneId, x806014_g_PvpRuler )
	LuaFnSetCopySceneData_Timer( sceneId, x806014_g_TickTime )
	LuaFnSetCopySceneData_Param( sceneId, 0, x806014_g_CopySceneType )			-- ÉèÖÃ¸±±¾ÀàĞÍ
	LuaFnSetCopySceneData_Param( sceneId, 1, x806014_g_ScriptId )				-- ½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )						-- ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, 3, TargetGUID )				-- ÌôÕ½¶ÔÊÖµÄ GUID
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )						-- ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å£¬1¹Ø±Õ
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )						-- ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, 6, 0 )						-- ±£´æ self ¶ÓÎéºÅÒÔ¼°ÕóÓªµÄÊ£ÓàÈËÊı TeamID * 10 + TeamMemberCount
	LuaFnSetCopySceneData_Param( sceneId, 7, 0 )						-- ±£´æ target ¶ÓÎéºÅÒÔ¼°ÕóÓªµÄÊ£ÓàÈËÊı TeamID * 10 + TeamMemberCount

	LuaFnSetSceneLoad_Area( sceneId, x806014_g_CopySceneExit )					-- ¼ÓÔØÀŞÌ¨³ö¿Ú

	local CopySceneID = LuaFnCreateCopyScene( sceneId )					-- ³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
	if CopySceneID <= 0 then
		BeginEvent( sceneId )
			AddText( sceneId, "Lôi ğài ğã quá ch§t, không th¬ chÑa thêm ngß¶i ğªn thách ğ¤u." )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
		DispatchMissionTips( sceneId, targetId )
		return
	end
	--¼ÇÂ¼Í³¼ÆĞÅÏ¢
	LuaFnAuditChallenge(sceneId, selfId, targetId)

end

function x806014_GetSelfTeamId( sceneId )
	return LuaFnGetCopySceneData_Param( sceneId, 6 ) / 10
end

function x806014_GetTargetTeamId( sceneId )
	return LuaFnGetCopySceneData_Param( sceneId, 7 ) / 10
end

function x806014_GetSelfMembersCount( sceneId )
	local selfInfo = LuaFnGetCopySceneData_Param( sceneId, 6 )
	selfInfo = selfInfo - selfInfo / 10 * 10

	if selfInfo < 0 then
		selfInfo = -selfInfo
	end

	return selfInfo
end

function x806014_ModifySelfMembersCount( sceneId, count )
	local selfInfo = LuaFnGetCopySceneData_Param( sceneId, 6 )

	if selfInfo < 0 then
		count = -count
	end

	LuaFnSetCopySceneData_Param( sceneId, 6, selfInfo + count )
end

function x806014_GetTargetMembersCount( sceneId )
	local TargetInfo = LuaFnGetCopySceneData_Param( sceneId, 7 )
	TargetInfo = TargetInfo - TargetInfo / 10 * 10

	if TargetInfo < 0 then
		TargetInfo = -TargetInfo
	end

	return TargetInfo
end

function x806014_ModifyTargetMembersCount( sceneId, count )
	local TargetInfo = LuaFnGetCopySceneData_Param( sceneId, 7 )

	if TargetInfo < 0 then
		count = -count
	end

	LuaFnSetCopySceneData_Param( sceneId, 7, TargetInfo + count )
end

function x806014_CalcPosOffset()
	local offset = x806014_g_Pos.offset * random(100) / 100

	if random(0, 1) > 0 then
		offset = -offset
	end

	return offset
end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x806014_OnCopySceneReady( sceneId, destsceneId )

	-- ÒÔÏÂ»ñµÃÒ»¸öÍêÕûµÄĞèÒª½øÈëĞÂÇøÓòµÄÈËÔ±ÁĞ±í
	local selfId = LuaFnGuid2ObjId( sceneId, LuaFnGetCopySceneData_TeamLeader(destsceneId) )
	local targetId = LuaFnGuid2ObjId( sceneId, LuaFnGetCopySceneData_Param( destsceneId, 3 ) )
	local ChallengeFlag = GetMissionData( sceneId, selfId, MD_TIAOZHAN_SCRIPT )
	local selfCampCount = 0
	local targetCampCount = 0
	local num = 0
	local members = {}
	local membersCount = 0

	-- ½«Á½±ßµÄ¶ÓÎéºÅ±£´æÆğÀ´
	LuaFnSetCopySceneData_Param( destsceneId, 6, 10 * GetTeamId( sceneId, selfId ) )
	LuaFnSetCopySceneData_Param( destsceneId, 7, 10 * GetTeamId( sceneId, targetId ) )

	-- ½«·ûºÏ´«ËÍÌõ¼şµÄÍæ¼Ò×éºÏÆğÀ´
	members[0] = selfId
	membersCount = 1
	if LuaFnHasTeam( sceneId, selfId ) ~= 0 then
		num = LuaFnGetTeamSceneMemberCount( sceneId, selfId )
		for	i=0, num-1 do
			members[membersCount] = LuaFnGetTeamSceneMember( sceneId, selfId, i )

			if GetMissionData( sceneId, members[membersCount], MD_TIAOZHAN_SCRIPT ) == ChallengeFlag then
				membersCount = membersCount + 1
			end
		end
	end

	members[membersCount] = targetId
	membersCount = membersCount + 1
	if LuaFnHasTeam( sceneId, targetId ) ~= 0 then
		num = LuaFnGetTeamSceneMemberCount( sceneId, targetId )
		for	i=0, num-1 do
			members[membersCount] = LuaFnGetTeamSceneMember( sceneId, targetId, i )

			if GetMissionData( sceneId, members[membersCount], MD_TIAOZHAN_SCRIPT ) == ChallengeFlag then
				membersCount = membersCount + 1
			end
		end
	end

	for i=0, membersCount-1 do
		-- TODO: Ä¿Ç°ÊÇÓĞ±ê¼Ç¾Í´«ËÍ¹ıÈ¥£¬½«ÒªÅĞ¶ÏÊÇ·ñ´¦ÓÚÒ»Ğ©ÌØ¶¨×´Ì¬£¬±ÈÈç½»Ò×¡¢°ÚÌ¯µÈµÈ×´Ì¬ÊÇ²»ÄÜ´«ËÍµÄ
		if LuaFnIsCanDoScriptLogic( sceneId, members[i] ) == 1 then
			NewWorld( sceneId, members[i], destsceneId, x806014_g_Pos.x + x806014_CalcPosOffset(), x806014_g_Pos.z + x806014_CalcPosOffset())
		end
	end
end

-- »ñµÃ×Ô¼ºÕ¾ÔÚÄÄ·½µÄĞÅÏ¢£¬1: ÌôÕ½·½£¬2: ±»ÌôÕ½·½
function x806014_GetMySide( sceneId, selfId )
	local MyGUID = LuaFnObjId2Guid( sceneId, selfId )

	local ChallengerGUID = LuaFnGetCopySceneData_TeamLeader( sceneId )
	local targetGUID = LuaFnGetCopySceneData_Param( sceneId, 3 )

	local MySide = 0

	if targetGUID < 0 then
		targetGUID = targetGUID + 4294967296
	end

	if MyGUID == ChallengerGUID then
		MySide = 1
	elseif MyGUID == targetGUID then
		MySide = 2
	else
		local MyTeamId = GetTeamId( sceneId, selfId )
		local selfTeamId = x806014_GetSelfTeamId( sceneId )
		local targetTeamId = x806014_GetTargetTeamId( sceneId )

		if MyTeamId == selfTeamId then
			MySide = 1
		else	-- ³öÁËÎÊÌâ¾Í±ãÒË±»ÌôÕ½ÕßÁË£¬ºÇºÇ
			MySide = 2
		end
	end

	return MySide
end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x806014_OnPlayerEnter( sceneId, selfId )
	-- ÉèÖÃÍæ¼ÒÕóÓªºÅ£¬Èç¹ûÍæ¼ÒµÄ GUID µÈÓÚÌôÕ½·½»ò±»ÌôÕ½·½ GUID£¬ÔòÖ±½ÓÉèÖÃÏàÓ¦ÕóÓªºÅ
	-- ·ñÔòÍæ¼ÒÓ¦¸ÃÊôÓÚÄ³Ò»·½µÄ¶ÓÎé£¬Èç¹û¶ÓÎéºÅÏàµÈ£¬Ôò¸³Óè¸Ã¶ÓÎéºÅ¶ÔÓ¦µÄÕóÓªºÅ
	SetMissionData( sceneId, selfId, MD_PREV_CAMP, GetCurCamp(sceneId, selfId) )

	local MySide = x806014_GetMySide( sceneId, selfId )
	if MySide == 1 then
		SetUnitCampID( sceneId, selfId, selfId, x806014_g_Camp.self )
		SetPvpAuthorizationFlagByID(sceneId, selfId, 2, 1) --2ÊÇ¾º¼¼ÊÚÈ¨±ê¼Ç
	--	x806014_ModifySelfMembersCount( sceneId, 1 )
	else
		SetUnitCampID( sceneId, selfId, selfId, x806014_g_Camp.target )
		SetPvpAuthorizationFlagByID(sceneId, selfId, 2, 1) --2ÊÇ¾º¼¼ÊÚÈ¨±ê¼Ç
	--	x806014_ModifyTargetMembersCount( sceneId, 1 )
	end

	-- ¼ÓÉÏ 15 ÃëµÄ buff£¬Ò²ĞíÓ¦¸Ã·ÅÔÚ NewWorld ÒÔÇ°£¬Ö÷Òªº¦ÅÂÈç¹û NewWorld Ê§°Ü¿ÉÄÜ»áÓĞÒ»Ğ©¸±×÷ÓÃ
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x806014_g_Buff, 0)

	-- ÉèÖÃÄ¬ÈÏ»¹»êµãÎª½øÈë³¡¾°µÄÀŞÌ¨
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", x806014_g_BackPos.sceneId, x806014_g_BackPos.x, x806014_g_BackPos.z )
	-- ½øÈëĞ£³¡¸±±¾µÄÍæ¼ÒÒªÇå³ı±äÉíbuff£¬·ÀÖ¹²»ÄÜ²Ù×÷±»´òËÀ
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x806014_g_BuffID_ClearChgBodyBuff, 0)
end

-- ¸±±¾³ö¿ÚÀë¿ªµ÷ÓÃÕâ¸öº¯Êı
function x806014_LeaveScene( sceneId, selfId )
	-- Í³¼ÆÊ£ÓàÈËÊı
	--local MySide = x806014_GetMySide( sceneId, selfId )
	--if MySide == 1 then
	--	x806014_ModifySelfMembersCount( sceneId, -1 )
	--else
	--	x806014_ModifyTargetMembersCount( sceneId, 1 )
	--end
	SetUnitCampID(sceneId, selfId, selfId, -1)
	SetPvpAuthorizationFlagByID(sceneId, selfId, 2, 0) --2ÊÇ¾º¼¼ÊÚÈ¨±ê¼Ç
	--LuaFnDelApplyCamp( sceneId, selfId )

	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 83 , 0);
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, x806014_g_BackPos.sceneId, x806014_g_BackPos.x, x806014_g_BackPos.z )
end

--**********************************
--ÓĞÍæ¼ÒÔÚ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x806014_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x806014_OnCopySceneTimer( sceneId, nowTime )
	-- ¸±±¾Ê±ÖÓÉèÖÃ
	local tick = LuaFnGetCopySceneData_Param( sceneId, 2 )
	tick = tick + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, tick + 1 )		-- ÉèÖÃĞÂµÄ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı

	-- ¸±±¾¹Ø±Õ±êÖ¾
	leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then																			-- ĞèÒªÀë¿ª
		-- Àë¿ªµ¹¼ÆÊ±¼äµÄ¶ÁÈ¡ºÍÉèÖÃ
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount + 1 )

		if x806014_g_CloseTick <= leaveTickCount then
			-- ½«µ±Ç°¸±±¾³¡¾°ÀïµÄËùÓĞÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòµÄ³¡¾°
			local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
			for	i=0, membercount-1 do
				local playerId = LuaFnGetCopyScene_HumanObjId( sceneId, i )
				if LuaFnIsObjValid( sceneId, playerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, playerId ) == 1 then
					x806014_LeaveScene( sceneId, playerId )
				end
			end
		else
			-- Í¨ÖªÊ£ÓàÍæ¼Ò¸±±¾¼´½«¹Ø±Õ
			local membercount =	LuaFnGetCopyScene_HumanCount( sceneId )
			local strText =	format(	"Lôi ğài s¨ ğóng cØa trong vòng %d giây næa",	(x806014_g_CloseTick-leaveTickCount)*x806014_g_TickTime/1000 )
			BeginEvent(	sceneId	)
				AddText( sceneId, strText )
			EndEvent( sceneId )

			for	i=0, membercount-1 do
				local member = LuaFnGetCopyScene_HumanObjId( sceneId, i	)
				DispatchMissionTips( sceneId, member )
			end
		end
	elseif tick > x806014_g_BeginTick then
		-- Í³¼ÆË«·½ÈËÔ±ÊıÁ¿£¬µ±Ò»·½ÎŞÈËÊ±£¬Ôò¹Ø±Õ¸±±¾£¬²»¿¼ÂÇ¶ÏÏß
		local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
		local selfCount = 0
		local targetCount = 0

		for	i=0, membercount-1 do
			local playerId = LuaFnGetCopyScene_HumanObjId( sceneId, i )
			if LuaFnIsObjValid( sceneId, playerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, playerId ) == 1 then
	  		if x806014_GetMySide( sceneId, playerId ) == 1 then
	  			selfCount = selfCount + 1
	  		else
	  			targetCount = targetCount + 1
	  		end
			end
		end

		if selfCount < 1 or targetCount < 1 then
			LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
		else
			return
		end

		local strText =	"Kªt thúc thi ğ¤u, lôi ğài s¡p ğóng cØa"
		BeginEvent( sceneId	)
			AddText( sceneId, strText )
		EndEvent( sceneId )

		for	i=0, membercount-1 do
			local playerId = LuaFnGetCopyScene_HumanObjId( sceneId, i )
			if LuaFnIsObjValid( sceneId, playerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, playerId ) == 1 then
	  		DispatchMissionTips( sceneId, playerId )
			end
		end
	else
		local membercount = LuaFnGetCopyScene_HumanCount( sceneId )

		local strText = ""

		if tick < x806014_g_BeginTick then
			strText = format( "Thi ğ¤u s¨ b¡t ğ¥u trong %d giây næa", (x806014_g_BeginTick-tick)*x806014_g_TickTime/1000 )
		else
			strText = "Thi ğ¤u chính thÑc b¡t ğ¥u"
		end

		BeginEvent(	sceneId )
			AddText( sceneId, strText )
		EndEvent( sceneId )

		for	i=0, membercount-1 do
			local playerId = LuaFnGetCopyScene_HumanObjId( sceneId, i )
			if LuaFnIsObjValid( sceneId, playerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, playerId ) == 1 then
				DispatchMissionTips( sceneId, playerId )
			end
		end
	end
end
