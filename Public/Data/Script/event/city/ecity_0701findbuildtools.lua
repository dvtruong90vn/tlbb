--¸±±¾ÈÎÎñ
--Ñ°ÕÒ½¨Éè¹¤¾ß

--************************************************************************
--MisDescBegin

--½Å±¾ºÅ
x600036_g_ScriptId = 600036

--ÈÎÎñºÅ
x600036_g_MissionId = 1111

--Ä¿±êNPC
x600036_g_Name = "Tr¸nh Vô Danh"

--ÐÆng c¤p nhi®m vø 
x600036_g_MissionLevel = 10000

--ÈÎÎñ¹éÀà
x600036_g_MissionKind = 50

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x600036_g_IfMissionElite = 0

--********ÏÂÃæ¼¸ÏîÐúng¶¯Ì¬ÏÔÊ¾toÕ ðµ ÄÚÈÝ,ÓÃÓÚTÕi ÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
--½ÇÉ«Mission±äÁ¿Ë ði¬m÷

x600036_g_IsMissionOkFail			=0	--0 Nhi®m vø hoàn thành±ê¼Ç
x600036_g_MissionParam_SubId		=1	--1 ×ÓÈÎÎñ½Å±¾ºÅ´æ·ÅÎ»ÖÃ
x600036_g_MissionParam_Phase		=2	--2 ½×¶ÎºÅ ´ËºÅÓÃÓÚÇø·Öµ±Ç°ÈÎÎñUItoÕ ðµ ÃèÊöÐÅÏ¢
x600036_g_MissionParam_NpcId		=3	--3 ÈÎÎñ NPC toÕ ðµ  NPCId ºÅ
x600036_g_MissionParam_ItemId		=4	--4 ÈÎÎñÎïÆ·toÕ ðµ ±àºÅ
x600036_g_MissionParam_MonsterId	=5	--5 ÈÎÎñ Monster toÕ ðµ  NPCId ºÅ

--Ñ­»·ÈÎÎñtoÕ ðµ Êý¾ÝË÷Òý,ÀïÃæ´æ×ÅÒÑ×ötoÕ ðµ »·Êý
x600036_g_MissionRound = 59
--**********************************ÒÔÉÏÐúng¶¯Ì¬****************************

--ÈÎÎñÎÄ±¾ÃèÊö
x600036_g_MissionName = "Xây dñng nhi®m vø"
x600036_g_MissionInfo = "Nµi chính thành th¸ - Nhi®m vø xây dñng"								--ÈÎÎñÃèÊö
x600036_g_MissionTarget = "%f"												--Møc tiêu nhi®m vø
x600036_g_ContinueInfo = "    Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"						--Î´Hoàn t¤t nhi®m vøtoÕ ðµ npc¶Ô»°
x600036_g_SubmitInfo = "    Sñ tình tiªn tri¬n nhß thª nào r°i?"								--Íê³ÉÎ´Ìá½»Ê±toÕ ðµ npc¶Ô»°
x600036_g_MissionComplete = "    R¤t t¯t r¤t t¯t, tiªn ðµ xây dñng lÕi tång nhanh r°i. "			--Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°

x600036_g_Parameter_Item_IDRandom = { { id = 4, num = 1 } }

x600036_g_StrForePart = 2

--ÓÃÀ´±£´æ×Ö·û´®¸ñÊ½»¯toÕ ðµ Êý¾Ý
x600036_g_FormatList = {
	"",
	"    Ði ðªn %1n mßþn l¤y %2i. ",					-- 1
	"    T× %2i giao trä lÕi cho bang hµi ÐÕi chü quän. ",			-- 2
	"    Ði ðªn %1n mßþn l¤y %2i. ",					-- 3
	"    Ði ðªn %1n mßþn l¤y %2i. ",					-- 4
	"    %3n gi§t ði %2i, c¥n các hÕ ði l¤y lÕi. ",	-- 5
	"    T× %2i giao trä lÕi cho bang hµi ÐÕi chü quän. ",			-- 6
}

-- Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600036_g_CityMissionScript = 600001
x600036_g_ConstructionScript = 600035

--ÈÎÎñ½±Àø

--MisDescEnd
--************************************************************************

x600036_g_ItemOffset = 29				-- Suppose to 29, ±íÀïµÚ¼¸cáiÎïÆ·ÁÐtoÕ ðµ Æ«ÒÆÁ¿
x600036_g_NPCOffset = 34				-- Suppose to 34, ±íÀïµÚ¼¸ÁÐ NPC toÕ ðµ Æ«ÒÆÁ¿
x600036_g_NPCOffsetEx	= 257 		--±íÀïµÚ¼¸ÁÐ NPC toÕ ðµ Æ«ÒÆÁ¿À©³ä modi:lby20071126
x600036_g_MonsterOffset = 43		-- Suppose to 43, ±íÀïµÚ¼¸ÁÐ Monster toÕ ðµ Æ«ÒÆÁ¿

x600036_g_subScriptId = 600037
x600036_g_subMissionId = 1112

x600036_g_FamilyNamesList = { "Tri®u", "Ti«n", "Tôn ", "Lý", "Châu", "Ngô ", "Tr¸nh ", "Vß½ng", "Phùng ", "Tr¥n ", "ChØ ", "NguÜ", "Tß·ng ", "Th¦m ", "Hàn", "Dß½ng", "Chuy¬n giao tình báo", "T¥n", "Vßu ", "HÑa ", "Hà ", "Læ ", "Thi ", "Trß½ng", }

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x600036_OnDefaultEvent( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600036_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600036_g_MissionId ) > 0 then
		local bDone = x600036_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600036_g_SubmitInfo
		else
			strText = x600036_g_ContinueInfo
		end

		BeginEvent( sceneId )
			AddText( sceneId, x600036_g_MissionName )
			AddText( sceneId, strText )
		EndEvent( )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600036_g_ScriptId, x600036_g_MissionId, bDone )

	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x600036_CheckAccept( sceneId, selfId ) > 0 then
		x600036_OnAccept( sceneId, selfId, targetId )
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x600036_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600036_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

   --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600036_g_MissionId ) > 0 then
		AddNumText( sceneId, x600036_g_ScriptId, x600036_g_MissionName,3,-1 )
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x600036_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600036_g_ConstructionScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--¸ù¾ÝÍæ¼ÒµÈc¤p ði¬mµ½¶ÔÓ¦MissionItem_HashTable.txtÖÐtoÕ ðµ µ¥ÔªË÷Òý
--**********************************
function x600036_GetMissionItemIndex( sceneId, selfId )
	return x600036_g_ItemOffset
end

--**********************************
--¸ù¾ÝÍæ¼ÒµÈc¤p ði¬mµ½¶ÔÓ¦MissionNPC_HashTable.txtÖÐtoÕ ðµ Ñ¡ÔñÐÅÏ¢
--**********************************
function x600036_GetMissionNPCKey( sceneId, selfId )
	local nPlayerLevel = GetLevel( sceneId, selfId )
	local nPos

	if nPlayerLevel < 30 then								-- 10 ~ 30
		nPos = 0
	elseif nPlayerLevel < 50 then							-- 30 ~ 50
		nPos = 1
	elseif nPlayerLevel < 70 then							-- 50 ~ 70
		nPos = 2
	--else													-- 70 ~ 100
	--	nPos = 3
	--end

	--return nPos + x600036_g_NPCOffset
	elseif	nPlayerLevel < 100 then		-- 70 ~ 100 Level
		nPos = 3
	elseif nPlayerLevel < 120 then		-- 100 ~ 120 Level	modi:lby20071126
		nPos = 0
	else 															-- >=120 Level
		nPos = 1
		
	end
	
	if nPlayerLevel < 100 then
		return nPos + x600036_g_NPCOffset
	else
		return nPos + x600036_g_NPCOffsetEx
	end
end

--**********************************
--Tiªp thø
--**********************************
function x600036_OnAccept( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x600036_g_MissionId ) == 0 then					--Ã»ÓÐÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		if GetLevel( sceneId, selfId ) < 10 then
			CallScriptFunction( x600036_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Không ðü ðÆng c¤p" )
			return
		end

		--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
		AddMission( sceneId, selfId, x600036_g_MissionId, x600036_g_ScriptId, 0, 0, 0 )	-- kill¡¢area¡¢item
		if IsHaveMission( sceneId, selfId, x600036_g_MissionId ) <= 0 then
			return
		end

		SetMissionEvent( sceneId, selfId, x600036_g_MissionId, 4 ) -- ×¢²á x600036_OnLockedTarget ÊÂ¼þ
		CallScriptFunction( x600036_g_ConstructionScript, "OnAccept", sceneId, selfId, targetId, x600036_g_ScriptId )
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600036_g_MissionId )

		local nitemId, strItemName = GetOneMissionItem( x600036_GetMissionItemIndex( sceneId, selfId ) )
		local nNpcId, strNpcName, strNpcSceneDesc, _, nPosX, nPosZ, _, nGender = GetOneMissionNpc( x600036_GetMissionNPCKey( sceneId, selfId ) )
		local PlayerGender = GetSex( sceneId, selfId )
		local rank

		SetMissionByIndex( sceneId, selfId, misIndex, x600036_g_MissionParam_Phase, 1 )
		SetMissionByIndex( sceneId, selfId, misIndex, x600036_g_MissionParam_NpcId, nNpcId )
		SetMissionByIndex( sceneId, selfId, misIndex, x600036_g_MissionParam_ItemId, nitemId )

		if PlayerGender == 0 then
			rank = "Næ hi®p"
		elseif PlayerGender == 1 then
			rank = " các hÕ"
		else
			rank = " các hÕ "
		end

		--ÏÔÊ¾ÄÚÈÝ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
		BeginEvent( sceneId )
			AddText( sceneId, x600036_g_MissionName )
			local missionInfo = format( "    — công trß¶ng %s sß phø, không may ðánh m¤t %s, kh¦n thïnh %s ði v« %s%s (%d, %d) mßþn, s¨ vô cùng cäm kích. ",
				x600036_g_FamilyNamesList[random(getn(x600036_g_FamilyNamesList))], strItemName, rank,
				strNpcSceneDesc, strNpcName, nPosX, nPosZ )

			AddText( sceneId, missionInfo )
			AddText( sceneId, "#rCác hÕ ðã nh§n " .. x600036_g_MissionName )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
--µ±Ëø¶¨mµt cái¶ÔÏó
--**********************************
function x600036_OnLockedTarget( sceneId, selfId, objId )
	if IsHaveMission( sceneId, selfId, x600036_g_MissionId ) < 1 then
		return		-- Ã»ÓÐ¸ÃÈÎÎñ
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600036_g_MissionId )

	local nNpcId = GetMissionParam( sceneId, selfId, misIndex, x600036_g_MissionParam_NpcId )
	local _, strNpcName = GetNpcInfoByNpcId(sceneId, nNpcId )
	if GetName( sceneId, objId ) ~= strNpcName then			-- ÕÒ´íÈËÁË
		return
	end

	if LuaFnGetTaskItemBagSpace( sceneId, selfId ) < 1 then
		x600036_NotifyFailTips( sceneId, selfId, "Nhi®m vø này c¥n ít nh¤t mµt không gian v§t ph¦m nhi®m vø" )
		return
	end

	local itemId = GetMissionParam( sceneId, selfId, misIndex, x600036_g_MissionParam_ItemId )
	local _, strDemandItemName = GetItemInfoByItemId( itemId )

	local Phase = GetMissionParam( sceneId, selfId, misIndex, x600036_g_MissionParam_Phase )

	local PlayerGender = GetSex( sceneId, selfId )
	local rank

	if PlayerGender == 0 then
		rank = "ÏÀÅ®"
	else
		rank = " các hÕ"
	end

	if Phase == 1 then				-- ¸Õ½ÓÁËÈÎÎñÀ´ÕÒ NPC
		-- 8 ³É»ú»áÖ±½Ó¸øÓëÈÎÎñÎïÆ·,Nhi®m vø hoàn thành,1 ³É»ú»á¸ø¸±±¾ÈÎÎñ,1 ³É»ú»á¸øÉ±¹ÖÈÎÎñ
		local rand = random(100)	-- Ö±½ÓHoàn t¤t nhi®m vø
		if rand <= 80 then
			local pos = LuaFnTryRecieveItem( sceneId, selfId, itemId, QUALITY_MUST_BE_CHANGE )
			if pos == -1 then
				CallScriptFunction( x600036_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Ch² tr¯ng trong túi xách không ðü" )
				return
			end

			SetMissionByIndex( sceneId, selfId, misIndex, x600036_g_MissionParam_Phase, 2 )
			SetMissionByIndex( sceneId, selfId, misIndex, x600036_g_IsMissionOkFail, 1 )		-- Nhi®m vø hoàn thành

			local missionInfo = format( "    Nªu %s ðªn l¤y, dî nhiên s¨ làm hªt sÑc mình, ðây là %s, xin nh§n hµ cho",
				rank, strDemandItemName )

			TAddText( sceneId, missionInfo )

			ResetMissionEvent( sceneId, selfId, x600036_g_MissionId, 4 )
			return
		elseif rand <= 90 then		-- ·ÖÅÉ¸±±¾ÈÎÎñ
			--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
			AddMission( sceneId, selfId, x600036_g_subMissionId, x600036_g_subScriptId, 1, 0, 0 )	-- kill¡¢area¡¢item
			if IsHaveMission( sceneId, selfId, x600036_g_subMissionId ) <= 0 then
				return
			end

			SetMissionByIndex( sceneId, selfId, misIndex, x600036_g_MissionParam_Phase, 3 )
			local subMisIndex = GetMissionIndexByID( sceneId, selfId, x600036_g_subMissionId )
			SetMissionByIndex( sceneId, selfId, subMisIndex, 2, 10 )						--C¥n É±ËÀtoÕ ðµ ¹ÖÎïÊýÁ¿,½ö¹©¿Í»§¶ËÊ¹ÓÃ

			CallScriptFunction( x600036_g_subScriptId, "OnEnumerate", sceneId, selfId, objId )

			return
		else						-- ·ÖÅÉÉ±¹ÖÈÎÎñ
			SetMissionByIndex( sceneId, selfId, misIndex, x600036_g_MissionParam_Phase, 5 )

			SetMissionEvent( sceneId, selfId, x600036_g_MissionId, 0 )					-- ×¢²á KillObj ÊÂ¼þ
			SetMissionEvent( sceneId, selfId, x600036_g_MissionId, 2 )					-- ×¢²á itemchange ÊÂ¼þ
			local myLevel = GetLevel( sceneId, selfId )
			local nMonsterId, strMonsterName, strMonsterSceneDesc, _, _, _, _, _, nLevel = LuaFnGetLevelMatchingMonster( x600036_g_MonsterOffset, myLevel )

--		PrintStr( "ÎÒtoÕ ðµ c¤p±ð: " .. myLevel .. ",¹ÖtoÕ ðµ c¤p±ð: " .. nLevel )
			SetMissionByIndex( sceneId, selfId, misIndex, x600036_g_MissionParam_MonsterId, nMonsterId )

			strMonsterSceneDesc	= gsub( strMonsterSceneDesc, "Ðích", "" )
			local missionInfo = format( "    Ái chà, th§t không ðúng lúc chút nào, %s thì có, m¤y hôm trß¾c khi ði qua %s, không th§n tr÷ng ð¬ %s · ðó cß¾p ði m¤t r°i, nªu %s mu¯n có th¬ ði giành lÕi",
				strDemandItemName, strMonsterSceneDesc, strMonsterName, rank )

			TAddText( sceneId, missionInfo )

			ResetMissionEvent( sceneId, selfId, x600036_g_MissionId, 4 )
			return
		end
	elseif Phase == 3 then			-- ·ÖÅäÁË¸±±¾ÈÎÎñ
			--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
		if IsHaveMission( sceneId, selfId, x600036_g_subMissionId ) <= 0 then
			AddMission( sceneId, selfId, x600036_g_subMissionId, x600036_g_subScriptId, 1, 0, 0 )	-- kill¡¢area¡¢item
			if IsHaveMission( sceneId, selfId, x600036_g_subMissionId ) <= 0 then
				return
			end
		end

		CallScriptFunction( x600036_g_subScriptId, "OnEnumerate", sceneId, selfId, objId )
		return
	elseif Phase == 4 then			-- ¸±±¾Nhi®m vø hoàn thànhÁË
		-- É¾³ý¸±±¾ÈÎÎñ,¸øÓëÈÎÎñÎïÆ·
		local pos = LuaFnTryRecieveItem( sceneId, selfId, itemId, QUALITY_MUST_BE_CHANGE)
		if pos == -1 then
			CallScriptFunction( x600036_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Ch² tr¯ng trong túi xách không ðü" )
			return
		end

		SetMissionByIndex( sceneId, selfId, misIndex, x600036_g_MissionParam_Phase, 2 )
		SetMissionByIndex( sceneId, selfId, misIndex, x600036_g_IsMissionOkFail, 1 )		-- Nhi®m vø hoàn thành

		local missionInfo = format( "    Ða tÕ %s rút ðao cÑu vi®n, %s này xin mang hµ v« quý bang",
			rank, strDemandItemName )

		TAddText( sceneId, missionInfo )

		ResetMissionEvent( sceneId, selfId, x600036_g_MissionId, 4 )
		return
	elseif Phase == 5 then			-- ÒÑ¾­·ÖÅäÁËÉ±¹ÖÈÎÎñ
		local myLevel = GetLevel( sceneId, selfId )
		local nMonsterId, strMonsterName, strMonsterSceneDesc = LuaFnGetLevelMatchingMonster( x600036_g_MonsterOffset, myLevel )
		strMonsterSceneDesc	= gsub( strMonsterSceneDesc, "Ðích", "" )
		local missionInfo = format( "    Ái chà, th§t không ðúng lúc chút nào, %s thì có, m¤y hôm trß¾c khi ði qua %s, không th§n tr÷ng ð¬ %s · ðó cß¾p ði m¤t r°i, nªu %s mu¯n có th¬ ði giành lÕi",
			strDemandItemName, strMonsterSceneDesc, strMonsterName, rank )

		TAddText( sceneId, missionInfo )
		return
	else							-- ÒâÍâÇé¿ö
		return
	end
end

--**********************************
--·ÅÆú
--**********************************
function x600036_OnAbandon( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600036_g_subMissionId ) == 1 then
		x600036_NotifyFailTips( sceneId, selfId, "Ð« ngh¸ phäi bö ði các nhi®m vø có liên quan" )
		return		-- Ã»ÓÐ¸ÃÈÎÎñ
	end

	--É¾³ýÎïÆ·
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600036_g_MissionId )
	local demandItemId = GetMissionParam( sceneId, selfId, misIndex, x600036_g_MissionParam_ItemId )
	if GetItemCount( sceneId, selfId, demandItemId ) > 0 then
		DelItem( sceneId, selfId, demandItemId, 1 )
	end

	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
	CallScriptFunction( x600036_g_ConstructionScript, "OnAbandon", sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x600036_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600036_g_MissionName )
		AddText( sceneId, x600036_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600036_g_ScriptId, x600036_g_MissionId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600036_CheckSubmit( sceneId, selfId, selectRadioId )
	--ÅÐ¶ÏÈÎÎñÐúng·ñÒÑ¾­Íê³É
	local ret = CallScriptFunction( x600036_g_ConstructionScript, "CheckSubmit", sceneId, selfId )
	return ret
end

--**********************************
--Ìá½»
--**********************************
function x600036_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600036_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

	if x600036_CheckSubmit( sceneId, selfId ) == 1 then
		-- ¿Û¶«Î÷
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600036_g_MissionId )
		local demandItemId = GetMissionParam( sceneId, selfId, misIndex, x600036_g_MissionParam_ItemId )
		local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, demandItemId )

		if nItemNum > 0 then
			if LuaFnDelAvailableItem( sceneId, selfId, demandItemId, 1 ) < 1 then
				return
			end
		else											-- Ö»×÷ÎªÈÝ´í,ÀíÂÛÉÏ²»¿ÉÄÜ·¢Éú
			SetMissionByIndex( sceneId, selfId, misIndex, x600036_g_IsMissionOkFail, 0 )
			return
		end

		CallScriptFunction( x600036_g_ConstructionScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x600036_OnKillObject( sceneId, selfId, objdataId, objId )
	local allOwnersCount = GetMonsterOwnerCount( sceneId, objId )		--È¡ ði¬mCái này ¹ÖÎïËÀºóÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËÊý
	local i, curOwner, misIndex, nNpcId, strNpcName
	local MonsterName = GetName( sceneId, objId )
	local demandItemId, demandItemCount

	for i = 0, allOwnersCount - 1 do
		curOwner = GetMonsterOwnerID( sceneId, objId, i )				--È¡ ði¬mÓµÓÐ·ÖÅäÈ¨toÕ ðµ ÈËtoÕ ðµ objId
		if IsHaveMission( sceneId, curOwner, x600036_g_MissionId ) > 0 and
		   GetScriptIDByMissionID( sceneId, curOwner, x600036_g_MissionId ) == x600036_g_ScriptId then		--Èç¹ûCái này ÈËÓµÓÐÈÎÎñ
			misIndex = GetMissionIndexByID( sceneId, curOwner, x600036_g_MissionId )

		 	if GetMissionParam( sceneId, curOwner, misIndex, x600036_g_MissionParam_Phase ) ~= 5 then
		 		return
		 	end

			nNpcId = GetMissionParam( sceneId, curOwner, misIndex, x600036_g_MissionParam_MonsterId )
			_, strNpcName = GetNpcInfoByNpcId(sceneId, nNpcId )
			demandItemId = GetMissionParam( sceneId, curOwner, misIndex, x600036_g_MissionParam_ItemId )

			if MonsterName == strNpcName then
			-- mµt ¶¨¼¸ÂÊ´ò³öÈÎÎñËùÐèÎïÆ·
				if GetItemCount( sceneId, curOwner, demandItemId ) < 1 then
					--if random( 100 ) > 10 then
						--return
					--end

					AddMonsterDropItem( sceneId, objId, curOwner, demandItemId )
				end
			end
		end
	end
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x600036_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x600036_OnItemChanged( sceneId, selfId, itemdataId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600036_g_MissionId )

	local _, strItemName = GetItemInfoByItemId( itemdataId )
	local demandItemId = GetMissionParam( sceneId, selfId, misIndex, x600036_g_MissionParam_ItemId )
	local _, strDemandItemName = GetItemInfoByItemId( demandItemId )

	if strItemName == strDemandItemName then
		local nItemNum = GetItemCount( sceneId, selfId, itemdataId )
		local strText
		if nItemNum > 0 then
			strText = format( "Ðã có ðßþc %s", strItemName )
			SetMissionByIndex( sceneId, selfId, misIndex, x600036_g_IsMissionOkFail, 1 )
			SetMissionByIndex( sceneId, selfId, misIndex, x600036_g_MissionParam_Phase, 6 )
		else
			strText = format( "M¤t ði %s", strItemName )
			SetMissionByIndex( sceneId, selfId, misIndex, x600036_g_IsMissionOkFail, 0 )
		end

		CallScriptFunction( x600036_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, strText )
	end
end

function x600036_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
