-- ´ßÕ®,Í¨ÖªÈ¡»õÈÎÎñ
--MisDescBegin
-- ½Å±¾ºÅ
x600020_g_ScriptId = 600020

--ÈÎÎñºÅ
x600020_g_MissionId = 1108

--Møc tiêu nhi®m vønpc
x600020_g_Name = "Mµc D¸ch"

--ÈÎÎñ¹éÀà
x600020_g_MissionKind = 50

--ĞÆng c¤p nhi®m vø 
x600020_g_MissionLevel = 10000

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x600020_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîĞúng¶¯Ì¬ÏÔÊ¾toÕ ğµ ÄÚÈİ,ÓÃÓÚTÕi ÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
x600020_g_IsMissionOkFail = 0							-- Nhi®m vø hoàn thành±ê¼Ç

--ÒÔÉÏĞúng¶¯Ì¬**************************************************************

--ÈÎÎñ±äÁ¿µÚmµt Î»ÓÃÀ´´æ´¢Ëæ»ú ği¬mµ½toÕ ğµ ½Å±¾ºÅ

--ÈÎÎñÎÄ±¾ÃèÊö
x600020_g_MissionName = "Nhi®m vø thß½ng nghi®p"
x600020_g_MissionInfo = "    Hôm nay ta mu¯n có %s, tìm lÕi ğây giúp ta!"			--ÈÎÎñÃèÊö
x600020_g_MissionTarget = "    Thông báo %n nhanh chóng %s. "							--Møc tiêu nhi®m vø
x600020_g_ContinueInfo = "    Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"					--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x600020_g_SubmitInfo = "    Sñ tình tiªn tri¬n nhß thª nào r°i?"							--Íê³ÉÎ´Ìá½»Ê±toÕ ğµ npc¶Ô»°
x600020_g_MissionComplete = "    Làm t¯t l¡m, r¤t t¯t r¤t t¯t. "					--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°

x600020_g_StrForePart = 5
x600020_g_Offset = 21													-- Suppose to 21, ±íÀïµÚ¼¸ÁĞ NPC toÕ ğµ Æ«ÒÆÁ¿
x600020_g_OffsetEx	= 251 										--±íÀïµÚ¼¸ÁĞ NPC toÕ ğµ Æ«ÒÆÁ¿À©³ä modi:lby20071126
x600020_g_MissionRound = 44

-- Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600020_g_CityMissionScript = 600001
x600020_g_MarketScript = 600017

x600020_g_StrList = { "Trä lÕi s¯ nş", "Ğªn l¤y hành" }

--ÈÎÎñ½±Àø

--MisDescEnd

x600020_g_Pronoun = {}
x600020_g_Pronoun[0] = "muµi ¤y "
x600020_g_Pronoun[1] = "huynh ¤y "

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x600020_OnDefaultEvent( sceneId, selfId, targetId )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	if GetName( sceneId, targetId ) ~= x600020_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600020_g_MissionId ) > 0 then
		--·¢ËÍÈÎÎñĞèÇótoÕ ğµ ĞÅÏ¢
		local bDone = x600020_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600020_g_SubmitInfo
		else
			strText = x600020_g_ContinueInfo
		end

		--·¢ËÍÈÎÎñĞèÇótoÕ ğµ ĞÅÏ¢
		BeginEvent( sceneId )
			AddText( sceneId, x600020_g_MissionName )
			AddText( sceneId, strText )
		EndEvent( )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600020_g_ScriptId, x600020_g_MissionId, bDone )
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x600020_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600020_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600020_OnAccept( sceneId, selfId, targetId )
		end
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x600020_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600020_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

   --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600020_g_MissionId ) > 0 then
		AddNumText( sceneId, x600020_g_ScriptId, x600020_g_MissionName,3,-1 )
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x600020_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600020_g_MarketScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--¸ù¾İÍæ¼ÒµÈc¤p ği¬mµ½¶ÔÓ¦MissionNPC_HashTable.txtÖĞtoÕ ğµ Ñ¡ÔñĞÅÏ¢
--**********************************
function x600020_GetMissionNPCKey( sceneId, selfId )
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

	--return nPos + x600020_g_Offset
	elseif	nPlayerLevel < 100 then					-- 85 ~ 99 Level
		nPos = 3
	elseif nPlayerLevel < 120 then					-- 100 ~ 119 Level	modi:lby20071126
		nPos = 0
	else 																		-- >=114 Level
		nPos = 1
		
	end
	
	if nPlayerLevel < 100 then
		return nPos + x600020_g_Offset
	else
		return nPos + x600020_g_OffsetEx
	end
	
end

--**********************************
--Tiªp thø
--**********************************
function x600020_OnAccept( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600020_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	if GetLevel( sceneId, selfId ) < 40 then
		CallScriptFunction( x600020_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Không ğü ğÆng c¤p" )
		return
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId, selfId, x600020_g_MissionId, x600020_g_ScriptId, 0, 0, 0 )	-- kill¡¢area¡¢item
	if IsHaveMission( sceneId, selfId, x600020_g_MissionId ) <= 0 then
		return
	end

	SetMissionEvent( sceneId, selfId, x600020_g_MissionId, 4 ) -- ×¢²á x600020_OnLockedTarget ÊÂ¼ş

	CallScriptFunction( x600020_g_MarketScript, "OnAccept", sceneId, selfId, targetId, x600020_g_ScriptId )

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600020_g_MissionId )
	local nNpcId, strNpcName, strNpcScene, _, nPosX, nPosZ, _, nGender = GetOneMissionNpc( x600020_GetMissionNPCKey( sceneId, selfId ) )

	SetMissionByIndex( sceneId, selfId, misIndex, x600020_g_StrForePart, nNpcId )

	--ÏÔÊ¾ÄÚÈİ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
	BeginEvent( sceneId )
		local missionInfo
		local rand = random(2)

		SetMissionByIndex( sceneId, selfId, misIndex, x600020_g_StrForePart + 1, rand - 1 )

		if rand == 1 then
			missionInfo = format( "    %s %s (%d, %d) ğã nş Bän Thành, nhi®m vø cüa các hÕ l¥n này là nh¡n v¾i %s, bäo %s nhanh chóng trä chúng.",
				strNpcScene, strNpcName, nPosX, nPosZ, x600020_g_Pronoun[nGender], x600020_g_Pronoun[nGender] )
		else
			missionInfo = format( "    %s %s (%d, %d) ğã trä ti«n, phi«n các hÕ thông báo cho %s ğªn l¤y hàng",
				strNpcScene, strNpcName, nPosX, nPosZ, x600020_g_Pronoun[nGender] )
		end

		AddText( sceneId, missionInfo )
		AddText( sceneId, "    Các hÕ ğã nh§n nhi®m vø: " .. x600020_g_MissionName )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--·ÅÆú
--**********************************
function x600020_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
	CallScriptFunction( x600020_g_MarketScript, "OnAbandon", sceneId, selfId )
end

--**********************************
--¼ÌĞø
--**********************************
function x600020_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600020_g_MissionName )
		AddText( sceneId, x600020_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600020_g_ScriptId, x600020_g_MissionId )
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600020_CheckSubmit( sceneId, selfId )
	local ret = CallScriptFunction( x600020_g_MarketScript, "CheckSubmit", sceneId, selfId )
	return ret
end

--**********************************
--Ìá½»
--**********************************
function x600020_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600020_g_Name then		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		return
	end

	if x600020_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600020_g_MarketScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x600020_OnKillObject( sceneId, selfId, objdataId, objId )	--²ÎÊıÒâË¼: ³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎïobjId
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x600020_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x600020_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--µ±Ëø¶¨mµt cái¶ÔÏó
--**********************************
function x600020_OnLockedTarget( sceneId, selfId, objId )
	if IsHaveMission( sceneId, selfId, x600020_g_MissionId ) < 1 then
		return		-- Ã»ÓĞ¸ÃÈÎÎñ
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600020_g_MissionId )		-- ği¬mµ½ÈÎÎñTÕi 20cáiÈÎÎñÖĞtoÕ ğµ ĞòÁĞºÅ
	if GetMissionParam( sceneId, selfId, misIndex, x600020_g_IsMissionOkFail ) > 0 then
		return		-- ¸ÃÈÎÎñÒÑÍê³É
	end

	local nNpcId
	local strNpcName
	local PosX
	local PosZ

	nNpcId = GetMissionParam( sceneId, selfId, misIndex, x600020_g_StrForePart )
	_, strNpcName, _, PosX, PosZ = GetNpcInfoByNpcId(sceneId, nNpcId )

	-- ÔİÊ±²»±È½ÏÎ»ÖÃ
	if GetName( sceneId, objId ) == strNpcName then
		local misType
		misType = GetMissionParam( sceneId, selfId, misIndex, x600020_g_StrForePart + 1 )
		misType = misType + 1

		-- ÉèÖÃÈÎÎñÒÑ¾­Íê³É
		SetMissionByIndex( sceneId, selfId, misIndex, x600020_g_IsMissionOkFail, 1 )
		-- ½«¸ÃÈÎÎñ´Ó x600020_OnLockedTarget ÊÂ¼şÁĞ±íÖĞÇå³ı,¸ÃÈÎÎñ²»ÔÙ¹ØĞÄ´ËÀàÊÂ¼ş
		ResetMissionEvent( sceneId, selfId, x600020_g_MissionId, 4 )
		if misType == 1 then
			TAddText( sceneId, "    T¯t t¯t, xin chuy¬n l¶i cho ngß¶i phø trách quän lı cØa hàng Mµc D¸ch, sau ğó s¨ mang ti«n hàng ğªn" )
		else
			TAddText( sceneId, "    T¯t t¯t, s¨ cho ngß¶i ğánh xe ğªn l¤y hàng ngay" )
		end
	end
end
