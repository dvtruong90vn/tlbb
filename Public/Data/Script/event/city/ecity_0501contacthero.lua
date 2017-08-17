-- ½áÊ¶½­ºşºÀ½Ü
--MisDescBegin
-- ½Å±¾ºÅ
x600024_g_ScriptId = 600024

--ÈÎÎñºÅ
x600024_g_MissionId = 1110

--Møc tiêu nhi®m vønpc
x600024_g_Name = "Ğông Phù Dung"

--ÈÎÎñ¹éÀà
x600024_g_MissionKind = 50

--ĞÆng c¤p nhi®m vø 
x600024_g_MissionLevel = 10000

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x600024_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîĞúng¶¯Ì¬ÏÔÊ¾toÕ ğµ ÄÚÈİ,ÓÃÓÚTÕi ÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
x600024_g_IsMissionOkFail = 0							-- Nhi®m vø hoàn thành±ê¼Ç

--ÒÔÉÏĞúng¶¯Ì¬**************************************************************

--ÈÎÎñ±äÁ¿µÚmµt Î»ÓÃÀ´´æ´¢Ëæ»ú ği¬mµ½toÕ ğµ ½Å±¾ºÅ

--ÈÎÎñÎÄ±¾ÃèÊö
x600024_g_MissionName = "Nhi®m vø khuªch trß½ng"
x600024_g_MissionInfo = "    Hôm nay ta mu¯n có %s, tìm lÕi ğây giúp ta!"			--ÈÎÎñÃèÊö
x600024_g_MissionTarget = "    Sau ğó ğßa tin cho %n. "							--Møc tiêu nhi®m vø
x600024_g_ContinueInfo = "    Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"					--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x600024_g_SubmitInfo = "    Sñ tình tiªn tri¬n nhß thª nào r°i?"							--Íê³ÉÎ´Ìá½»Ê±toÕ ğµ npc¶Ô»°
x600024_g_MissionComplete = "    Ğßşc l¡m ğßşc l¡m, l¥n này tiªng tåm cüa b±n bang s¨ ğßşc lan truy«n trong giang h°. "		--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°

x600024_g_StrForePart = 5
x600024_g_NPCOffset = 30												-- Suppose to 30, ±íÀïµÚ¼¸ÁĞ NPC toÕ ğµ Æ«ÒÆÁ¿
x600024_g_NPCOffsetEx	= 255 										--±íÀïµÚ¼¸ÁĞ NPC toÕ ğµ Æ«ÒÆÁ¿À©³ä modi:lby20071126

x600024_g_MissionRound = 55

-- Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600024_g_CityMissionScript = 600001
x600024_g_ExpandScript = 600023

--ÈÎÎñ½±Àø

--MisDescEnd

x600024_g_TargetNPC = x600024_g_StrForePart
x600024_g_MissionItem = 40004256

x600024_g_Pronoun = {}
x600024_g_Pronoun[0] = "muµi ¤y "
x600024_g_Pronoun[1] = "huynh ¤y "

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x600024_OnDefaultEvent( sceneId, selfId, targetId )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	if GetName( sceneId, targetId ) ~= x600024_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600024_g_MissionId ) > 0 then
		--·¢ËÍÈÎÎñĞèÇótoÕ ğµ ĞÅÏ¢
		local bDone = x600024_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600024_g_SubmitInfo
		else
			strText = x600024_g_ContinueInfo
		end

		--·¢ËÍÈÎÎñĞèÇótoÕ ğµ ĞÅÏ¢
		BeginEvent( sceneId )
			AddText( sceneId, x600024_g_MissionName )
			AddText( sceneId, strText )
		EndEvent( )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600024_g_ScriptId, x600024_g_MissionId, bDone )
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x600024_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600024_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600024_OnAccept( sceneId, selfId, targetId )
		end
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x600024_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600024_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

   --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600024_g_MissionId ) > 0 then
		AddNumText( sceneId, x600024_g_ScriptId, x600024_g_MissionName,3,-1 )
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x600024_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600024_g_ExpandScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--¸ù¾İÍæ¼ÒµÈc¤p ği¬mµ½¶ÔÓ¦MissionNPC_HashTable.txtÖĞtoÕ ğµ Ñ¡ÔñĞÅÏ¢
--**********************************
function x600024_GetMissionNPCKey( sceneId, selfId )
	local nPlayerLevel = GetLevel( sceneId, selfId )
	local nPos

	if nPlayerLevel < 55 then								-- 40 ~ 54
		nPos = 0
	elseif nPlayerLevel < 70 then							-- 55 ~ 69
		nPos = 1
	elseif nPlayerLevel < 85 then							-- 70 ~ 84
		nPos = 2
	--else													-- 85 ~ 100
	--	nPos = 3
	--end

	--return nPos + x600024_g_NPCOffset
	elseif	nPlayerLevel < 100 then					-- 85 ~ 99 Level
		nPos = 3
	elseif nPlayerLevel < 115 then					-- 100 ~ 119 Level	modi:lby20071126
		nPos = 0
	else 																		-- >=115 Level
		nPos = 1
		
	end
	
	if nPlayerLevel < 100 then
		return nPos + x600024_g_NPCOffset
	else
		return nPos + x600024_g_NPCOffsetEx
	end
end

--**********************************
--Tiªp thø
--**********************************
function x600024_OnAccept( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600024_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	if GetLevel( sceneId, selfId ) < 40 then
		CallScriptFunction( x600024_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Không ğü ğÆng c¤p" )
		return
	end

	local pos = LuaFnTryRecieveItem( sceneId, selfId, x600024_g_MissionItem, QUALITY_MUST_BE_CHANGE )
	if pos == -1 then
		CallScriptFunction( x600024_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Ch² tr¯ng trong túi xách không ğü" )
		return
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId, selfId, x600024_g_MissionId, x600024_g_ScriptId, 0, 0, 0 )	-- kill¡¢area¡¢item
	if IsHaveMission( sceneId, selfId, x600024_g_MissionId ) <= 0 then
		return
	end

	SetMissionEvent( sceneId, selfId, x600024_g_MissionId, 4 ) -- ×¢²á x600024_OnLockedTarget ÊÂ¼ş

	CallScriptFunction( x600024_g_ExpandScript, "OnAccept", sceneId, selfId, targetId, x600024_g_ScriptId )

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600024_g_MissionId )
	local nNpcId, strNpcName, strNpcScene, nScene, nPosX, nPosZ, _, nGender = GetOneMissionNpc( x600024_GetMissionNPCKey( sceneId, selfId ) )

	SetMissionByIndex( sceneId, selfId, misIndex, x600024_g_TargetNPC, nNpcId )

	strNpcScene = gsub( strNpcScene, "toÕ ğµ ", "" )

	--ÏÔÊ¾ÄÚÈİ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
	BeginEvent( sceneId )
		local missionInfo
		local rand = random( 2 )

		if rand == 1 then
			missionInfo = format( "    Làm ngß¶i mà không biªt %s, k¬ cä có là anh hùng cûng b¢ng không. Các hÕ ğßa %s ği, chuy¬n bÑc thß kªt giao này cho %s (%d, %d)",
				strNpcName, strNpcScene, strNpcName, nPosX, nPosZ )
		else
			missionInfo = format( "    %s (%d, %d) có danh tiªng trên giang h°, r¤t có lşi cho chúng ta, ği %s ğßa thß kªt giao cho %s",
				strNpcName, nPosX, nPosZ, strNpcScene, x600024_g_Pronoun[nGender] )
		end

		AddText( sceneId, missionInfo )
		AddText( sceneId, "    Các hÕ ğã nh§n nhi®m vø: " .. x600024_g_MissionName )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--·ÅÆú
--**********************************
function x600024_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
	CallScriptFunction( x600024_g_ExpandScript, "OnAbandon", sceneId, selfId )
end

--**********************************
--¼ÌĞø
--**********************************
function x600024_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600024_g_MissionName )
		AddText( sceneId, x600024_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600024_g_ScriptId, x600024_g_MissionId )
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600024_CheckSubmit( sceneId, selfId )
	local ret = CallScriptFunction( x600024_g_ExpandScript, "CheckSubmit", sceneId, selfId )
	return ret
end

--**********************************
--Ìá½»
--**********************************
function x600024_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600024_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	if x600024_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600024_g_ExpandScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x600024_OnKillObject( sceneId, selfId, objdataId, objId )	--²ÎÊıÒâË¼: ³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎïobjId
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x600024_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x600024_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--µ±Ëø¶¨mµt cái¶ÔÏó
--**********************************
function x600024_OnLockedTarget( sceneId, selfId, objId )
	if IsHaveMission( sceneId, selfId, x600024_g_MissionId ) < 1 then
		return		-- Ã»ÓĞ¸ÃÈÎÎñ
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600024_g_MissionId )		-- ği¬mµ½ÈÎÎñTÕi 20cáiÈÎÎñÖĞtoÕ ğµ ĞòÁĞºÅ
	if GetMissionParam( sceneId, selfId, misIndex, x600024_g_IsMissionOkFail ) > 0 then
		return		-- ¸ÃÈÎÎñÒÑÍê³É
	end

	local nNpcId, strNpcName, PosX, PosZ

	nNpcId = GetMissionParam( sceneId, selfId, misIndex, x600024_g_TargetNPC )
	_, strNpcName, _, PosX, PosZ = GetNpcInfoByNpcId(sceneId, nNpcId )

	-- ÔİÊ±²»±È½ÏÎ»ÖÃ
	if GetName( sceneId, objId ) == strNpcName then
		if DelItem( sceneId, selfId, x600024_g_MissionItem, 1 ) == 1 then
			-- ÉèÖÃÈÎÎñÒÑ¾­Íê³É
			SetMissionByIndex( sceneId, selfId, misIndex, x600024_g_IsMissionOkFail, 1 )
			-- ½«¸ÃÈÎÎñ´Ó x600024_OnLockedTarget ÊÂ¼şÁĞ±íÖĞÇå³ı,¸ÃÈÎÎñ²»ÔÙ¹ØĞÄ´ËÀàÊÂ¼ş
			ResetMissionEvent( sceneId, selfId, x600024_g_MissionId, 4 )

			local rand = random( 2 )
			local strText

			if rand == 1 then
				strText = format( "    D­ thôi, bang chü cüa quı bang chí khí chính nghîa cao h½n tr¶i xanh, có vi®c gì c¥n chúng ta giúp, dù có phäi nhäy vào lØa cûng không ch¯i t×" )
			else
				strText = format( "    Khách khí quá, ğßşc làm vi®c cho quı bang là vinh hÕnh cüa %s ta", strNpcName )
			end

			TAddText( sceneId, strText )
		end
	end
end
