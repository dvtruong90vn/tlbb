--¸±±¾ÈÎÎñ
--Ñ°ÕÒ½¨Öþ²ÄÁÏ

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x600038_g_ScriptId	= 600038
--ÈÎÎñºÅ
x600038_g_MissionId	= 1111
--Ä¿±êNPC
x600038_g_Name			= "Tr¸nh Vô Danh"
--ÐÆng c¤p nhi®m vø 
x600038_g_MissionLevel					= 10000
--ÈÎÎñ¹éÀà
x600038_g_MissionKind						= 50
--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x600038_g_IfMissionElite				= 0

--********ÏÂÃæ¼¸ÏîÐúng¶¯Ì¬ÏÔÊ¾toÕ ðµ ÄÚÈÝ,ÓÃÓÚTÕi ÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
--½ÇÉ«Mission±äÁ¿Ë ði¬m÷
x600038_g_IsMissionOkFail				= 0	--0 Nhi®m vø hoàn thành±ê¼Ç
x600038_g_MissionParam_SubId		= 1	--1 ×ÓÈÎÎñ½Å±¾ºÅ´æ·ÅÎ»ÖÃ
x600038_g_MissionParam_Phase		= 2	--2 ½×¶ÎºÅ ´ËºÅÓÃÓÚÇø·Öµ±Ç°ÈÎÎñUItoÕ ðµ ÃèÊöÐÅÏ¢
x600038_g_MissionParam_NpcId		= 3	--3 ÈÎÎñ NPC toÕ ðµ  NPCId ºÅ
x600038_g_MissionParam_ItemId		= 4	--4 ÈÎÎñÎïÆ·toÕ ðµ ±àºÅ
x600038_g_MissionParam_MonsterId= 5	--5 ÈÎÎñ Monster toÕ ðµ  NPCId ºÅ
x600038_g_MissionParam_IsCarrier= 6	--6 Ðúng·ñÓÐËÍÐÅÈÎÎñ
--Ñ­»·ÈÎÎñtoÕ ðµ Êý¾ÝË÷Òý,ÀïÃæ´æ×ÅÒÑ×ötoÕ ðµ »·Êý
x600038_g_MissionRound					= 59
--**********************************ÒÔÉÏÐúng¶¯Ì¬****************************

--ÈÎÎñÎÄ±¾ÃèÊö
x600038_g_MissionName			= "Xây dñng nhi®m vø"
x600038_g_MissionInfo			= "Nµi chính thành th¸ - Nhi®m vø xây dñng"								--ÈÎÎñÃèÊö
x600038_g_MissionTarget		= "%f"																--Møc tiêu nhi®m vø
x600038_g_ContinueInfo		= "    Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"				--Î´Hoàn t¤t nhi®m vøtoÕ ðµ npc¶Ô»°
x600038_g_SubmitInfo			= "    Sñ tình tiªn tri¬n nhß thª nào r°i?"							--Íê³ÉÎ´Ìá½»Ê±toÕ ðµ npc¶Ô»°
x600038_g_MissionComplete	= "    R¤t t¯t r¤t t¯t, tiªn ðµ xây dñng lÕi tång nhanh r°i. "--Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°

x600038_g_Parameter_Item_IDRandom = { { id = 4, num = 1 } }

x600038_g_StrForePart			= 2

--ÓÃÀ´±£´æ×Ö·û´®¸ñÊ½»¯toÕ ðµ Êý¾Ý
x600038_g_FormatList			= {
	"",
	"    M§t thß viªt: thü lînh Trình ngô tµc nh§n, thuµc hÕ ÐoÕt ð¡c %2i nhßþc can, nhßng không mai g£p phäi %1n nh¢m ðánh. Vô nÕi phong kh¦n xä h°, xin nhanh chóng ðßa các huynh ð® ðªn ð¬ chi vi®n thuµc hÕ. ",	--1 ÇóÔ®ÊéÐÅ
	"    %3n gi§t ði %2i, c¥n các hÕ ði l¤y lÕi. ",		--2 Ñ°ÕÒ½¨Öþ²ÄÁÏ
	"    T× %2i giao trä lÕi cho bang hµi ÐÕi chü quän. "						--3 ËÍ»¹
}

--Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600038_g_CityMissionScript	= 600001
x600038_g_ConstructionScript= 600035

--ÈÎÎñ½±Àø

--MisDescEnd
--************************************************************************

x600038_g_ItemOffset			= 39	--±íÀïµÚ¼¸cáiÎïÆ·ÁÐtoÕ ðµ Æ«ÒÆÁ¿
x600038_g_NPCOffset				= 48	--±íÀïµÚ¼¸ÁÐ NPC toÕ ðµ Æ«ÒÆÁ¿
x600038_g_MonsterOffset		= 43	--±íÀïµÚ¼¸ÁÐ Monster toÕ ðµ Æ«ÒÆÁ¿

--½×¶ÎÈÎÎñ
--µôÂä¹æÔò: 10%¼¸ÂÊµôÂäÈÎÎñÎïÆ·£»TÕi µôÂätoÕ ðµ ¼¸ÂÊÖÐ,50%µôÂäÈÎÎñË÷È¡toÕ ðµ ÎïÆ·,Áí50%µôÂä"ÇóÔ®ÊéÐÅ"
x600038_g_PhaseKey				= {}
x600038_g_PhaseKey["mal"]	= 1		--ÇóÔ®ÊéÐÅ: µôÂäÊéÐÅ,Ë¢ÐÂÈÎÎñÃèÊö,µ½NPC´¦×·»¹ËùÐèÎïÆ·
x600038_g_PhaseKey["fnd"]	= 2		--Ñ°ÕÒ½¨Öþ²ÄÁÏ: Ö±½ÓµôÂäËùÐèÎïÆ·
x600038_g_PhaseKey["end"]	= 3		--ËÍ»¹

--Ëæ»úÒò×Ó
x600038_g_RandomSeed			= 100
--µôÂä¼¸ÂÊ
x600038_g_DropOdds				= 10
--ÇóÔ®ÊéÐÅ
x600038_g_itmMail					= 40004287

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x600038_OnDefaultEvent( sceneId, selfId, targetId )

	--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
	if GetName( sceneId, targetId ) ~= x600038_g_Name then
		return
	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600038_g_MissionId ) > 0 then
		local bDone = x600038_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600038_g_SubmitInfo
		else
			strText = x600038_g_ContinueInfo
		end

		BeginEvent( sceneId )
			AddText( sceneId, x600038_g_MissionName )
			AddText( sceneId, strText )
		EndEvent( )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600038_g_ScriptId, x600038_g_MissionId, bDone )

	--Î´½Ó´ËÈÎÎñ,ÇÒThöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x600038_CheckAccept( sceneId, selfId ) > 0 then
		x600038_OnAccept( sceneId, selfId, targetId )
	end

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x600038_OnEnumerate( sceneId, selfId, targetId )

	--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
	if GetName( sceneId, targetId ) ~= x600038_g_Name then
		return
	end

   --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600038_g_MissionId ) > 0 then
		AddNumText( sceneId, x600038_g_ScriptId, x600038_g_MissionName,3,-1 )
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x600038_CheckAccept( sceneId, selfId )

	local	ret	= CallScriptFunction( x600038_g_ConstructionScript, "CheckAccept", sceneId, selfId )
	return ret

end

--**********************************
--¸ù¾ÝÍæ¼ÒµÈc¤p ði¬mµ½¶ÔÓ¦MissionItem_HashTable.txtÖÐtoÕ ðµ µ¥ÔªË÷Òý
--**********************************
function x600038_GetMissionItemIndex( sceneId, selfId )

	return x600038_g_ItemOffset

end

--**********************************
--¸ù¾ÝÍæ¼ÒµÈc¤p ði¬mµ½¶ÔÓ¦MissionNPC_HashTable.txtÖÐtoÕ ðµ Ñ¡ÔñÐÅÏ¢
--**********************************
function x600038_GetMissionNPCKey( sceneId, selfId )

	return x600038_g_NPCOffset

end

--**********************************
--Tiªp thø
--**********************************
function x600038_OnAccept( sceneId, selfId, targetId )

	--Ã»ÓÐÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
	if IsHaveMission( sceneId, selfId, x600038_g_MissionId ) == 0 then
		if GetLevel( sceneId, selfId ) < 10 then
			x600038_NotifyFailTips( sceneId, selfId, "Không ðü ðÆng c¤p" )
			return
		end

		--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
		--LuaFnAddMission²ÎÊýË ði¬m÷: 
		--sceneId, selfId, misId(ÈÎÎñ±àºÅ), scriptId, k(Ðúng·ñ»Øµ÷x600038_OnKillObject), e(Ðúng·ñ»Øµ÷OnEnterArea), i(Ðúng·ñ»Øµ÷OnItemChange)
		--¹¦ÄÜË ði¬m÷: TÕi Íæ¼ÒÉíÉÏÌí¼ÓmisId±àºÅtoÕ ðµ ÈÎÎñ,³É¹¦Tr· v«1
		AddMission( sceneId, selfId, x600038_g_MissionId, x600038_g_ScriptId, 1, 0, 1 )	-- kill¡¢area¡¢item
		if IsHaveMission( sceneId, selfId, x600038_g_MissionId ) <= 0 then
			return
		end

		--ÐÞ¸ÄÍæ¼ÒÉíÉÏmisId±àºÅtoÕ ðµ ÈÎÎñÏàÓ¦ÊÂ¼þ
		--eventId: µ÷ÓÃ½Å±¾±àºÅ,0 KillObj, 1 EnterArea, 2 ItemChanged, 3 PetChanged, 4 LockedTarget
		--×¢²á x600038_OnLockedTarget ÊÂ¼þ
--	SetMissionEvent( sceneId, selfId, x600038_g_MissionId, 4 )
		CallScriptFunction( x600038_g_ConstructionScript, "OnAccept", sceneId, selfId, targetId, x600038_g_ScriptId )
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600038_g_MissionId )

		local nitemId, strItemName = GetOneMissionItem( x600038_GetMissionItemIndex( sceneId, selfId ) )
		--Ñ¡ÔñËÍÐÅNPC
		local nNpcId, strNpcName, strNpcSceneDesc, _, nPosX, nPosZ, _, nGender = GetOneMissionNpc( x600038_GetMissionNPCKey( sceneId, selfId ) )
		--Ñ¡Ôñ¹¥»÷Monster
		local nMonsterId, strMonsterName, strMonsterSceneDesc, _, _, _, _, _, nLevel = LuaFnGetLevelMatchingMonster( x600038_g_MonsterOffset, GetLevel( sceneId, selfId ) )

		SetMissionByIndex( sceneId, selfId, misIndex, x600038_g_MissionParam_Phase, x600038_g_PhaseKey["fnd"] )
		SetMissionByIndex( sceneId, selfId, misIndex, x600038_g_MissionParam_NpcId, nNpcId )
		SetMissionByIndex( sceneId, selfId, misIndex, x600038_g_MissionParam_ItemId, nitemId )
		SetMissionByIndex( sceneId, selfId, misIndex, x600038_g_MissionParam_MonsterId, nMonsterId )
		--Ðúng·ñÓÐËÍÐÅÈÎÎñ
		--Èç¹ûÐúng,¹ÖÎï»á²»¶ÏµôÂä"ÇóÔ®ÊéÐÅ",´ËÊ±ÒªÇóÍæ¼Ò±ØÐëÍê³Émµt ´Î¸ÃÈÎÎñ
		if random( 2 ) <= 1 then
			SetMissionByIndex( sceneId, selfId, misIndex, x600038_g_MissionParam_IsCarrier, 0 )
		else
			SetMissionByIndex( sceneId, selfId, misIndex, x600038_g_MissionParam_IsCarrier, 1 )
		end

		--ÏÔÊ¾ÄÚÈÝ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
		local	missionInfo	= format( "    %s, các hÕ ðªn ðúng lúc quá, hôm nay bang chúng cüa bang chúng ta khi v§n chuy¬n %s ði ngang qua %s, không may b¸ %s · ðó cß¾p ði m¤t, th§t là phi«n hà quá, các hÕ nhanh chóng ði l¤y v« ði. Không ðßþc ð¬ xäy ra s½ su¤t gì, quay v« ch¡c ch¡n s¨ có thß·ng",
				GetName( sceneId, selfId ), strItemName, strMonsterSceneDesc, strMonsterName )
		BeginEvent( sceneId )
			AddText( sceneId, x600038_g_MissionName )
			AddText( sceneId, missionInfo )
			AddText( sceneId, "#rCác hÕ ðã nh§n " .. x600038_g_MissionName )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end

end

--**********************************
--µ±Ëø¶¨mµt cái¶ÔÏó
--**********************************
function x600038_OnLockedTarget( sceneId, selfId, objId )

	if IsHaveMission( sceneId, selfId, x600038_g_MissionId ) < 1 then
		return		--Ã»ÓÐ¸ÃÈÎÎñ
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600038_g_MissionId )
	local nNpcId = GetMissionParam( sceneId, selfId, misIndex, x600038_g_MissionParam_NpcId )
	local _, strNpcName = GetNpcInfoByNpcId(sceneId, nNpcId )
	if GetName( sceneId, objId ) ~= strNpcName then
		return		--ÕÒ´íÈËÁË
	end

	if LuaFnGetTaskItemBagSpace( sceneId, selfId ) < 1 then
		x600038_NotifyFailTips( sceneId, selfId, "Nhi®m vø này c¥n ít nh¤t mµt không gian v§t ph¦m nhi®m vø" )
		return
	end

	local itemId = GetMissionParam( sceneId, selfId, misIndex, x600038_g_MissionParam_ItemId )
	local _, strDemandItemName = GetItemInfoByItemId( itemId )

	local Phase = GetMissionParam( sceneId, selfId, misIndex, x600038_g_MissionParam_Phase )

	--ÇóÔ®ÊéÐÅ
	if Phase == x600038_g_PhaseKey["mal"] then
		local pos = LuaFnTryRecieveItem( sceneId, selfId, itemId, QUALITY_MUST_BE_CHANGE )
		if pos == -1 then
			x600038_NotifyFailTips( sceneId, selfId, "Ch² tr¯ng trong túi xách không ðü" )
			return
		end

		local missionInfo = format( "    Lô %s này ta ðã vô tình l¤y ðßþc, nói nhß thª tÑc là hàng cüa bang hµi các hÕ, cûng ðßþc, b±n hi®p s¨ hoàn giao lÕi cho các hÕ, l¥n sau phäi c¦n th§n ð¤y",
				strDemandItemName )
		TAddText( sceneId, missionInfo )

		ResetMissionEvent( sceneId, selfId, x600038_g_MissionId, 4 )
		DelItem( sceneId, selfId, x600038_g_itmMail, 1 )

		--Nhi®m vø hoàn thành
		SetMissionByIndex( sceneId, selfId, misIndex, x600038_g_MissionParam_Phase, x600038_g_PhaseKey["end"] )
		SetMissionByIndex( sceneId, selfId, misIndex, x600038_g_IsMissionOkFail, 1 )
		x600038_NotifyFailTips( sceneId, selfId, "Nhi®m vø hoàn thành" )

	--ÒâÍâÇé¿ö
	else
		return
	end

end

--**********************************
--·ÅÆú
--**********************************
function x600038_OnAbandon( sceneId, selfId )

	if IsHaveMission( sceneId, selfId, x600038_g_MissionId ) <= 0 then
		return
	end

	--É¾³ýÎïÆ·
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600038_g_MissionId )
	local demandItemId = GetMissionParam( sceneId, selfId, misIndex, x600038_g_MissionParam_ItemId )
	if GetItemCount( sceneId, selfId, demandItemId ) > 0 then
		DelItem( sceneId, selfId, demandItemId, 1 )
	end
	if GetItemCount( sceneId, selfId, x600038_g_itmMail ) > 0 then
		DelItem( sceneId, selfId, x600038_g_itmMail, 1 )
	end

	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
	CallScriptFunction( x600038_g_ConstructionScript, "OnAbandon", sceneId, selfId )

end

--**********************************
--¼ÌÐø
--**********************************
function x600038_OnContinue( sceneId, selfId, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, x600038_g_MissionName )
		AddText( sceneId, x600038_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600038_g_ScriptId, x600038_g_MissionId )

end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600038_CheckSubmit( sceneId, selfId, selectRadioId )

	--ÅÐ¶ÏÈÎÎñÐúng·ñÒÑ¾­Íê³É
	local ret = CallScriptFunction( x600038_g_ConstructionScript, "CheckSubmit", sceneId, selfId )
	return ret

end

--**********************************
--Ìá½»
--**********************************
function x600038_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
	if GetName( sceneId, targetId ) ~= x600038_g_Name then
		return
	end

	if x600038_CheckSubmit( sceneId, selfId ) == 1 then
		--¿Û¶«Î÷
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600038_g_MissionId )
		local demandItemId = GetMissionParam( sceneId, selfId, misIndex, x600038_g_MissionParam_ItemId )
		local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, demandItemId )

		if nItemNum > 0 then	--³É¹¦Ìá½»
			if LuaFnDelAvailableItem( sceneId, selfId, demandItemId, 1 ) < 1 then
				return
			end
		else									--Ö»×÷ÎªÈÝ´í,ÀíÂÛÉÏ²»¿ÉÄÜ·¢Éú
			SetMissionByIndex( sceneId, selfId, misIndex, x600038_g_IsMissionOkFail, 0 )
			return
		end

		CallScriptFunction( x600038_g_ConstructionScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x600038_OnKillObject( sceneId, selfId, objdataId, objId )

	--È¡ ði¬mCái này ¹ÖÎïËÀºóÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËÊý
	local allOwnersCount = GetMonsterOwnerCount( sceneId, objId )
	local i, curOwner, misIndex, nNpcId, strNpcName
	local MonsterName = GetName( sceneId, objId )
	local demandItemId, demandItemCount

	for i = 0, allOwnersCount - 1 do
		--È¡ ði¬mÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËtoÕ ðµ objId
		curOwner = GetMonsterOwnerID( sceneId, objId, i )
		--Èç¹ûCái này ÈËÓµÓÐÈÎÎñ
		if IsHaveMission( sceneId, curOwner, x600038_g_MissionId ) > 0 and
		   GetScriptIDByMissionID( sceneId, curOwner, x600038_g_MissionId ) == x600038_g_ScriptId then
			misIndex = GetMissionIndexByID( sceneId, curOwner, x600038_g_MissionId )
			nNpcId = GetMissionParam( sceneId, curOwner, misIndex, x600038_g_MissionParam_MonsterId )
			_, strNpcName = GetNpcInfoByNpcId(sceneId, nNpcId )
			demandItemId = GetMissionParam( sceneId, curOwner, misIndex, x600038_g_MissionParam_ItemId )

			if MonsterName == strNpcName then
				x600038_OnItemDrop( sceneId, selfId, objId, curOwner, demandItemId )
			end
		end
	end

end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x600038_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x600038_OnItemChanged( sceneId, selfId, itemdataId )

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600038_g_MissionId )
	local _, strItemName = GetItemInfoByItemId( itemdataId )
	local demandItemId = GetMissionParam( sceneId, selfId, misIndex, x600038_g_MissionParam_ItemId )
	local _, strDemandItemName = GetItemInfoByItemId( demandItemId )

	if itemdataId ~= demandItemId and itemdataId ~= x600038_g_itmMail then
		return
	end

	local nItemNum	= GetItemCount( sceneId, selfId, itemdataId )
	local strText		= nil
	if itemdataId == x600038_g_itmMail then
		if nItemNum > 0 then
			strText = format( "Các hÕ có ðßþc mµt bÑc thß m§t, dß¶ng nhß trong ðó có gì m¶ ám, phäi xem xem nhi®m vø" )
			SetMissionByIndex( sceneId, selfId, misIndex, x600038_g_MissionParam_Phase, x600038_g_PhaseKey["mal"] )

			--ÐÞ¸ÄÍæ¼ÒÉíÉÏmisId±àºÅtoÕ ðµ ÈÎÎñÏàÓ¦ÊÂ¼þ
			--eventId: µ÷ÓÃ½Å±¾±àºÅ,0 KillObj, 1 EnterArea, 2 ItemChanged, 3 PetChanged, 4 LockedTarget
			--×¢²á x600038_OnLockedTarget ÊÂ¼þ
			SetMissionEvent( sceneId, selfId, x600038_g_MissionId, 4 )
		else
			SetMissionByIndex( sceneId, selfId, misIndex, x600038_g_MissionParam_Phase, x600038_g_PhaseKey["end"] )
			SetMissionByIndex( sceneId, selfId, misIndex, x600038_g_MissionParam_IsCarrier, 0 )
		end
	else
		if nItemNum > 0 then
			strText = format( "L¤y ðßþc %s", strItemName )
			SetMissionByIndex( sceneId, selfId, misIndex, x600038_g_IsMissionOkFail, 1 )
			SetMissionByIndex( sceneId, selfId, misIndex, x600038_g_MissionParam_Phase, x600038_g_PhaseKey["end"] )
		else
			strText = format( "M¤t ði %s", strItemName )
			SetMissionByIndex( sceneId, selfId, misIndex, x600038_g_IsMissionOkFail, 0 )
		end
	end

	if strText ~= nil then
		x600038_NotifyFailTips( sceneId, selfId, strText )
	end

end

--**********************************
--ÎïÆ·µôÂä
--**********************************
function x600038_OnItemDrop( sceneId, selfId, monsterId, curOwner, demandItemId )

	--mµt ¶¨¼¸ÂÊ´ò³öÈÎÎñËùÐèÎïÆ·
	--if random( x600038_g_RandomSeed ) > x600038_g_DropOdds then
		--return
	--end

	--±ØÐëTiªp thøËÍÐÅÈÎÎñ
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600038_g_MissionId )
	if GetMissionParam( sceneId, selfId, misIndex, x600038_g_MissionParam_IsCarrier ) == 1 then
		if GetItemCount( sceneId, curOwner, x600038_g_itmMail ) >= 1 then
			return	--°üÖÐÒÑ¾­ÓÐÐÅ
		end
		AddMonsterDropItem( sceneId, monsterId, curOwner, x600038_g_itmMail )

	--Ö±½ÓµôÂäÈÎÎñËùÐèÎïÆ·
	else
		AddMonsterDropItem( sceneId, monsterId, curOwner, demandItemId )
	end

end

--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x600038_NotifyFailTips( sceneId, selfId, Tip )

	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
