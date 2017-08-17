-- ËÍ´òÔìºÃtoÕ ðµ ÎäÆ÷¹¤¾ß
--MisDescBegin
-- ½Å±¾ºÅ
x600005_g_ScriptId = 600005

--ÈÎÎñºÅ
x600005_g_MissionId = 1105

--Møc tiêu nhi®m vønpc
x600005_g_Name = "Mã ºng Hùng"

--ÈÎÎñ¹éÀà
x600005_g_MissionKind = 50

--ÐÆng c¤p nhi®m vø 
x600005_g_MissionLevel = 10000

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x600005_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîÐúng¶¯Ì¬ÏÔÊ¾toÕ ðµ ÄÚÈÝ,ÓÃÓÚTÕi ÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
x600005_g_IsMissionOkFail = 0							-- Nhi®m vø hoàn thành±ê¼Ç

--ÒÔÉÏÐúng¶¯Ì¬**************************************************************

--ÈÎÎñ±äÁ¿µÚmµt Î»ÓÃÀ´´æ´¢Ëæ»ú ði¬mµ½toÕ ðµ ½Å±¾ºÅ

--ÈÎÎñÎÄ±¾ÃèÊö
x600005_g_MissionName = "Nhi®m vø công trình"
x600005_g_MissionInfo = "    Hôm nay ta mu¯n có %s, tìm lÕi ðây giúp ta!"			--ÈÎÎñÃèÊö
x600005_g_MissionTarget = "    Ðem %i ðßa cho %n"							--Møc tiêu nhi®m vø
x600005_g_ContinueInfo = "    Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"					--Î´Hoàn t¤t nhi®m vøtoÕ ðµ npc¶Ô»°
x600005_g_SubmitInfo = "    Sñ tình tiªn tri¬n nhß thª nào r°i?"								--Íê³ÉÎ´Ìá½»Ê±toÕ ðµ npc¶Ô»°
x600005_g_MissionComplete = "    Làm t¯t l¡m, r¤t t¯t r¤t t¯t. "					--Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°

x600005_g_StrForePart = 5
x600005_g_ItemOffset = 18												-- Suppose to 18, ±íÀïµÚ¼¸cáiÎïÆ·ÁÐtoÕ ðµ Æ«ÒÆÁ¿
x600005_g_NPCOffset = 7													-- Suppose to 7, ±íÀïµÚ¼¸ÁÐ NPC toÕ ðµ Æ«ÒÆÁ¿
x600005_g_NPCOffsetEx = 245													-- Suppose to 7, ±íÀïµÚ¼¸ÁÐ NPC toÕ ðµ Æ«ÒÆÁ¿

x600005_g_MissionRound = 38

-- Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600005_g_CityMissionScript = 600001
x600005_g_EngineeringScript = 600002

--ÈÎÎñ½±Àø

--MisDescEnd

x600005_g_Pronoun = {}
x600005_g_Pronoun[0] = "muµi ¤y "
x600005_g_Pronoun[1] = "huynh ¤y "

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x600005_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	if GetName( sceneId, targetId ) ~= x600005_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600005_g_MissionId ) > 0 then
		--·¢ËÍÈÎÎñÐèÇótoÕ ðµ ÐÅÏ¢
		local bDone = x600005_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600005_g_SubmitInfo
		else
			strText = x600005_g_ContinueInfo
		end

		--·¢ËÍÈÎÎñÐèÇótoÕ ðµ ÐÅÏ¢
		BeginEvent( sceneId )
			AddText( sceneId, x600005_g_MissionName )
			AddText( sceneId, strText )
		EndEvent( )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600005_g_ScriptId, x600005_g_MissionId, bDone )
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x600005_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600005_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600005_OnAccept( sceneId, selfId, targetId )
		end
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x600005_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600005_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

   --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600005_g_MissionId ) > 0 then
		AddNumText( sceneId, x600005_g_ScriptId, x600005_g_MissionName,3,-1 )
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x600005_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600005_g_EngineeringScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--¸ù¾ÝÍæ¼ÒµÈc¤p ði¬mµ½¶ÔÓ¦MissionItem_HashTable.txtÖÐtoÕ ðµ µ¥ÔªË÷Òý
--**********************************
function x600005_GetMissionItemIndex( sceneId, selfId )
	return x600005_g_ItemOffset
end

--**********************************
--¸ù¾ÝÍæ¼ÒµÈc¤p ði¬mµ½¶ÔÓ¦MissionNPC_HashTable.txtÖÐtoÕ ðµ Ñ¡ÔñÐÅÏ¢
--**********************************
function x600005_GetMissionNPCKey( sceneId, selfId )
	local nPlayerLevel = GetLevel( sceneId, selfId )
	local nPos

	if nPlayerLevel < 40 then								-- 20 ~ 39
		nPos = 0
	elseif nPlayerLevel < 60 then							-- 40 ~ 59
		nPos = 1
	elseif nPlayerLevel < 80 then							-- 60 ~ 79
		nPos = 2
	elseif nPlayerLevel < 100 then							-- 80 ~ 100
		nPos = 3
		
	elseif nPlayerLevel < 120 then							-- 100 ~ 119 modi:lby20071127
		nPos = 0
	else							-- >120
		nPos = 1
	end


	if nPlayerLevel < 100 then							--modi:lby20071127
		return nPos + x600005_g_NPCOffset
	else
		return nPos + x600005_g_NPCOffsetEx
	end
		
	--return nPos + x600005_g_NPCOffset
end

--**********************************
--Tiªp thø
--**********************************
function x600005_OnAccept( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600005_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

	if GetLevel( sceneId, selfId ) < 20 then
		CallScriptFunction( x600005_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Không ðü ðÆng c¤p" )
		return
	end

	local nitemId, strItemName, _ = GetOneMissionItem( x600005_GetMissionItemIndex( sceneId, selfId ) )
	local pos = LuaFnTryRecieveItem( sceneId, selfId, nitemId, QUALITY_MUST_BE_CHANGE)
	if pos == -1 then
		CallScriptFunction( x600005_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Ch² tr¯ng trong túi xách không ðü" )
		return
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId, selfId, x600005_g_MissionId, x600005_g_ScriptId, 0, 0, 0 )	-- kill¡¢area¡¢item
	if IsHaveMission( sceneId, selfId, x600005_g_MissionId ) <= 0 then
		return
	end

	SetMissionEvent( sceneId, selfId, x600005_g_MissionId, 4 ) -- ×¢²á x600005_OnLockedTarget ÊÂ¼þ

	CallScriptFunction( x600005_g_EngineeringScript, "OnAccept", sceneId, selfId, targetId, x600005_g_ScriptId )

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600005_g_MissionId )
	local nNpcId, strNpcName, strNpcScene, _, nPosX, nPosZ, _, nGender = GetOneMissionNpc( x600005_GetMissionNPCKey( sceneId, selfId ) )

	SetMissionByIndex( sceneId, selfId, misIndex, x600005_g_StrForePart, nitemId )
	SetMissionByIndex( sceneId, selfId, misIndex, x600005_g_StrForePart + 1, nNpcId )

	--ÏÔÊ¾ÄÚÈÝ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
	BeginEvent( sceneId )
		local missionInfo
		local rand = random(2)

		if rand == 1 then
			missionInfo = format( "    Chúng ta vì %s %s (%d, %d) ðã ðúc thành #Y%s#W, hy v÷ng các hÕ có th¬ giúp ta chuy¬n giúp.",
				strNpcScene, strNpcName, nPosX, nPosZ, strItemName )
		else
			missionInfo = format( "    %s %s (%d, %d) ðã ð£t #Y%s#W · ðây, hy v÷ng các hÕ có th¬ chuy¬n cho %s",
				strNpcScene, strNpcName, nPosX, nPosZ, strItemName, x600005_g_Pronoun[nGender] )
		end

		AddText( sceneId, missionInfo )
		AddText( sceneId, "#r    Các hÕ ðã nh§n " .. x600005_g_MissionName )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--·ÅÆú
--**********************************
function x600005_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
	CallScriptFunction( x600005_g_EngineeringScript, "OnAbandon", sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x600005_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600005_g_MissionName )
		AddText( sceneId, x600005_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600005_g_ScriptId, x600005_g_MissionId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600005_CheckSubmit( sceneId, selfId )
	local ret = CallScriptFunction( x600005_g_EngineeringScript, "CheckSubmit", sceneId, selfId )
	return ret
end

--**********************************
--Ìá½»
--**********************************
function x600005_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600005_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

	if x600005_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600005_g_EngineeringScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x600005_OnKillObject( sceneId, selfId, objdataId, objId )	--²ÎÊýÒâË¼: ³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎïobjId
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x600005_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x600005_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--µ±Ëø¶¨mµt cái¶ÔÏó
--**********************************
function x600005_OnLockedTarget( sceneId, selfId, objId )
	if IsHaveMission( sceneId, selfId, x600005_g_MissionId ) < 1 then
		return		-- Ã»ÓÐ¸ÃÈÎÎñ
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600005_g_MissionId )		-- ði¬mµ½ÈÎÎñTÕi 20cáiÈÎÎñÖÐtoÕ ðµ ÐòÁÐºÅ
	if GetMissionParam( sceneId, selfId, misIndex, x600005_g_IsMissionOkFail ) > 0 then
		return		-- ¸ÃÈÎÎñÒÑÍê³É
	end

	local nNpcId
	local strNpcName
	local PosX
	local PosZ

	nNpcId = GetMissionParam( sceneId, selfId, misIndex, x600005_g_StrForePart + 1 )
	_, strNpcName, _, PosX, PosZ = GetNpcInfoByNpcId(sceneId, nNpcId )

	-- ÔÝÊ±²»±È½ÏÎ»ÖÃ
	if GetName( sceneId, objId ) == strNpcName then
		local nItemId
		nItemId = GetMissionParam( sceneId, selfId, misIndex, x600005_g_StrForePart )

		if DelItem( sceneId, selfId, nItemId, 1 ) == 1 then
			-- ÉèÖÃÈÎÎñÒÑ¾­Íê³É
			SetMissionByIndex( sceneId, selfId, misIndex, x600005_g_IsMissionOkFail, 1 )
			-- ½«¸ÃÈÎÎñ´Ó x600005_OnLockedTarget ÊÂ¼þÁÐ±íÖÐÇå³ý,¸ÃÈÎÎñ²»ÔÙ¹ØÐÄ´ËÀàÊÂ¼þ
			ResetMissionEvent( sceneId, selfId, x600005_g_MissionId, 4 )
			TAddText( sceneId, "    Danh tín cüa quý bang th§t t¯t, vô cùng cäm ½n." )
		end
	end
end
