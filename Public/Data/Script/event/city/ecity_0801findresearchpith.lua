--¸±±¾ÈÎÎñ
--Ñ°ÕÒÑÐ¾¿ÒªÊõ

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x600041_g_ScriptId	= 600041
--ÈÎÎñºÅ
x600041_g_MissionId	= 1113
--Ä¿±êNPC
x600041_g_Name			= "Tr¸nh Vô Danh"
--ÐÆng c¤p nhi®m vø 
x600041_g_MissionLevel					= 10000
--ÈÎÎñ¹éÀà
x600041_g_MissionKind						= 50
--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x600041_g_IfMissionElite				= 0

--********ÏÂÃæ¼¸ÏîÐúng¶¯Ì¬ÏÔÊ¾toÕ ðµ ÄÚÈÝ,ÓÃÓÚTÕi ÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
--½ÇÉ«Mission±äÁ¿Ë ði¬m÷
x600041_g_IsMissionOkFail				= 0	--0 Nhi®m vø hoàn thành±ê¼Ç
x600041_g_MissionParam_SubId		= 1	--1 ×ÓÈÎÎñ½Å±¾ºÅ´æ·ÅÎ»ÖÃ
x600041_g_MissionParam_Phase		= 2	--2 ½×¶ÎºÅ ´ËºÅÓÃÓÚÇø·Öµ±Ç°ÈÎÎñUItoÕ ðµ ÃèÊöÐÅÏ¢
x600041_g_MissionParam_NpcId		= 3	--3 ÈÎÎñ NPC toÕ ðµ  NPCId ºÅ
x600041_g_MissionParam_ItemId		= 4	--4 ÈÎÎñÎïÆ·toÕ ðµ ±àºÅ
x600041_g_MissionParam_MonsterId= 5	--5 ÈÎÎñ Monster toÕ ðµ  NPCId ºÅ
x600041_g_MissionParam_IsCarrier= 6	--6 Ðúng·ñÓÐËÍÐÅÈÎÎñ
--Ñ­»·ÈÎÎñtoÕ ðµ Êý¾ÝË÷Òý,ÀïÃæ´æ×ÅÒÑ×ötoÕ ðµ »·Êý
x600041_g_MissionRound					= 61
--**********************************ÒÔÉÏÐúng¶¯Ì¬****************************

--ÈÎÎñÎÄ±¾ÃèÊö
x600041_g_MissionName			= "Nghiên cÑu nhi®m vø"
x600041_g_MissionInfo			= "Nµi chính thành th¸ - nhi®m vø nghiên cÑu"									--ÈÎÎñÃèÊö
x600041_g_MissionTarget		= "%f"																	--Møc tiêu nhi®m vø
x600041_g_ContinueInfo		= "    Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"					--Î´Hoàn t¤t nhi®m vøtoÕ ðµ npc¶Ô»°
x600041_g_SubmitInfo			= "    Sñ tình tiªn tri¬n nhß thª nào r°i?"								--Íê³ÉÎ´Ìá½»Ê±toÕ ðµ npc¶Ô»°
x600041_g_MissionComplete	= "    R¤t t¯t r¤t t¯t, tiªn ðµ nghiên cÑu tång nhanh không ít. "--Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°

x600041_g_Parameter_Item_IDRandom = { { id = 4, num = 1 } }

x600041_g_StrForePart			= 2

--ÓÃÀ´±£´æ×Ö·û´®¸ñÊ½»¯toÕ ðµ Êý¾Ý
x600041_g_FormatList			= {
	"",
	"    M§t thß viªt: thü lînh quý bang Trình Ngô Hæu, ðã ðem ðªn %2i và ðã nh§n ðßþc, ngân lßþng thu nh§p lúc ðó tång theo. Ngô ðang tînh h§u ðªn nh§n. Hæu: %1n tuân thü. ",	--1 ÊÕÌõÊéÐÅ
	"    Tìm th¤y %3n l¤y lÕi %2i. ",					--2 Ñ°ÕÒÑÐ¾¿ÒªÊõ
	"    T× %2i giao trä lÕi cho bang hµi ÐÕi chü quän. "		--3 ËÍ»¹
}

--Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600041_g_CityMissionScript	= 600001
x600041_g_ConstructionScript= 600040

--ÈÎÎñ½±Àø

--MisDescEnd
--************************************************************************

x600041_g_ItemOffset			= 39	--±íÀïµÚ¼¸cáiÎïÆ·ÁÐtoÕ ðµ Æ«ÒÆÁ¿
x600041_g_NPCOffset				= 38	--±íÀïµÚ¼¸ÁÐ NPC toÕ ðµ Æ«ÒÆÁ¿
x600041_g_NPCOffsetEx			= 259 --±íÀïµÚ¼¸ÁÐ NPC toÕ ðµ Æ«ÒÆÁ¿À©³ä modi:lby20071126
x600041_g_MonsterOffset		= 43	--±íÀïµÚ¼¸ÁÐ Monster toÕ ðµ Æ«ÒÆÁ¿

--½×¶ÎÈÎÎñ
--µôÂä¹æÔò: 10%¼¸ÂÊµôÂäÈÎÎñÎïÆ·£»TÕi µôÂätoÕ ðµ ¼¸ÂÊÖÐ,1³ÉÖ±½Ó´ò³öÑÐ¾¿ÒªÊõ,Áí9³É»á´ò³ö"ÊÕÌõÊéÐÅ"
x600041_g_PhaseKey				= {}
x600041_g_PhaseKey["mal"]	= 1		--ÊÕÌõÊéÐÅ: µôÂäÊéÐÅ,Ë¢ÐÂÈÎÎñÃèÊö,µ½NPC´¦×·»¹ËùÐèÎïÆ·
x600041_g_PhaseKey["fnd"]	= 2		--Ñ°ÕÒÑÐ¾¿ÒªÊõ: Ö±½ÓµôÂäËùÐèÎïÆ·
x600041_g_PhaseKey["end"]	= 3		--ËÍ»¹

--Ëæ»úÒò×Ó
x600041_g_RandomSeed			= 100
--µôÂä¼¸ÂÊ
x600041_g_DropOdds				= 10
--ËùÐèÎïÆ·
x600041_g_itmNeed					= { 40004288 }
--ÇóÔ®ÊéÐÅ
x600041_g_itmMail					= 40004289

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x600041_OnDefaultEvent( sceneId, selfId, targetId )

	--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
	if GetName( sceneId, targetId ) ~= x600041_g_Name then
		return
	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600041_g_MissionId ) > 0 then
		local bDone = x600041_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600041_g_SubmitInfo
		else
			strText = x600041_g_ContinueInfo
		end

		BeginEvent( sceneId )
			AddText( sceneId, x600041_g_MissionName )
			AddText( sceneId, strText )
		EndEvent( )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600041_g_ScriptId, x600041_g_MissionId, bDone )

	--Î´½Ó´ËÈÎÎñ,ÇÒThöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x600041_CheckAccept( sceneId, selfId ) > 0 then
		x600041_OnAccept( sceneId, selfId, targetId )
	end

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x600041_OnEnumerate( sceneId, selfId, targetId )

	--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
	if GetName( sceneId, targetId ) ~= x600041_g_Name then
		return
	end

   --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600041_g_MissionId ) > 0 then
		AddNumText( sceneId, x600041_g_ScriptId, x600041_g_MissionName,3,-1 )
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x600041_CheckAccept( sceneId, selfId )

	local	ret	= CallScriptFunction( x600041_g_ConstructionScript, "CheckAccept", sceneId, selfId )
	return ret

end

--**********************************
--¸ù¾ÝÍæ¼ÒµÈc¤p ði¬mµ½¶ÔÓ¦MissionItem_HashTable.txtÖÐtoÕ ðµ µ¥ÔªË÷Òý
--**********************************
function x600041_GetMissionItemIndex( sceneId, selfId )

	return x600041_g_ItemOffset

end

--**********************************
--¸ù¾ÝÍæ¼ÒµÈc¤p ði¬mµ½¶ÔÓ¦MissionNPC_HashTable.txtÖÐtoÕ ðµ Ñ¡ÔñÐÅÏ¢
--**********************************
function x600041_GetMissionNPCKey( sceneId, selfId )

	local nPlayerLevel = GetLevel( sceneId, selfId )
	local nPos
	if nPlayerLevel < 30 then					-- 10 ~ 30 Level
		nPos = 0
	elseif nPlayerLevel < 50 then			-- 30 ~ 50 Level
		nPos = 1
	elseif nPlayerLevel < 70 then			-- 50 ~ 70 Level
		nPos = 2
	elseif	nPlayerLevel < 100 then		-- 70 ~ 100 Level
		nPos = 3
	elseif nPlayerLevel < 120 then		-- 100 ~ 120 Level	modi:lby20071126
		nPos = 0
	else 															-- >=120 Level
		nPos = 1
		
	end
	
	if nPlayerLevel < 100 then
		return nPos + x600041_g_NPCOffset
	else
		return nPos + x600041_g_NPCOffsetEx
	end

end

--**********************************
--Tiªp thø
--**********************************
function x600041_OnAccept( sceneId, selfId, targetId )

	--Ã»ÓÐÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
	if IsHaveMission( sceneId, selfId, x600041_g_MissionId ) == 0 then
		if GetLevel( sceneId, selfId ) < 10 then
			x600041_NotifyFailTips( sceneId, selfId, "Không ðü ðÆng c¤p" )
			return
		end

		--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
		--LuaFnAddMission²ÎÊýË ði¬m÷: 
		--sceneId, selfId, misId(ÈÎÎñ±àºÅ), scriptId, k(Ðúng·ñ»Øµ÷x600041_OnKillObject), e(Ðúng·ñ»Øµ÷OnEnterArea), i(Ðúng·ñ»Øµ÷OnItemChange)
		--¹¦ÄÜË ði¬m÷: TÕi Íæ¼ÒÉíÉÏÌí¼ÓmisId±àºÅtoÕ ðµ ÈÎÎñ,³É¹¦Tr· v«1
		AddMission( sceneId, selfId, x600041_g_MissionId, x600041_g_ScriptId, 1, 0, 1 )	-- kill¡¢area¡¢item
		if IsHaveMission( sceneId, selfId, x600041_g_MissionId ) <= 0 then
			return
		end

		--ÐÞ¸ÄÍæ¼ÒÉíÉÏmisId±àºÅtoÕ ðµ ÈÎÎñÏàÓ¦ÊÂ¼þ
		--eventId: µ÷ÓÃ½Å±¾±àºÅ,0 KillObj, 1 EnterArea, 2 ItemChanged, 3 PetChanged, 4 LockedTarget
		--×¢²á x600041_OnLockedTarget ÊÂ¼þ
		SetMissionEvent( sceneId, selfId, x600041_g_MissionId, 4 )
		CallScriptFunction( x600041_g_ConstructionScript, "OnAccept", sceneId, selfId, targetId, x600041_g_ScriptId )
		local misIndex	= GetMissionIndexByID( sceneId, selfId, x600041_g_MissionId )

		-- Ëæ»úÌô³ömµt cáiÊÊÓÃtoÕ ðµ ÎïÆ·
		local	nitemId					= x600041_g_itmNeed[ random( getn(x600041_g_itmNeed) ) ]
		local _, strItemName	= GetItemInfoByItemId( nitemId )

		--Ñ¡ÔñËÍÐÅNPC
		local nNpcId, strNpcName, strNpcSceneDesc, _, nPosX, nPosZ, _, nGender = GetOneMissionNpc( x600041_GetMissionNPCKey( sceneId, selfId ) )
		--Ñ¡Ôñ¹¥»÷Monster
		local nMonsterId, strMonsterName, strMonsterSceneDesc, _, _, _, _, _, nLevel = LuaFnGetLevelMatchingMonster( x600041_g_MonsterOffset, GetLevel( sceneId, selfId ) )

		SetMissionByIndex( sceneId, selfId, misIndex, x600041_g_MissionParam_Phase, x600041_g_PhaseKey["fnd"] )
		SetMissionByIndex( sceneId, selfId, misIndex, x600041_g_MissionParam_NpcId, nNpcId )
		SetMissionByIndex( sceneId, selfId, misIndex, x600041_g_MissionParam_ItemId, nitemId )
		SetMissionByIndex( sceneId, selfId, misIndex, x600041_g_MissionParam_MonsterId, nMonsterId )
		--Ðúng·ñÓÐËÍÐÅÈÎÎñ
		--Èç¹ûÐúng,¹ÖÎï»á²»¶ÏµôÂä"ÊÕÌõÊéÐÅ",´ËÊ±ÒªÇóÍæ¼Ò±ØÐëÍê³Émµt ´Î¸ÃÈÎÎñ
		if random( 10 ) <= 1 then
			SetMissionByIndex( sceneId, selfId, misIndex, x600041_g_MissionParam_IsCarrier, 0 )
		else
			SetMissionByIndex( sceneId, selfId, misIndex, x600041_g_MissionParam_IsCarrier, 1 )
		end

		--ÏÔÊ¾ÄÚÈÝ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
		local	missionInfo	= format( "    %s, các hÕ ðªn ðúng lúc quá, trong quá trình chúng ta nghiên cÑu, c¥n %s, nhßng khi ði qua %s, không c¦n th§n b¸ %s cß¾p m¤t, m®nh l®nh cho các hÕ c¤p t¯c tìm v«",
				GetName( sceneId, selfId ), strItemName, strMonsterSceneDesc, strMonsterName )
		BeginEvent( sceneId )
			AddText( sceneId, x600041_g_MissionName )
			AddText( sceneId, missionInfo )
			AddText( sceneId, "#r    Các hÕ ðã nh§n " .. x600041_g_MissionName )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end

end

--**********************************
--µ±Ëø¶¨mµt cái¶ÔÏó
--**********************************
function x600041_OnLockedTarget( sceneId, selfId, objId )

	if IsHaveMission( sceneId, selfId, x600041_g_MissionId ) < 1 then
		return		--Ã»ÓÐ¸ÃÈÎÎñ
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600041_g_MissionId )
	local nNpcId = GetMissionParam( sceneId, selfId, misIndex, x600041_g_MissionParam_NpcId )
	local _, strNpcName = GetNpcInfoByNpcId(sceneId, nNpcId )
	if GetName( sceneId, objId ) ~= strNpcName then
		return		--ÕÒ´íÈËÁË
	end

	if LuaFnGetTaskItemBagSpace( sceneId, selfId ) < 1 then
		x600041_NotifyFailTips( sceneId, selfId, "Nhi®m vø này c¥n ít nh¤t mµt không gian v§t ph¦m nhi®m vø" )
		return
	end

	local itemId = GetMissionParam( sceneId, selfId, misIndex, x600041_g_MissionParam_ItemId )
	local _, strDemandItemName = GetItemInfoByItemId( itemId )

	local Phase = GetMissionParam( sceneId, selfId, misIndex, x600041_g_MissionParam_Phase )

	--ÇóÔ®ÊéÐÅ
	if Phase == x600041_g_PhaseKey["mal"] then
		local pos = LuaFnTryRecieveItem( sceneId, selfId, itemId, QUALITY_MUST_BE_CHANGE)
		if pos == -1 then
			x600041_NotifyFailTips( sceneId, selfId, "Ch² tr¯ng trong túi xách không ðü" )
			return
		end

		local missionInfo = format( "    Cái gì? các hÕ mu¯n nói ðây là tang v§t? Ôi, th§t là xui xëo quá, thôi ðßþc, %s, các hÕ mang ði ði",
				strDemandItemName )
		TAddText( sceneId, missionInfo )

		ResetMissionEvent( sceneId, selfId, x600041_g_MissionId, 4 )
		DelItem( sceneId, selfId, x600041_g_itmMail, 1 )

		--Nhi®m vø hoàn thành
		SetMissionByIndex( sceneId, selfId, misIndex, x600041_g_MissionParam_Phase, x600041_g_PhaseKey["end"] )
		SetMissionByIndex( sceneId, selfId, misIndex, x600041_g_IsMissionOkFail, 1 )
		x600041_NotifyFailTips( sceneId, selfId, "Nhi®m vø hoàn thành" )

	-- ÒâÍâÇé¿ö
	else
		return
	end

end

--**********************************
--·ÅÆú
--**********************************
function x600041_OnAbandon( sceneId, selfId )

	if IsHaveMission( sceneId, selfId, x600041_g_MissionId ) <= 0 then
		return
	end

	-- É¾³ýÎïÆ·
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600041_g_MissionId )
	local demandItemId = GetMissionParam( sceneId, selfId, misIndex, x600041_g_MissionParam_ItemId )
	if GetItemCount( sceneId, selfId, demandItemId ) > 0 then
		DelItem( sceneId, selfId, demandItemId, 1 )
	end
	if GetItemCount( sceneId, selfId, x600041_g_itmMail ) > 0 then
		DelItem( sceneId, selfId, x600041_g_itmMail, 1 )
	end

	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
	CallScriptFunction( x600041_g_ConstructionScript, "OnAbandon", sceneId, selfId )

end

--**********************************
--¼ÌÐø
--**********************************
function x600041_OnContinue( sceneId, selfId, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, x600041_g_MissionName )
		AddText( sceneId, x600041_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600041_g_ScriptId, x600041_g_MissionId )

end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600041_CheckSubmit( sceneId, selfId, selectRadioId )

	--ÅÐ¶ÏÈÎÎñÐúng·ñÒÑ¾­Íê³É
	local ret = CallScriptFunction( x600041_g_ConstructionScript, "CheckSubmit", sceneId, selfId )
	return ret

end

--**********************************
--Ìá½»
--**********************************
function x600041_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
	if GetName( sceneId, targetId ) ~= x600041_g_Name then
		return
	end

	if x600041_CheckSubmit( sceneId, selfId ) == 1 then
		--¿Û¶«Î÷
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600041_g_MissionId )
		local demandItemId = GetMissionParam( sceneId, selfId, misIndex, x600041_g_MissionParam_ItemId )
		local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, demandItemId )

		if nItemNum > 0 then	--³É¹¦Ìá½»
			if LuaFnDelAvailableItem( sceneId, selfId, demandItemId, 1 ) < 1 then
				return
			end
		else									--Ö»×÷ÎªÈÝ´í,ÀíÂÛÉÏ²»¿ÉÄÜ·¢Éú
			SetMissionByIndex( sceneId, selfId, misIndex, x600041_g_IsMissionOkFail, 0 )
			return
		end

		CallScriptFunction( x600041_g_ConstructionScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x600041_OnKillObject( sceneId, selfId, objdataId, objId )

	--È¡ ði¬mCái này ¹ÖÎïËÀºóÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËÊý
	local allOwnersCount = GetMonsterOwnerCount( sceneId, objId )
	local i, curOwner, misIndex, nNpcId, strNpcName
	local MonsterName = GetName( sceneId, objId )
	local demandItemId, demandItemCount

	for i = 0, allOwnersCount - 1 do
		--È¡ ði¬mÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËtoÕ ðµ objId
		curOwner = GetMonsterOwnerID( sceneId, objId, i )
		--Èç¹ûCái này ÈËÓµÓÐÈÎÎñ
		if IsHaveMission( sceneId, curOwner, x600041_g_MissionId ) > 0 and
		   GetScriptIDByMissionID( sceneId, curOwner, x600041_g_MissionId ) == x600041_g_ScriptId then
			misIndex = GetMissionIndexByID( sceneId, curOwner, x600041_g_MissionId )
			nNpcId = GetMissionParam( sceneId, curOwner, misIndex, x600041_g_MissionParam_MonsterId )
			_, strNpcName = GetNpcInfoByNpcId(sceneId, nNpcId )
			demandItemId = GetMissionParam( sceneId, curOwner, misIndex, x600041_g_MissionParam_ItemId )

			if MonsterName == strNpcName then
				x600041_OnItemDrop( sceneId, selfId, objId, curOwner, demandItemId )
			end
		end
	end

end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x600041_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x600041_OnItemChanged( sceneId, selfId, itemdataId )

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600041_g_MissionId )
	local _, strItemName = GetItemInfoByItemId( itemdataId )
	local demandItemId = GetMissionParam( sceneId, selfId, misIndex, x600041_g_MissionParam_ItemId )
	local _, strDemandItemName = GetItemInfoByItemId( demandItemId )

	if itemdataId ~= demandItemId and itemdataId ~= x600041_g_itmMail then
		return
	end

	local nItemNum	= GetItemCount( sceneId, selfId, itemdataId )
	local strText		= nil
	if itemdataId == x600041_g_itmMail then
		if nItemNum > 0 then
			strText = format( "Các hÕ có ðßþc mµt bÑc thß m§t, dß¶ng nhß trong ðó có gì m¶ ám, phäi xem xem nhi®m vø" )
			SetMissionByIndex( sceneId, selfId, misIndex, x600041_g_MissionParam_Phase, x600041_g_PhaseKey["mal"] )
		else
			SetMissionByIndex( sceneId, selfId, misIndex, x600041_g_MissionParam_Phase, x600041_g_PhaseKey["end"] )
			SetMissionByIndex( sceneId, selfId, misIndex, x600041_g_MissionParam_IsCarrier, 0 )
		end
	else
		if nItemNum > 0 then
			strText = format( "L¤y ðßþc %s", strItemName )
			SetMissionByIndex( sceneId, selfId, misIndex, x600041_g_IsMissionOkFail, 1 )
			SetMissionByIndex( sceneId, selfId, misIndex, x600041_g_MissionParam_Phase, x600041_g_PhaseKey["end"] )
		else
			strText = format( "M¤t ði %s", strItemName )
			SetMissionByIndex( sceneId, selfId, misIndex, x600041_g_IsMissionOkFail, 0 )
		end
	end

	if strText ~= nil then
		x600041_NotifyFailTips( sceneId, selfId, strText )
	end

end

--**********************************
--ÎïÆ·µôÂä
--**********************************
function x600041_OnItemDrop( sceneId, selfId, monsterId, curOwner, demandItemId )

	--mµt ¶¨¼¸ÂÊ´ò³öÈÎÎñËùÐèÎïÆ·
	--if random( x600041_g_RandomSeed ) > x600041_g_DropOdds then
		--return
	--end

	--±ØÐëTiªp thøËÍÐÅÈÎÎñ
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600041_g_MissionId )
	if GetMissionParam( sceneId, selfId, misIndex, x600041_g_MissionParam_IsCarrier ) == 1 then
		if GetItemCount( sceneId, curOwner, x600041_g_itmMail ) >= 1 then
			return	--°üÖÐÒÑ¾­ÓÐÐÅ
		end
		AddMonsterDropItem( sceneId, monsterId, curOwner, x600041_g_itmMail )

	--Ö±½ÓµôÂäÈÎÎñËùÐèÎïÆ·
	else
		AddMonsterDropItem( sceneId, monsterId, curOwner, demandItemId )
	end

end

--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x600041_NotifyFailTips( sceneId, selfId, Tip )

	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
