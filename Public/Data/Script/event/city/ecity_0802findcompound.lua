--¸±±¾ÈÎÎñ
--ËÍ»¹Ê§ÇÔÅä·½

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x600042_g_ScriptId	= 600042
--ÈÎÎñºÅ
x600042_g_MissionId	= 1113
--Ä¿±êNPC
x600042_g_Name			= "Tr¸nh Vô Danh"
--ÐÆng c¤p nhi®m vø 
x600042_g_MissionLevel		= 10000
--ÈÎÎñ¹éÀà
x600042_g_MissionKind			= 50
--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x600042_g_IfMissionElite	= 0

--********ÏÂÃæ¼¸ÏîÐúng¶¯Ì¬ÏÔÊ¾toÕ ðµ ÄÚÈÝ,ÓÃÓÚTÕi ÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
--½ÇÉ«Mission±äÁ¿Ë ði¬m÷
x600042_g_IsMissionOkFail					= 0	--0 Nhi®m vø hoàn thành±ê¼Ç
x600042_g_MissionParam_SubId			= 1	--1 ×ÓÈÎÎñ½Å±¾ºÅ´æ·ÅÎ»ÖÃ
x600042_g_MissionParam_Phase			= 2	--2 ½×¶ÎºÅ,´ËºÅÓÃÓÚÇø·Öµ±Ç°ÈÎÎñUItoÕ ðµ ÃèÊöÐÅÏ¢
x600042_g_MissionParam_NpcId			= 3	--3 ÈÎÎñNPCtoÕ ðµ NPCIdºÅ
x600042_g_MissionParam_ItemId			= 4	--4 ÈÎÎñÎïÆ·toÕ ðµ ±àºÅ
x600042_g_Param_sceneid						= 5	--5 µ±Ç°¸±±¾ÈÎÎñtoÕ ðµ ³¡¾°ºÅ
x600042_g_Param_StateId						= 6	--6 ×´Ì¬
x600042_g_Param_RandomPos					= 7	--7 °ï»á³¡¾°ÖÐtoÕ ðµ Ëæ»ú×ø±ê,Ç°ÈýÎ»ÎªX×ø±ê,ºóÈýÎ»ÎªY×ø±ê( XXX YYY )
--Ñ­»·ÈÎÎñtoÕ ðµ Êý¾ÝË÷Òý,ÀïÃæ´æ×ÅÒÑ×ötoÕ ðµ »·Êý
x600042_g_MissionRound						= 61
--**********************************ÒÔÉÏÐúng¶¯Ì¬****************************

--ÈÎÎñÎÄ±¾ÃèÊö
x600042_g_MissionName			= "Nghiên cÑu nhi®m vø"
x600042_g_MissionInfo			= "Nµi chính thành th¸ - nhi®m vø nghiên cÑu"									--ÈÎÎñÃèÊö
x600042_g_MissionTarget		= "%f"																	--Møc tiêu nhi®m vø
x600042_g_ContinueInfo		= "    Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"					--Î´Hoàn t¤t nhi®m vøtoÕ ðµ npc¶Ô»°
x600042_g_SubmitInfo			= "    Sñ tình tiªn tri¬n nhß thª nào r°i?"								--Íê³ÉÎ´Ìá½»Ê±toÕ ðµ npc¶Ô»°
x600042_g_MissionComplete	= "    R¤t t¯t r¤t t¯t, tiªn ðµ nghiên cÑu tång nhanh không ít. "--Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°

x600042_g_Parameter_Item_IDRandom = { { id = 4, num = 1 } }

x600042_g_StrForePart			= 2

--ÓÃÀ´±£´æ×Ö·û´®¸ñÊ½»¯toÕ ðµ Êý¾Ý
x600042_g_FormatList			= {
	"",
	"    Dña vào ð¥u m¯i tìm ra gián ði®p và nh§n %2i, giao cho %1n. ",			--1 ¸±±¾ÖÐ´ò³öÅä·½
	"    Nh§n ðßþc %2i, giao cho %1n. ",										--2 ÕÒµ½NPC
	"    Hoàn thành nhi®m vø, có th¬ ðªn bang hµi ÐÕi chü quän nh§n giäi thß·ng r°i. "	--3 ËÍ»¹
}

--Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600042_g_CityMissionScript	= 600001
x600042_g_ConstructionScript= 600040
x600042_g_TransScript				= 400900

--ÈÎÎñ½±Àø

--MisDescEnd
--************************************************************************

x600042_g_NPCOffset				= 44	--±íÀïµÚ¼¸ÁÐ NPC toÕ ðµ Æ«ÒÆÁ¿
x600042_g_NPCOffsetEx			= 261	--±íÀïµÚ¼¸ÁÐ NPC toÕ ðµ Æ«ÒÆÁ¿ modi:lby20071126

--½×¶ÎÈÎÎñ
x600042_g_PhaseKey				= {}
x600042_g_PhaseKey["cpd"]	= 1		--¸±±¾ÖÐ´ò³öÅä·½
x600042_g_PhaseKey["npc"]	= 2		--ÕÒµ½NPC
x600042_g_PhaseKey["end"]	= 3		--ËÍ»¹

--ÃûÆ÷Åä·½
x600042_g_itmNeed					= { 40004291 }
--Ê§ÇÔÏßË÷
x600042_g_itmDirect				= 40004290

--************************************************************************
--¸±±¾Ïà¹Ø
x600042_g_CopySceneName	= "Th¸ t§p"				--¸±±¾Ãû³Æ
x600042_g_CopySceneType	= FUBEN_SHIJI1	--¸±±¾ÀàÐÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ
x600042_g_CopySceneMap	= "shiji_1.nav"
x600042_g_Exit					= "shiji_1_area.ini"
x600042_g_TickTime			= 5					--»Øµ÷½Å±¾toÕ ðµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x600042_g_LimitTotalHoldTime	= 360	--¸±±¾¿ÉÒÔ´æ»îtoÕ ðµ Ê±¼ä(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x600042_g_LimitTimeSuccess		= 500	--¸±±¾Ê±¼äÏÞÖÆ(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,Nhi®m vø hoàn thành
x600042_g_CloseTick			= 6					--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊý)
x600042_g_NoUserTime		= 300				--¸±±¾ÖÐÃ»ÓÐÈËºó¿ÉÒÔ¼ÌÐø±£´ætoÕ ðµ Ê±¼ä(µ¥Î»:  giây)
x600042_g_DeadTrans			= 0					--ËÀÍö×ªÒÆÄ£Ê½,0: ËÀÍöºó»¹¿ÉÒÔ¼ÌÐøTÕi ¸±±¾,1: ËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x600042_g_MonsterCount	= 10				--´óÐ¡¹Ö×ÜÊýÁ¿
x600042_g_Fuben_X				= 43				--½øÈë¸±±¾toÕ ðµ Î»ÖÃX
x600042_g_Fuben_Z				= 45				--½øÈë¸±±¾toÕ ðµ Î»ÖÃZ
x600042_g_MonsterGroupId= 0					--Ð¡¹Ö
x600042_g_BossGroupId		= 1					--Boss

--¸±±¾Êý¾ÝÇøË÷Òý
x600042_g_keyParam			=
{
	["typ"]	= 0,	--ÉèÖÃ¸±±¾Êý¾Ý,ÕâÀï½«0ºÅË÷ÒýtoÕ ðµ Êý¾ÝÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êý×Ö×Ô¶¨Òå)
	["sid"]	= 1,	--½«1ºÅÊý¾ÝÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼þ½Å±¾ºÅ
	["tim"]	= 2,	--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý
	["ent"]	= 3,	--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	["cls"]	= 4,	--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	["dwn"]	= 5,	--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊý
	["tem"]	= 6,	--±£´æ¶ÓÎé±àºÅ
	["px"]	= 7,	--Íæ¼Ò³öÀ´Ê±toÕ ðµ X×ø±ê
	["pz"]	= 8,	--Íæ¼Ò³öÀ´Ê±toÕ ðµ Z×ø±ê
}

--ÃüÃû±í¸ñ
x600042_g_lstBossName		=
{
	["fst"]	=
	{
		"Gia Cát ", "Tß Mã ", "Âu Dß½ng ", "Tây Môn", "Hoàng Phü",
		"Tß Ð°", "Úy Trì", "Hô Diên", "Trß¶ng Quan", "Trß¶ng Tôn",
		"Công Tôn", "Løc Phi",	"Nam Quan"
	},
	["mid"]	=
	{	
		"An ", "Lâm ", "Thanh b¢ng", "Thanh", "Kim",
		"Chân ", "Thành ", "Gió", "Ân", "Sinh",
		"Canh ", "Ôn (¤m)", "Thìn"
	},
	["lst"]	=
	{
		"L® ", "Tàn bÕo", "Ð¬", "H±", "Báo",
		"Lµc ", "ÐÕo", "Li®t ", "Ðêm", "Di®t ",
		"Bá ", "K¸ch ", "T¯ "
	}
}

--°ï»á³¡¾°ÖÐtoÕ ðµ Ëæ»ú×ø±ê
x600042_g_posRandom			=
{
	{ 50, 51 }, { 54, 92 }, { 85, 99 }, {110, 100}, {152, 84 },
	{140, 54 }, { 99, 50 }, { 84, 43 }, { 66, 56 }, { 99, 83 },
	{ 39, 129}, { 60, 130}, { 60, 150}, { 80, 150}, {100, 150},
	{ 80, 130}, {120, 130}, {120, 150}, {140, 130}, {140, 150},
	{155, 140}, { 45, 64 }
}

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x600042_OnDefaultEvent( sceneId, selfId, targetId )

	--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
	if GetName( sceneId, targetId ) ~= x600042_g_Name then
		return
	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600042_g_MissionId ) > 0 then
		local bDone = x600042_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600042_g_SubmitInfo
		else
			strText = x600042_g_ContinueInfo
		end

		BeginEvent( sceneId )
			AddText( sceneId, x600042_g_MissionName )
			AddText( sceneId, strText )
		EndEvent( )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600042_g_ScriptId, x600042_g_MissionId, bDone )

	--Î´½Ó´ËÈÎÎñ,ÇÒThöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x600042_CheckAccept( sceneId, selfId ) > 0 then
		x600042_OnAccept( sceneId, selfId, targetId )
	end

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x600042_OnEnumerate( sceneId, selfId, targetId )

	--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
	if GetName( sceneId, targetId ) ~= x600042_g_Name then
		return
	end

   --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600042_g_MissionId ) > 0 then
		AddNumText( sceneId, x600042_g_ScriptId, x600042_g_MissionName,3,-1 )
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x600042_CheckAccept( sceneId, selfId )

	local	ret	= CallScriptFunction( x600042_g_ConstructionScript, "CheckAccept", sceneId, selfId )
	return ret

end

--**********************************
--¸ù¾ÝÍæ¼ÒµÈc¤p ði¬mµ½¶ÔÓ¦MissionNPC_HashTable.txtÖÐtoÕ ðµ Ñ¡ÔñÐÅÏ¢
--**********************************
function x600042_GetMissionNPCKey( sceneId, selfId )

	local nPlayerLevel = GetLevel( sceneId, selfId )
	local nPos
	if nPlayerLevel < 30 then				-- 10 ~ 29 Level
		nPos = 0
	elseif nPlayerLevel < 50 then		-- 30 ~ 49 Level
		nPos = 1
	elseif nPlayerLevel < 70 then		-- 50 ~ 69 Level
		nPos = 2
	--else														-- 70 ~ 100 Level
	--	nPos = 3
	--end
	--return nPos + x600042_g_NPCOffset
	elseif	nPlayerLevel < 100 then		-- 70 ~ 100 Level
		nPos = 3
	elseif nPlayerLevel < 120 then		-- 100 ~ 120 Level	modi:lby20071126
		nPos = 0
	else 															-- >=120 Level
		nPos = 1
		
	end
	
	if nPlayerLevel < 100 then
		return nPos + x600042_g_NPCOffset
	else
		return nPos + x600042_g_NPCOffsetEx
	end

end

--**********************************
--Tiªp thø
--**********************************
function x600042_OnAccept( sceneId, selfId, targetId )

	--Ã»ÓÐÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
	if IsHaveMission( sceneId, selfId, x600042_g_MissionId ) == 0 then
		if GetLevel( sceneId, selfId ) < 10 then
			x600042_NotifyFailTips( sceneId, selfId, "Không ðü ðÆng c¤p" )
			return
		end
		
		if LuaFnGetTaskItemBagSpace( sceneId, selfId ) < 1 then
			x600042_NotifyFailTips( sceneId, selfId, "Nhi®m vø này c¥n ít nh¤t mµt không gian v§t ph¦m nhi®m vø" )
			return
		end

		--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
		--LuaFnAddMission²ÎÊýË ði¬m÷: 
		--sceneId, selfId, misId(ÈÎÎñ±àºÅ), scriptId, k(Ðúng·ñ»Øµ÷x600042_OnKillObject), e(Ðúng·ñ»Øµ÷OnEnterArea), i(Ðúng·ñ»Øµ÷OnItemChange)
		--¹¦ÄÜË ði¬m÷: TÕi Íæ¼ÒÉíÉÏÌí¼ÓmisId±àºÅtoÕ ðµ ÈÎÎñ,³É¹¦Tr· v«1
		AddMission( sceneId, selfId, x600042_g_MissionId, x600042_g_ScriptId, 1, 0, 1 )	-- kill¡¢area¡¢item
		if IsHaveMission( sceneId, selfId, x600042_g_MissionId ) <= 0 then
			return
		end

		--ÐÞ¸ÄÍæ¼ÒÉíÉÏmisId±àºÅtoÕ ðµ ÈÎÎñÏàÓ¦ÊÂ¼þ
		--eventId: µ÷ÓÃ½Å±¾±àºÅ,0 KillObj, 1 EnterArea, 2 ItemChanged, 3 PetChanged, 4 LockedTarget
		--×¢²á x600042_OnLockedTarget ÊÂ¼þ
		SetMissionEvent( sceneId, selfId, x600042_g_MissionId, 4 )
		CallScriptFunction( x600042_g_ConstructionScript, "OnAccept", sceneId, selfId, targetId, x600042_g_ScriptId )
		local misIndex	= GetMissionIndexByID( sceneId, selfId, x600042_g_MissionId )

		--Ëæ»úÌô³ömµt cáiÊÊÓÃtoÕ ðµ ÎïÆ·
		local	nItemId					= x600042_g_itmNeed[ random( getn(x600042_g_itmNeed) ) ]
		local _, strItemName	= GetItemInfoByItemId( nItemId )

		--Ñ¡ÔñËÍÐÅNPC
		local nNpcId, strNpcName, strNpcSceneDesc, _, nPosX, nPosZ, _, nGender = GetOneMissionNpc( x600042_GetMissionNPCKey( sceneId, selfId ) )

		SetMissionByIndex( sceneId, selfId, misIndex, x600042_g_MissionParam_Phase, x600042_g_PhaseKey["cpd"] )
		SetMissionByIndex( sceneId, selfId, misIndex, x600042_g_MissionParam_NpcId, nNpcId )
		SetMissionByIndex( sceneId, selfId, misIndex, x600042_g_MissionParam_ItemId, nItemId )

		--ÏÔÊ¾ÄÚÈÝ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
		local	sex
		if nGender == 0 then
			sex	= "muµi ¤y "
		else
			sex	= "huynh ¤y "
		end
		local	missionInfo	= format( "    %s, lÕi có nhi®m vø giao cho các hÕ ðây! %s có %s (%d, %d) cüa bang chúng ta ðã nghiên cÑu ra %s, ðang chu¦n b¸ giao cho %s thì b¸ l¤y m¤t, cån cÑ vào sñ suy ðoán cüa Trí Nang Ðoàn, có l¨ là do Nµi QuÖ gây nên, m®nh l®nh cho các hÕ phäi cån cÑ vào ð¥u m¯i ð¬ tìm ra Nµi QuÖ và l¤y ðßþc %s, ðúng h©n giao cho khách hàng cüa bän thành, ði nhanh v« nhanh!",
				GetName( sceneId, selfId), strNpcSceneDesc, strNpcName, nPosX, nPosZ, strItemName, sex, strItemName )
		BeginEvent( sceneId )
			AddText( sceneId, x600042_g_MissionName )
			AddText( sceneId, missionInfo )
			AddText( sceneId, "#r    Các hÕ ðã nh§n " .. x600042_g_MissionName )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

		--Ìá¹©ÈÎÎñÎïÆ·: Ê§ÇÔÏßË÷
		if GetItemCount( sceneId, selfId, x600042_g_itmDirect ) <= 0 then
			local pos = LuaFnTryRecieveItem( sceneId, selfId, x600042_g_itmDirect, QUALITY_MUST_BE_CHANGE)
			if pos == -1 then
				x600042_NotifyFailTips( sceneId, selfId, "Ch² tr¯ng trong túi xách không ðü" )
				return
			end
		end
		
		--ÉèÖÃ½øÈë¸±±¾toÕ ðµ Ëæ»ú×ø±ê
		local	pos		= x600042_g_posRandom[ random( getn(x600042_g_posRandom) ) ]
		local	tmp		= pos[1] * 1000 + pos[2]
		SetMissionByIndex( sceneId, selfId, misIndex, x600042_g_Param_RandomPos, tmp )

	end

end

--**********************************
--µ±Ëø¶¨mµt cái¶ÔÏó
--**********************************
function x600042_OnLockedTarget( sceneId, selfId, objId )

	if IsHaveMission( sceneId, selfId, x600042_g_MissionId ) < 1 then
		return		--Ã»ÓÐ¸ÃÈÎÎñ
	end

	local misIndex			= GetMissionIndexByID( sceneId, selfId, x600042_g_MissionId )
	local nNpcId				= GetMissionParam( sceneId, selfId, misIndex, x600042_g_MissionParam_NpcId )
	local _, strNpcName	= GetNpcInfoByNpcId(sceneId, nNpcId )
	if GetName( sceneId, objId ) ~= strNpcName then
		return		--ÕÒ´íÈËÁË
	end

	local itemId	= GetMissionParam( sceneId, selfId, misIndex, x600042_g_MissionParam_ItemId )
	local _, strDemandItemName	= GetItemInfoByItemId( itemId )

	local Phase		= GetMissionParam( sceneId, selfId, misIndex, x600042_g_MissionParam_Phase )
	if Phase == x600042_g_PhaseKey["npc"] then
		if GetItemCount( sceneId, selfId, itemId ) < 1 then
			return
		end

		local	missionInfo	= format( "    T¯t quá, r¤t cäm ½n, quý bang giæ chæ tín t¯t quá, r¤t mong có sñ hþp tác l¥n sau" )
		TAddText( sceneId, missionInfo )

		ResetMissionEvent( sceneId, selfId, x600042_g_MissionId, 4 )
		DelItem( sceneId, selfId, itemId, 1 )

		--Nhi®m vø hoàn thành
		SetMissionByIndex( sceneId, selfId, misIndex, x600042_g_MissionParam_Phase, x600042_g_PhaseKey["end"] )
		SetMissionByIndex( sceneId, selfId, misIndex, x600042_g_IsMissionOkFail, 1 )
		x600042_NotifyFailTips( sceneId, selfId, "Nhi®m vø hoàn thành" )

	-- ÒâÍâÇé¿ö
	else
		return
	end

end

--**********************************
--·ÅÆú
--**********************************
function x600042_OnAbandon( sceneId, selfId )

	if IsHaveMission( sceneId, selfId, x600042_g_MissionId ) <= 0 then
		return
	end

	--É¾³ýÎïÆ·
	local misIndex		= GetMissionIndexByID( sceneId, selfId, x600042_g_MissionId )
	local demandItemId= GetMissionParam( sceneId, selfId, misIndex, x600042_g_MissionParam_ItemId )
	if GetItemCount( sceneId, selfId, demandItemId ) > 0 then
		DelItem( sceneId, selfId, demandItemId, 1 )
	end
	if GetItemCount( sceneId, selfId, x600042_g_itmDirect ) > 0 then
		DelItem( sceneId, selfId, x600042_g_itmDirect, 1 )
	end

	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
	CallScriptFunction( x600042_g_ConstructionScript, "OnAbandon", sceneId, selfId )

	--Èç¹ûTÕi ¸±±¾ÀïÉ¾³ýÈÎÎñ,ÔòÖ±½Ó´«ËÍ»Ø
	if sceneId == GetMissionParam( sceneId, selfId, misIndex, x600042_g_Param_sceneid ) then
		x600042_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )
		x600042_BackToCity( sceneId, selfId )
	end

end

--**********************************
--¼ÌÐø
--**********************************
function x600042_OnContinue( sceneId, selfId, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, x600042_g_MissionName )
		AddText( sceneId, x600042_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600042_g_ScriptId, x600042_g_MissionId )

end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600042_CheckSubmit( sceneId, selfId, selectRadioId )

	--ÅÐ¶ÏÈÎÎñÐúng·ñÒÑ¾­Íê³É
	local ret = CallScriptFunction( x600042_g_ConstructionScript, "CheckSubmit", sceneId, selfId )
	return ret

end

--**********************************
--Ìá½»
--**********************************
function x600042_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
	if GetName( sceneId, targetId ) ~= x600042_g_Name then
		return
	end

	if x600042_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600042_g_ConstructionScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x600042_OnKillObject( sceneId, selfId, objdataId, objId )

	--Ðúng·ñÐúngËùC¥n toÕ ðµ ¸±±¾
	local	fubentype = LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["typ"] )
	if fubentype ~= x600042_g_CopySceneType then
		return
	end

	--Ö»¹ØÐÄBoss
	if GetMonsterGroupID( sceneId, objId ) ~= x600042_g_BossGroupId then
		return
	end
	
	--È¡ ði¬mCái này ¹ÖÎïËÀºóÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËÊý
	local allOwnersCount = GetMonsterOwnerCount( sceneId, objId )
	local curOwner
	local misIndex, demandItemId

	--Ö»·ÖÅä¶Ó³¤
	local	leaderguid	= LuaFnGetCopySceneData_TeamLeader( sceneId )
	for i = 0, allOwnersCount - 1 do
		--È¡ ði¬mÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËtoÕ ðµ objId
		curOwner = GetMonsterOwnerID( sceneId, objId, i )
		--Èç¹ûCái này ÈËÓµÓÐÈÎÎñ
		if IsHaveMission( sceneId, curOwner, x600042_g_MissionId ) > 0 and leaderguid == LuaFnGetGUID( sceneId, curOwner ) then
			misIndex = GetMissionIndexByID( sceneId, curOwner, x600042_g_MissionId )
			demandItemId = GetMissionParam( sceneId, curOwner, misIndex, x600042_g_MissionParam_ItemId )

			AddMonsterDropItem( sceneId, objId, curOwner, demandItemId )
		end
	end

end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x600042_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x600042_OnItemChanged( sceneId, selfId, itemdataId )

	local misIndex			= GetMissionIndexByID( sceneId, selfId, x600042_g_MissionId )
	local _, strItemName= GetItemInfoByItemId( itemdataId )
	local demandItemId	= GetMissionParam( sceneId, selfId, misIndex, x600042_g_MissionParam_ItemId )
	local _, strDemandItemName	= GetItemInfoByItemId( demandItemId )

	if itemdataId ~= demandItemId then
		return
	end

	local nItemNum	= GetItemCount( sceneId, selfId, itemdataId )
	local strText		= nil
	if nItemNum > 0 then
		strText = format( "L¤y ðßþc %s", strItemName )
		
		--É¾³ýÏßË÷
		if GetItemCount( sceneId, selfId, x600042_g_itmDirect ) > 0 then
			DelItem( sceneId, selfId, x600042_g_itmDirect, 1 )
		end
		
		--Èç¹ûTÕi ¸±±¾ÀïÉ¾³ýÈÎÎñ,ÔòÖ±½Ó´«ËÍ»Ø
		if sceneId == GetMissionParam( sceneId, selfId, misIndex, x600042_g_Param_sceneid ) then
			x600042_OnFinished( sceneId )
		end
	else
--	strText = format( "M¤t ði %s", strItemName )
		SetMissionByIndex( sceneId, selfId, misIndex, x600042_g_IsMissionOkFail, 0 )
	end
	
	if strText ~= nil then
		x600042_NotifyFailTips( sceneId, selfId, strText )
	end

end

--**********************************
--Ê¹ÓÃÊ§ÇÔÏßË÷
--½øÈë¸±±¾,Ñ°ÕÒÃûÆ÷Åä·½
--**********************************
function x600042_OnItemUse( sceneId, selfId )

	--ÓÐÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
	if IsHaveMission( sceneId, selfId, x600042_g_MissionId ) <= 0 then
		return
	end
	
	local	misIndex	= GetMissionIndexByID( sceneId, selfId, x600042_g_MissionId )

	--Èç¹ûTÕi ¸±±¾ÀïÔò²»ÏòÏÂ½øÐÐ
	if sceneId == GetMissionParam( sceneId, selfId, misIndex, x600042_g_Param_sceneid ) then
		return
	end
	
	--¸±±¾¹Ø±Õ±êÖ¾
	local	leaveFlag	= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["cls"] )
	--Èç¹û¸±±¾ÒÑ¾­±»ÖÃ³É¹Ø±Õ×´Ì¬,ÔòÉ±¹ÖÎÞÐ§
	if leaveFlag == 1 then
		x600042_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi, hãy bö ði và nh§n lÕi" )
		return
	end

	--°ï»á³¡¾°ÖÐtoÕ ðµ Ëæ»ú×ø±ê
	local	idCity= CityGetSelfCityID( sceneId, selfId )
	local	tmp		= GetMissionParam( sceneId, selfId, misIndex, x600042_g_Param_RandomPos )
	local	ranX	= floor( tmp / 1000 )
	local	ranZ	= floor( tmp ) - floor( tmp / 1000 ) * 1000
	local	curX	= GetHumanWorldX( sceneId, selfId )
	local	curZ	= GetHumanWorldZ( sceneId, selfId )
	local	str		= format( "— (%d,%d) cüa bang hµi, hình nhß có ngß¶i ðang ngh¸ lu§n gì ðó", ranX, ranZ )
	if idCity ~= sceneId or curX < (ranX-5) or curX > (ranX+5) or curZ < (ranZ-5) or curZ > (ranZ+5) then
		x600042_NotifyFailTips( sceneId, selfId, str )
		return
	end

	local	copysceneid	= GetMissionParam( sceneId, selfId, misIndex, x600042_g_Param_sceneid )

	--½ø¹ý¸±±¾
	if copysceneid > 0 then
		--½«×Ô¼º´«ËÍµ½¸±±¾³¡¾°
		if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
			NewWorld( sceneId, selfId, copysceneid, x600042_g_Fuben_X, x600042_g_Fuben_Z )
		-- Ö»ÒªTÕi ÀïÃæÃ»ÓÐÍê³É,¾ÍËãth¤t bÕi,C¥n ÖØ×ö
		else
			x600042_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi, hãy bö ði và nh§n lÕi" )
		end
		return
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local	nNpcId	= GetMissionParam( sceneId, selfId, misIndex, x600042_g_MissionParam_NpcId )
	local	nItemId	= GetMissionParam( sceneId, selfId, misIndex, x600042_g_MissionParam_ItemId )

	local	StateId	= GetMissionParam( sceneId, selfId, misIndex, x600042_g_Param_StateId )
	if StateId == 1 then
		x600042_NotifyFailTips( sceneId, selfId, "Phø bän ðang xây dñng!" )
	else
		SetMissionByIndex( sceneId, selfId, misIndex, x600042_g_Param_StateId, 1 )
		x600042_MakeCopyScene( sceneId, selfId )
	end

end

--**********************************
--´´½¨¸±±¾
--**********************************
function x600042_MakeCopyScene( sceneId, selfId )

	--È¡¶ÓÎé×î¸ßµÈc¤p
	local	mylevel	= GetLevel( sceneId, selfId )
	local	iniLevel= 0
	if mylevel < 10 then
		iniLevel	= 10
	elseif mylevel < 100 then
		iniLevel	= floor( mylevel/10 ) * 10
	else
		iniLevel	= 100
	end

	local	leaderguid	= LuaFnObjId2Guid( sceneId, selfId )
	LuaFnSetSceneLoad_Map( sceneId, x600042_g_CopySceneMap )							--µØÍ¼Ðúng±ØÐëÑ¡È¡toÕ ðµ ,¶øÇÒ±ØÐëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x600042_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x600042_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["typ"], x600042_g_CopySceneType )			--ÉèÖÃ¸±±¾Êý¾Ý,ÕâÀï½«0ºÅË÷ÒýtoÕ ðµ Êý¾ÝÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êý×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["sid"], x600042_g_ScriptId )						--½«1ºÅÊý¾ÝÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼þ½Å±¾ºÅ
	LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["tim"], 0 )	--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý
	LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["ent"], -1 )	--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["cls"], 0 )	--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["dwn"], 0 )	--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊý
	LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["tem"], GetTeamId( sceneId, selfId ) )	--±£´æ¶ÓÎéºÅ

	local	x, z				= LuaFnGetWorldPos( sceneId, selfId )
	LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["px"], x )		--Íæ¼Ò³öÀ´Ê±ºòtoÕ ðµ Î»ÖÃ
	LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["pz"], z )		--Íæ¼Ò³öÀ´Ê±ºòtoÕ ðµ Î»ÖÃ

	LuaFnSetSceneLoad_Area( sceneId, x600042_g_Exit )
	LuaFnSetSceneLoad_Monster( sceneId, "shiji_1_monster_" .. iniLevel .. ".ini" )
	--c¤p±ð²î,CopyScene_LevelGap TÕi  scene.lua ÖÐ¸³Öµ
	LuaFnSetCopySceneData_Param( sceneId, CopyScene_LevelGap, mylevel - iniLevel - 10 )

	--³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êý
	local bRetSceneID = LuaFnCreateCopyScene( sceneId )
	if bRetSceneID > 0 then
		x600042_NotifyFailTips( sceneId, selfId, "D¸ch chuy¬n thành công!" )
	else
		x600042_NotifyFailTips( sceneId, selfId, "S¯ lßþng bän sao ðã ðªn gi¾i hÕn, ð« ngh¸ lát næa thØ lÕi!" )
	end

end

--**********************************
--¸±±¾ÊÂ¼þ
--**********************************
function x600042_OnCopySceneReady( sceneId, destsceneId )

	--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	LuaFnSetCopySceneData_Param( destsceneId, x600042_g_keyParam["ent"], sceneId )
	local leaderguid	= LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId	= LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then
		return
	end

	--´¦ÓÚÎÞ·¨Ö´ÐÐÂß¼­toÕ ðµ ×´Ì¬
	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then
		return
	end

	local	misIndex	= GetMissionIndexByID( sceneId, leaderObjId, x600042_g_MissionId )
	--ÉèÖÃ¸±±¾toÕ ðµ ³¡¾°ºÅ
	SetMissionByIndex( sceneId, leaderObjId, misIndex, x600042_g_Param_sceneid, destsceneId )
	SetMissionByIndex( sceneId, leaderObjId, misIndex, x600042_g_Param_StateId, 0 )

	NewWorld( sceneId, leaderObjId, destsceneId, x600042_g_Fuben_X, x600042_g_Fuben_Z )

end

--**********************************
--ÓÐÍæ¼Ò½øÈë¸±±¾ÊÂ¼þ
--**********************************
function x600042_OnPlayerEnter( sceneId, selfId )

	--Èç¹û½øÈë¸±±¾Ç°É¾³ýÈÎÎñ,ÔòÖ±½Ó´«ËÍ»Ø
--if IsHaveMission( sceneId, selfId, x600042_g_MissionId ) == 0 then
--	x600042_NotifyFailTips( sceneId, selfId, "Äãµ±Ç°Î´½Ó´ËÈÎÎñ" )
--	x600042_BackToCity( sceneId, selfId )
--	return
--end

	--ÉèÖ giâyÀÍöºó¸´»î ði¬mÎ»ÖÃ
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", 77, 20, 38 )

end

--**********************************
--ÓÐÍæ¼ÒTÕi ¸±±¾ÖÐËÀÍöÊÂ¼þ
--**********************************
function x600042_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--»Ø³Ç,Ö»ÓÐThành ph¯ ÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x600042_BackToCity( sceneId, selfId )

	--È¡ ði¬m¸±±¾Èë¿Ú³¡¾°ºÅ
	local oldsceneId	= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["ent"] )
	local x	= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["px"] )
	local z	= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["pz"] )
	CallScriptFunction( x600042_g_TransScript, "TransferFunc", sceneId, selfId, oldsceneId, x, z )

end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼þ
--**********************************
function x600042_OnCopySceneTimer( sceneId, nowTime )

	--¸±±¾Ê±ÖÓ¶ÁÈ¡¼°ÉèÖÃ
	--È¡ ði¬mÒÑ¾­Ö´ÐÐtoÕ ðµ ¶¨Ê±´ÎÊý
	local	TickCount	= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["tim"] )
	TickCount				= TickCount + 1
	--ÉèÖÃÐÂtoÕ ðµ ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý
	LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["tim"], TickCount )

	--Boss¸üÃû
	local	namFst		= x600042_g_lstBossName[ "fst" ]
	local	namMid		= x600042_g_lstBossName[ "mid" ]
	local	namLst		= x600042_g_lstBossName[ "lst" ]
	if TickCount == 1 then
		local	BossName= format( "%s%s%s",
			namFst[ random( getn(namFst) ) ], namMid[ random( getn(namMid) ) ], namLst[ random( getn(namLst) ) ] )
		local monstercount = GetMonsterCount( sceneId )
		local monsterId
		for i = 0, monstercount - 1 do
			--ÕÒµ½Boss
			monsterId		= GetMonsterObjID( sceneId, i )
			if GetMonsterGroupID( sceneId, monsterId ) == x600042_g_BossGroupId then
				SetCharacterName( sceneId, monsterId, BossName )
			end
		end
		
		--Ë¢ÐÂ¹ÖÎïµÈc¤p
--	x600042_RefreshMonster( sceneId )
	end

	local membercount	= LuaFnGetCopyScene_HumanCount( sceneId )
	local	leaderguid	= LuaFnGetCopySceneData_TeamLeader( sceneId )
	local mems	= {}
	for i = 0, membercount - 1 do
		mems[i]		= LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	--¸±±¾¹Ø±Õ±êÖ¾
	local	leaveFlag	= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["cls"] )
	local	Back_X		= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["px"] )	--Íæ¼Ò³öÀ´Ê±ºòtoÕ ðµ Î»ÖÃ
	local	Back_Z		= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["pz"] )	--Íæ¼Ò³öÀ´Ê±ºòtoÕ ðµ Î»ÖÃ
	local	leaveTickCount
	local	oldsceneId= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["ent"] )
	local	strText

	--Ã»ÓÐÈËtoÕ ðµ Ê±ºò¹Ø±Õ¸±±¾
	--C¥n Àë¿ª
	if leaveFlag == 1 then

		--Àë¿ªµ¹¼ÆÊ±¼ätoÕ ðµ ¶ÁÈ¡ºÍÉèÖÃ
		leaveTickCount	= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["dwn"] )
		leaveTickCount	= leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["dwn"], leaveTickCount )

		--µ¹¼ÆÊ±¼äµ½,´ó¼Ò¶¼³öÈ¥°É
		if leaveTickCount >= x600042_g_CloseTick then
			--½«µ±Ç°¸±±¾³¡¾°ÀïtoÕ ðµ ËùÓÐÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòtoÕ ðµ ³¡¾°
			for i = 0, membercount - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					NewWorld( sceneId, mems[i], oldsceneId, Back_X, Back_Z )
				end
			end
		else
			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïtoÕ ðµ ËùÓÐÈË,³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			strText	= format( "Các hÕ s¨ r¶i khöi n½i này trong vòng %d giây næa", ( x600042_g_CloseTick - leaveTickCount ) * x600042_g_TickTime )

			for i = 0, membercount - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x600042_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end

	--¸±±¾×ÜÊ±¼äÏÞÖÆµ½ÁË
	elseif TickCount >= x600042_g_LimitTotalHoldTime then

		--´Ë´¦ÉèÖÃ¸±±¾ÈÎÎñÓÐÊ±¼äÏÞÖÆtoÕ ðµ Çé¿ö,µ±Ê±¼äµ½ºó´¦Àí...
		leaveTickCount	= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["dwn"] )
		strText	= format( "Các hÕ s¨ r¶i khöi n½i này trong vòng %d giây næa", ( x600042_g_CloseTick - leaveTickCount ) * x600042_g_TickTime )

		for i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				if leaderguid == LuaFnGetGUID( sceneId, mems[i] ) then
					x600042_NotifyFailTips( sceneId, mems[i], "Th¶i hÕn ðã ðªn nhi®m vø th¤t bÕi" )
				end

				x600042_NotifyFailTips( sceneId, mems[i], strText )
			end
		end
		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["cls"], 1 )

	else
		--Ã»ÈË¾Í¹Ø±Õ
		if membercount < 1 and TickCount > x600042_g_NoUserTime then
			LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["cls"], 1 )
			return
		end

	end

end

--**********************************
--Ë¢ÐÂ¹ÖÎïµÈc¤p
--**********************************
function x600042_RefreshMonster( sceneId )

	--------------------------------------------------------------
	--¼ÆËã¶ÓÎéÖÐtoÕ ðµ ×î¸ßµÈc¤p
	local	maxLev		= 0
	--ÕÒµ½¶Ó³¤
	local	GuidLeader= LuaFnGetCopySceneData_TeamLeader( sceneId )
	local	idLeader	= LuaFnGuid2ObjId( sceneId, GuidLeader )
	--¶Ó³¤TÕi ³¡¾°Àï
	if idLeader ~= -1 then
		maxLev			= GetLevel( sceneId, idLeader )
	else
		return
	end
	--------------------------------------------------------------

	--È¡ ði¬m´Ë³¡¾°ÖÐtoÕ ðµ ¹ÖÎïÊýÁ¿
	local	numMon= GetMonsterCount( sceneId )
	--¹ÖÎïtoÕ ðµ ObjId
	local idMon, idGrp
	for i=0, numMon-1 do
		idMon	= GetMonsterObjID( sceneId, i )
		idGrp	= GetMonsterGroupID( sceneId, idMon )
		if idGrp == x600042_g_BossGroupId or idGrp == x600042_g_MonsterGroupId then
			--ÉèÖÃ¹ÖÎïµÈc¤pÎª¶ÓÎéÖÐ×î¸ßÈËÎïµÈc¤p+1
			SetLevel( sceneId, idMon, maxLev+1 )
		end
	end

end

--**********************************
--¸±±¾Nhi®m vø hoàn thành
--**********************************
function x600042_OnFinished( sceneId )

	--Ðúng·ñÐúngËùC¥n toÕ ðµ ¸±±¾
	local	fubentype	= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["typ"] )
	if fubentype ~= x600042_g_CopySceneType then
		return
	end

	--¸±±¾¹Ø±Õ±êÖ¾
	local	leaveFlag	= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["cls"] )
	--Èç¹û¸±±¾ÒÑ¾­±»ÖÃ³É¹Ø±Õ×´Ì¬,ÔòÉ±¹ÖÎÞÐ§
	if leaveFlag == 1 then
		return
	end

	local memCount= LuaFnGetCopyScene_HumanCount( sceneId )
	local mems		= {}
	for i = 0, memCount - 1 do
		mems[i]			= LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	local	leaderguid= LuaFnGetCopySceneData_TeamLeader( sceneId )
	--ËùÓÐÐµi viên ¶¼Òª³öÈ¥
	for i = 0, memCount - 1 do
		x600042_NotifyFailTips( sceneId, mems[i], "Nhi®m vø giai ðoÕn hoàn thành, quay v« bang hµi" )

		if leaderguid == LuaFnGetGUID( sceneId, mems[i] ) then
			local	misIndex	= GetMissionIndexByID( sceneId, mems[i], x600042_g_MissionId )
			--ÉèÖÃÏÂmµt ½×¶ÎÈÎÎñ
			SetMissionByIndex( sceneId, mems[i], misIndex, x600042_g_MissionParam_Phase, x600042_g_PhaseKey["npc"] )
		end
	end

	--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
	LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["cls"], 1 )
	local	strText		= format( "Sau %d phút s¨ chuy¬n ðªn v¸ trí cØa ra vào", x600042_g_CloseTick * x600042_g_TickTime )
	for i = 0, memCount - 1 do
		x600042_NotifyFailTips( sceneId, mems[i], strText )
	end

end

--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x600042_NotifyFailTips( sceneId, selfId, Tip )

	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
