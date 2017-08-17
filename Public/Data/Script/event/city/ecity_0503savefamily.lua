--¸±±¾ÈÎÎñ
--¾ÈÔ®ÃÅÅÉ´óÄÑ

--************************************************************************
--MisDescBegin

--½Å±¾ºÅ
x600026_g_ScriptId = 600026

--ÈÎÎñºÅ
x600026_g_MissionId = 1110

--Ä¿±êNPC
x600026_g_Name = "Ğông Phù Dung"

--ĞÆng c¤p nhi®m vø 
x600026_g_MissionLevel = 10000

--ÈÎÎñ¹éÀà
x600026_g_MissionKind = 50

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x600026_g_IfMissionElite = 0

--********ÏÂÃæ¼¸ÏîĞúng¶¯Ì¬ÏÔÊ¾toÕ ğµ ÄÚÈİ,ÓÃÓÚTÕi ÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
--½ÇÉ«Mission±äÁ¿Ë ği¬m÷

x600026_g_IsMissionOkFail			=0	--0 Nhi®m vø hoàn thành±ê¼Ç
x600026_g_MissionParam_SubId		=1	--1 ×ÓÈÎÎñ½Å±¾ºÅ´æ·ÅÎ»ÖÃ
x600026_g_Param_sceneid				=2	--2 µ±Ç°¸±±¾ÈÎÎñtoÕ ğµ ³¡¾°ºÅ
x600026_g_MissionParam_Phase		=3	--3 ½×¶ÎºÅ ´ËºÅÓÃÓÚÇø·Öµ±Ç°ÈÎÎñUItoÕ ğµ ÃèÊöĞÅÏ¢
x600026_g_MissionParam_MasterId		=4	--4 ÃÅÅÉÕÆÃÅtoÕ ğµ NPCIdºÅ
x600026_g_MissionParam_MenpaiIndex	=5	--5 Ä³ÃÅÅÉtoÕ ğµ Ë÷Òı,·Ö±ğÓÃÓÚ²éÕÒ×Ö·û´®ÁĞ±íÖĞÄ³ÃÅÅÉtoÕ ğµ Ãû³Æ[¿Í»§¶Ë]ÒÔ¼°ÈÎÎñÓëÃÅÅÉÏà¹ØtoÕ ğµ ĞÅÏ¢[·şÎñÆ÷¶Ë]

--Ñ­»·ÈÎÎñtoÕ ğµ Êı¾İË÷Òı,ÀïÃæ´æ×ÅÒÑ×ötoÕ ğµ »·Êı
x600026_g_MissionRound = 55
--**********************************ÒÔÉÏĞúng¶¯Ì¬****************************

--ÈÎÎñÎÄ±¾ÃèÊö
x600026_g_MissionName = "Nhi®m vø khuªch trß½ng"
x600026_g_MissionInfo = ""													--ÈÎÎñÃèÊö
x600026_g_MissionTarget = "%f"												--Møc tiêu nhi®m vø
x600026_g_ContinueInfo = "    Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"						--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x600026_g_SubmitInfo = "    Sñ tình tiªn tri¬n nhß thª nào r°i?"								--Íê³ÉÎ´Ìá½»Ê±toÕ ğµ npc¶Ô»°
x600026_g_MissionComplete = "    R¤t t¯t, L¥n hành ğµng giang h° này ai ai cûng biªt, không h± danh bang ta ğÕi ğÑc ğÕi nghîa. "	--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°

x600026_g_StrForePart = 3

--ÓÃÀ´±£´æ×Ö·û´®¸ñÊ½»¯toÕ ğµ Êı¾İ
x600026_g_FormatList = {
	"",
	"    Tìm %1n ğ¬ cÑu vi®n cho ğÕi nÕn cüa môn phái này",
	"    Hµ t¯ng %2s ğ® tØ ra khöi khu c¤m ğ¸a",
}

x600026_g_StrList = {
	[0] = "Thiªu Lâm",
	[1] = "Minh Giáo",
	[2] = "Cái Bang",
	[3] = "Võ Ğang",
	[4] = "Nga My",
	[5] = "Thiên Long Tñ ",
	[6] = "Tinh Túc",
	[7] = "Thiên S½n",
	[8] = "Tiêu Dao",
}

x600026_g_MenpaiInfo = {
	[0] = { Name = "Thiªu Lâm",		NpcId = 1700008,	CopySceneName = "Tháp Lâm",		Type = FUBEN_TALIN1,		    Map = "tongrenxiang_2.nav",		Exit = "tongrenxiang_2_area.ini",	Monster = "tongrenxiang_2_monster_%d.ini", 	EntrancePos = { x = 28, z = 52 },	BackPos = { x = 38, z = 97 }, },
	[1] = { Name = "Minh Giáo",		NpcId = 1700009,	CopySceneName = "Quang Minh ğµng",	Type = FUBEN_GUANGMINGDONG1,	Map = "guangmingdong_2.nav",	Exit = "guangmingdong_2_area.ini",	Monster = "guangmingdong_2_monster_%d.ini", EntrancePos = { x = 19, z = 42 },	BackPos = { x = 97, z = 55 }, },
	[2] = { Name = "Cái Bang",		NpcId = 1700010,	CopySceneName = "H¥m rßşu",		Type = FUBEN_JIUJIAO1,			Map = "jiujiao_2.nav",			Exit = "jiujiao_2_area.ini",		Monster = "jiujiao_2_monster_%d.ini", 		EntrancePos = { x = 45, z = 47 },	BackPos = { x = 91, z = 99 }, },
	[3] = { Name = "Võ Ğang",		NpcId = 1700011,	CopySceneName = "Linh Tính Phong",	Type = FUBEN_LINGXINGFENG1,		Map = "lingxingfeng_2.nav",		Exit = "lingxingfeng_2_area.ini",	Monster = "lingxingfeng_2_monster_%d.ini", 	EntrancePos = { x = 42, z = 46 },	BackPos = { x = 77, z = 86 }, },
	[4] = { Name = "Nga My",		NpcId = 1700012,	CopySceneName = "Ğào Hoa Tr§n",	Type = FUBEN_TAOHUAZHEN1,		Map = "taohuazhen_2.nav",		Exit = "taohuazhen_2_area.ini",		Monster = "taohuazhen_2_monster_%d.ini", 	EntrancePos = { x = 26, z = 46 },	BackPos = { x = 96, z = 73 }, },
	[5] = { Name = "Thiên Long Tñ ",	NpcId = 1700013,	CopySceneName = "Chân tháp",		Type = FUBEN_TADI1,				Map = "tadi_2.nav",				Exit = "tadi_2_area.ini",			Monster = "tadi_2_monster_%d.ini", 			EntrancePos = { x = 45, z = 48 },	BackPos = { x = 96, z = 67 }, },
	[6] = { Name = "Tinh Túc",		NpcId = 1700014,	CopySceneName = "Ngû Th¥n Ğµng",	Type = FUBEN_WUSHENDONG1,		Map = "wushendong_2.nav",		Exit = "wushendong_2_area.ini",		Monster = "wushendong_2_monster_%d.ini", 	EntrancePos = { x = 14, z = 40 },	BackPos = { x = 142, z = 56 }, },
	[7] = { Name = "Thiên S½n",		NpcId = 1700015,	CopySceneName = "Chiªt Mai Phong",	Type = FUBEN_ZHEMEIFENG1,		Map = "zhemeifeng_2.nav",		Exit = "zhemeifeng_2_area.ini",		Monster = "zhemeifeng_2_monster_%d.ini", 	EntrancePos = { x = 29, z = 49 },	BackPos = { x = 90, z = 45 }, },
	[8] = { Name = "Tiêu Dao",		NpcId = 1700016,	CopySceneName = "C¯c ğ¸a",		Type = FUBEN_GUDI1,				Map = "gudi_2.nav",				Exit = "gudi_2_area.ini",			Monster = "gudi_2_monster_%d.ini", 			EntrancePos = { x = 42, z = 47 },	BackPos = { x = 124, z = 145 }, },
}

-- Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600026_g_CityMissionScript = 600001
x600026_g_ExpandScript = 600023

--ÈÎÎñ½±Àø

--MisDescEnd
--************************************************************************


x600026_g_TickTime = 5					--»Øµ÷½Å±¾toÕ ğµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x600026_g_CloseTick = 3					--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊı)
x600026_g_NoUserTime = 120				--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´ætoÕ ğµ Ê±¼ä(µ¥Î»:  giây)

x600026_g_ProtegeGroup = 2				-- ±»»¤ËÍtoÕ ğµ  NPC Group
x600026_g_PatrolId = 0					-- NPC Ñ²ÂßÂ·¾¶

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x600026_OnDefaultEvent( sceneId, selfId, targetId )
--	if GetName( sceneId, targetId ) ~= x600026_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
--		return
--	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600026_g_MissionId ) > 0 then
		local bDone = x600026_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600026_g_SubmitInfo
		else
			strText = x600026_g_ContinueInfo
		end

		local misIndex = GetMissionIndexByID( sceneId, selfId, x600026_g_MissionId )

		if bDone == 0 and GetMissionParam( sceneId, selfId, misIndex, x600026_g_IsMissionOkFail ) ~= 2 then		--ÈÎÎñÎ´Íê³É
			if GetNumText() == 1 then	-- ÕâÀïĞúng ği¬m»÷ÃÅÅÉÕÆÃÅ
				x600026_AcceptEnterCopyScene( sceneId, selfId )
				return

--				BeginEvent( sceneId )
--					AddText( sceneId, x600026_g_MissionName )
--					AskEnterCopyScene( sceneId, selfId )
--				EndEvent( )
--				DispatchEventList( sceneId, selfId, targetId )
			end

			if GetNumText() == 2 then	-- ÕâÀïĞúng ği¬m»÷±»¾ÈÔ®µÜ×Ó
				x600026_StartPatrol( sceneId, selfId, targetId )
				return
			end
		end

		BeginEvent( sceneId )
			AddText( sceneId, x600026_g_MissionName )
			AddText( sceneId, strText )
		EndEvent( )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600026_g_ScriptId, x600026_g_MissionId, bDone )

	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x600026_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600026_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600026_OnAccept( sceneId, selfId, targetId )
		end
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x600026_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600026_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

   --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600026_g_MissionId ) > 0 then
		AddNumText( sceneId, x600026_g_ScriptId, x600026_g_MissionName,3,-1 )
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x600026_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600026_g_ExpandScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--Tiªp thø
--**********************************
function x600026_OnAccept( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x600026_g_MissionId ) == 0 then					--Ã»ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		if GetLevel( sceneId, selfId ) < 40 then
			CallScriptFunction( x600026_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Không ğü ğÆng c¤p" )
			return
		end

		--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
		AddMission( sceneId, selfId, x600026_g_MissionId, x600026_g_ScriptId, 0, 0, 0 )	-- kill¡¢area¡¢item
		if IsHaveMission( sceneId, selfId, x600026_g_MissionId ) <= 0 then
			return
		end

		SetMissionEvent( sceneId, selfId, x600026_g_MissionId, 4 ) -- ×¢²á x600026_OnLockedTarget ÊÂ¼ş
		CallScriptFunction( x600026_g_ExpandScript, "OnAccept", sceneId, selfId, targetId, x600026_g_ScriptId )
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600026_g_MissionId )

		-- Ëæ»úmµt cáiÃÅÅÉ
		local MenpaiIndex = random( 0, getn(x600026_g_MenpaiInfo) )
		local MenpaiInfo = x600026_g_MenpaiInfo[MenpaiIndex]
		if not MenpaiInfo then
			x600026_NotifyFailTips( sceneId, selfId, "Sai sót nghiêm tr÷ng!" )
			return
		end

		SetMissionByIndex( sceneId, selfId, misIndex, x600026_g_MissionParam_Phase, 1 )
		SetMissionByIndex( sceneId, selfId, misIndex, x600026_g_MissionParam_MasterId, MenpaiInfo.NpcId )
		SetMissionByIndex( sceneId, selfId, misIndex, x600026_g_MissionParam_MenpaiIndex, MenpaiIndex )

		local _, strNpcName, strNpcSceneDesc, nPosX, nPosZ = GetNpcInfoByNpcId(sceneId, MenpaiInfo.NpcId )

		--ÏÔÊ¾ÄÚÈİ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
		BeginEvent( sceneId )
			AddText( sceneId, x600026_g_MissionName )
			local missionInfo = format( "    %s g£p nÕn, ra l®nh cho các hÕ c¤p t¯c tìm %s %s (%d, %d) ğ¬ cÑu vi®n, nh¢m dß½ng uy danh cho b±n bang.",
				MenpaiInfo.Name, strNpcSceneDesc, strNpcName, nPosX, nPosZ )

			AddText( sceneId, missionInfo )
			AddText( sceneId, "#rCác hÕ ğã nh§n " .. x600026_g_MissionName )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
--µ±Ëø¶¨mµt cái¶ÔÏó
--**********************************
function x600026_OnLockedTarget( sceneId, selfId, objId )
	if IsHaveMission( sceneId, selfId, x600026_g_MissionId ) < 1 then
		return		-- Ã»ÓĞ¸ÃÈÎÎñ
	end
	
	-- Èç¹ûµ±Ç°toÕ ğµ NpcĞúng¸±±¾ÖĞtoÕ ğµ Npc,ÄÇÃ´,²»ÄÜÔÙ½øÈë¸±±¾ÁË
	--if LuaFnGetSceneType(sceneId) == 1  then
	--	return
	--end
	
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600026_g_MissionId )
	local MenpaiIndex = GetMissionParam( sceneId, selfId, misIndex, x600026_g_MissionParam_MenpaiIndex )
	local MenpaiInfo = x600026_g_MenpaiInfo[MenpaiIndex]
	if not MenpaiInfo then
		x600026_NotifyFailTips( sceneId, selfId, "Sai sót nghiêm tr÷ng!" )
		return
	end

	local _, strNpcName, _noUse1, _noUse2, _noUse3, _noUse4, nSceneId = GetNpcInfoByNpcId( sceneId, MenpaiInfo.NpcId )	

	if ( GetName( sceneId, objId ) == strNpcName and  nSceneId == sceneId ) then							-- ÕÆÃÅ
		local missionInfo = format( "    Mµt ğám ngß¶i không rõ thân ph§n xâm phÕm vào vùng c¤m ğ¸a, vây hãm ğ® tØ cüa môn phái chúng ta, ğ« ngh¸ cÑu vi®n môn phái chúng ta" )

		TAddText( sceneId, missionInfo )
		TAddNumText( sceneId, x600026_g_ScriptId, "Vào vùng c¤m ğ¸a", 10, 1, x600026_g_ScriptId )
		return
	end

--	--Ğúng·ñĞúng¸±±¾
--	local sceneType = LuaFnGetSceneType( sceneId )
--	if sceneType ~= 1 then
--		return
--	end

	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype == MenpaiInfo.Type then
		local GroupID = GetMonsterGroupID( sceneId, objId )
		-- ÒòÎªÑ²Âß NPC ±» ği¬mÖĞÒÔºó²»»áÔÙ´ÎÏìÓ¦ ği¬m»÷ÊÂ¼ş,ËùÒÔÕâÀï²»×÷¶îÍâ´¦Àí
		if GroupID == x600026_g_ProtegeGroup then
			local PlayerGender = GetSex( sceneId, selfId )
			local rank

			if PlayerGender == 0 then
				rank = "Næ hi®p"
			else
				rank = " các hÕ"
			end

			local missionInfo = format( "    Ğa tÕ %s cÑu vi®n tß½ng trş, ğÕi nghîa cüa quı bang ğªn chªt cûng không quên", rank )

			TAddText( sceneId, missionInfo )
			TAddNumText( sceneId, x600026_g_ScriptId, "Hãy theo tÕi hÕ phá vây", 10, 2, x600026_g_ScriptId )
			return
		end
	end
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x600026_AcceptEnterCopyScene( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600026_g_MissionId ) > 0 then					--ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600026_g_MissionId )

		-- ÕâÀï²»°ÑÍæ¼Ò´«µ½ÉÏmµt cái³¡¾°,ÒòÎª»¤ËÍÈÎÎñÖĞ,Íæ¼Òmµt µ©Àë¿ª³¡¾°
		-- ±»»¤ËÍtoÕ ğµ  NPC ¿ÉÄÜËÀÍö,Ò²¿ÉÄÜ×ßµ½ÖÕ ği¬m,Ò²¿ÉÄÜ¸±±¾ÒÑ¾­ÉèÖÃÎª¹Ø±Õ±ê¼Ç
		-- ¶¼¿ÉÄÜµ¼ÖÂÍæ¼ÒÎŞÒâÒå ği¬m½øÈë,ËùÒÔmµt µ©Í¬Òâ½øÈë¸±±¾,mµt ÂÉ½øÈëĞÂ¸±±¾

		SetMissionByIndex( sceneId, selfId, misIndex, x600026_g_IsMissionOkFail, 0 )	--½«ÈÎÎñtoÕ ğµ µÚ0ºÅÊı¾İÉèÖÃÎª0,±íÊ¾Î´Íê³ÉtoÕ ğµ ÈÎÎñ
		SetMissionByIndex( sceneId, selfId, misIndex, x600026_g_Param_sceneid, -1 )		--½«ÈÎÎñtoÕ ğµ µÚ2ºÅÊı¾İÉèÖÃÎª-1, ÓÃÓÚ±£´æ¸±±¾toÕ ğµ ³¡¾°ºÅ
		x600026_MakeCopyScene( sceneId, selfId )
	end
end

--**********************************
--¿ªÊ¼½øÈë»¤ËÍ¹ı³Ì
--**********************************
function x600026_StartPatrol( sceneId, selfId, targetId )
	local flag = LuaFnGetCopySceneData_Param( sceneId, 8 )
	if flag == 1 then															-- ÒÑ¾­¿ªÊ¼»¤ËÍ
		return
	end

	local GroupID = GetMonsterGroupID( sceneId, targetId )
	if GroupID == x600026_g_ProtegeGroup then
		--Æô¶¯¸ÃÈÎÎñtoÕ ğµ ÈÎÎñÊ±ÖÓÆ÷
		StartMissionTimer( sceneId, selfId, x600026_g_MissionId )
		SetMissionEvent( sceneId, selfId, x600026_g_MissionId, 5 )
		SetPatrolId( sceneId, targetId, x600026_g_PatrolId )							-- ÉèÖÃÑ²ÂßÂ·¾¶
		LuaFnSetCopySceneData_Param( sceneId, 8, 1 )							--±êÊ¾ÒÑ¾­¿ªÊ¼»¤ËÍ
		SetUnitReputationID( sceneId, selfId, targetId, GetUnitReputationID( sceneId, selfId, selfId ) )
		SetMonsterFightWithNpcFlag( sceneId, targetId, 1 )				-- ´ò¿ªÔÊĞí¹ÖÎïºÍ¹ÖÎïCuµc chiªn toÕ ğµ ±ê¼Ç
		-- GetMonsterFightWithNpcFlag
	end
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x600026_MakeCopyScene( sceneId, selfId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600026_g_MissionId )
	local MenpaiIndex = GetMissionParam( sceneId, selfId, misIndex, x600026_g_MissionParam_MenpaiIndex )
	local MenpaiInfo = x600026_g_MenpaiInfo[MenpaiIndex]
	if not MenpaiInfo then
		x600026_NotifyFailTips( sceneId, selfId, "Sai sót nghiêm tr÷ng!" )
		return
	end

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	LuaFnSetSceneLoad_Map( sceneId, MenpaiInfo.Map )						--µØÍ¼Ğúng±ØĞëÑ¡È¡toÕ ğµ ,¶øÇÒ±ØĞëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x600026_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x600026_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, MenpaiInfo.Type )				--ÉèÖÃ¸±±¾Êı¾İ,ÕâÀï½«0ºÅË÷ÒıtoÕ ğµ Êı¾İÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param( sceneId, 1, x600026_g_ScriptId )					--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, 6, 0 )							-- ği¬m»÷±»»¤ËÍÕßtoÕ ğµ ´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, 7, MenpaiIndex )					--±êÊ¾ÕâĞúngµÚ¼¸cái³¡¾°
	LuaFnSetCopySceneData_Param( sceneId, 8, 0 )							--±êÊ¾Ğúng·ñÒÑ¾­¿ªÊ¼»¤ËÍ

	local PlayerMaxLevel = GetHumanMaxLevelLimit() --modi:lby20071127

	local mylevel = GetLevel( sceneId, selfId )
	local iniLevel
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end

	LuaFnSetSceneLoad_Area( sceneId, MenpaiInfo.Exit )
	LuaFnSetSceneLoad_Monster( sceneId, format( MenpaiInfo.Monster, iniLevel ) )

	LuaFnSetCopySceneData_Param( sceneId, CopyScene_LevelGap, mylevel - iniLevel ) --c¤p±ğ²î,CopyScene_LevelGap TÕi  scene.lua ÖĞ¸³Öµ

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
	if bRetSceneID > 0 then
		x600026_NotifyFailTips( sceneId, selfId, "D¸ch chuy¬n thành công!" )
	else
		x600026_NotifyFailTips( sceneId, selfId, "S¯ lßşng bän sao ğã ğªn gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!" )
	end

end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x600026_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )					--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- ´¦ÓÚÎŞ·¨Ö´ĞĞÂß¼­toÕ ğµ ×´Ì¬
		return
	end

	if IsHaveMission( sceneId, leaderObjId, x600026_g_MissionId ) > 0 then			--ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		local misIndex = GetMissionIndexByID( sceneId, leaderObjId, x600026_g_MissionId )
		local MenpaiIndex = GetMissionParam( sceneId, leaderObjId, misIndex, x600026_g_MissionParam_MenpaiIndex )
		local MenpaiInfo = x600026_g_MenpaiInfo[MenpaiIndex]
		if not MenpaiInfo then
			x600026_NotifyFailTips( sceneId, leaderObjId, "Sai sót nghiêm tr÷ng!" )
			return
		end

		--½«ÈÎÎñtoÕ ğµ µÚ2ºÅÊı¾İÉèÖÃÎª¸±±¾toÕ ğµ ³¡¾°ºÅ
		SetMissionByIndex( sceneId, leaderObjId, misIndex, x600026_g_Param_sceneid, destsceneId )
		NewWorld( sceneId, leaderObjId, destsceneId, MenpaiInfo.EntrancePos.x, MenpaiInfo.EntrancePos.z )
	end
end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x600026_OnPlayerEnter( sceneId, selfId )
	local MenpaiIndex = LuaFnGetCopySceneData_Param( sceneId, 7 )
	local MenpaiInfo = x600026_g_MenpaiInfo[MenpaiIndex]
	if not MenpaiInfo then
		x600026_NotifyFailTips( sceneId, selfId, "Sai sót nghiêm tr÷ng!" )
		return
	end

	if IsHaveMission( sceneId, selfId, x600026_g_MissionId ) == 0 then				-- Èç¹û½øÈë¸±±¾Ç°É¾³ıÈÎÎñ,ÔòÖ±½Ó´«ËÍ»Ø
		x600026_NotifyFailTips( sceneId, selfId, "Các hÕ ğã không nh§n nhi®m vø này t× trß¾c" )
		x600026_BackToCity( sceneId, selfId )
		return
	end
end

--**********************************
--ÓĞÍæ¼ÒTÕi ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x600026_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--·ÅÆú
--**********************************
function x600026_OnAbandon( sceneId, selfId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600026_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x600026_g_Param_sceneid )

	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
	CallScriptFunction( x600026_g_ExpandScript, "OnAbandon", sceneId, selfId )

	if sceneId == copyscene then											--Èç¹ûTÕi ¸±±¾ÀïÉ¾³ıÈÎÎñ,ÔòÖ±½Ó´«ËÍ»Ø
		x600026_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )
		x600026_BackToCity( sceneId, selfId )
	end
end

--**********************************
-- »Ø³Ç,Ö»ÓĞThành ph¯ ÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x600026_BackToCity( sceneId, selfId )
	local MenpaiIndex = LuaFnGetCopySceneData_Param( sceneId, 7 )
	local MenpaiInfo = x600026_g_MenpaiInfo[MenpaiIndex]
	if not MenpaiInfo then
		x600026_NotifyFailTips( sceneId, selfId, "Sai sót nghiêm tr÷ng!" )
		return
	end

	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )					--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
	NewWorld( sceneId, selfId, oldsceneId, MenpaiInfo.BackPos.x, MenpaiInfo.BackPos.z )
end

--**********************************
--¼ÌĞø
--**********************************
function x600026_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600026_g_MissionName )
		AddText( sceneId, x600026_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600026_g_ScriptId, x600026_g_MissionId )
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600026_CheckSubmit( sceneId, selfId, selectRadioId )
	--ÅĞ¶ÏÈÎÎñĞúng·ñÒÑ¾­Íê³É
	local ret = CallScriptFunction( x600026_g_ExpandScript, "CheckSubmit", sceneId, selfId )
	return ret
end

--**********************************
--Ìá½»
--**********************************
function x600026_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600026_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	if x600026_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600026_g_ExpandScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x600026_OnKillObject( sceneId, selfId, objdataId, objId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x600026_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x600026_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x600026_OnCopySceneTimer( sceneId, nowTime )

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

		if leaveTickCount >= x600026_g_CloseTick then										--µ¹¼ÆÊ±¼äµ½,´ó¼Ò¶¼³öÈ¥°É
			--½«µ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòtoÕ ğµ ³¡¾°
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x600026_BackToCity( sceneId, mems[i] )
				end
			end
		else
			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË,³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local strText = format( "Các hÕ s¨ r¶i khöi n½i này trong vòng %d giây næa", ( x600026_g_CloseTick - leaveTickCount ) * x600026_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x600026_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	end
end

--**********************************
--¶¨Ê±ÊÂ¼ş
--**********************************
function x600026_OnTimer( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600026_g_MissionId ) < 1 then
		return		-- Ã»ÓĞ¸ÃÈÎÎñ
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600026_g_MissionId )

	local MenpaiIndex = LuaFnGetCopySceneData_Param( sceneId, 7 )
	local MenpaiInfo = x600026_g_MenpaiInfo[MenpaiIndex]
	if not MenpaiInfo then
		x600026_NotifyFailTips( sceneId, selfId, "Sai sót nghiêm tr÷ng!" )
		return
	end

	--Ğúng·ñĞúng¸±±¾
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		ResetMissionEvent( sceneId, selfId, x600026_g_MissionId, 5 )			-- ²»ÔÙ×ß´ËĞÄÌø
		return
	end

	--Ğúng·ñĞúngËùC¥n toÕ ğµ ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype == MenpaiInfo.Type then
		local monstercount = GetMonsterCount( sceneId )
		local i, monsterId, GroupID

		for i = 0, monstercount - 1 do
			monsterId = GetMonsterObjID( sceneId, i )
			GroupID = GetMonsterGroupID( sceneId, monsterId )
			-- ÒòÎªÑ²Âß NPC ±» ği¬mÖĞÒÔºó²»»áÔÙ´ÎÏìÓ¦ ği¬m»÷ÊÂ¼ş,ËùÒÔÕâÀï²»×÷¶îÍâ´¦Àí
			if GroupID == x600026_g_ProtegeGroup then
				local x, z = GetLastPatrolPoint( sceneId, 0 )
				local npcX, npcZ = GetWorldPos( sceneId, monsterId )

				if (x - npcX) * (x - npcX) + (z - npcZ) * (z - npcZ) < 4 then	-- ÀëÖÕ ği¬m²»µ½ 2 Ã×
					SetMissionByIndex( sceneId, selfId, misIndex, x600026_g_IsMissionOkFail, 1 )
					ResetMissionEvent( sceneId, selfId, x600026_g_MissionId, 5 )		-- ²»ÔÙ×ß´ËĞÄÌø
					ResetMissionEvent( sceneId, selfId, x600026_g_MissionId, 4 )		-- ²»ÔÙÈÃ ği¬m»÷
					LuaFnDeleteMonster( sceneId, monsterId )
					LuaFnSetCopySceneData_Param( sceneId, 4, 1 )				-- ¸±±¾¹Ø±Õ±ê¼Ç
					x600026_NotifyFailTips( sceneId, selfId, "Nhi®m vø hoàn thành, hãy quay v« thành phøc m®nh" )
				end

				return
			end
		end

		-- ±»»¤ËÍtoÕ ğµ  NPC ËÀÍö
		x600026_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )
		SetMissionByIndex( sceneId, selfId, misIndex, x600026_g_IsMissionOkFail, 2 )	-- Nhi®m vø th¤t bÕi
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	end

	-- Àë¿ªÁË¸±±¾»òÕß±»»¤ËÍtoÕ ğµ  NPC ËÀÍö¶¼Í£Ö¹×ß¼ÆÊ±Æ÷
	ResetMissionEvent( sceneId, selfId, x600026_g_MissionId, 5 )						-- ²»ÔÙ×ß´ËĞÄÌø
end

function x600026_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
