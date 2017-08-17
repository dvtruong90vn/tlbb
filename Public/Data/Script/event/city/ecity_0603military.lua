
-- ¹ú·ÀÈÎÎñ,ËÍ½»Çé±¨
--MisDescBegin
-- ½Å±¾ºÅ
x600033_g_ScriptId = 600033

--ÈÎÎñºÅ
x600033_g_MissionId = 1109

--Møc tiêu nhi®m vønpc
x600033_g_Name = "Võ ÐÕi Uy"

--ÈÎÎñ¹éÀà
x600033_g_MissionKind = 50

--ÐÆng c¤p nhi®m vø 
x600033_g_MissionLevel = 10000

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x600033_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîÐúng¶¯Ì¬ÏÔÊ¾toÕ ðµ ÄÚÈÝ,ÓÃÓÚTÕi ÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö
x600033_g_IsMissionOkFail = 0							-- Nhi®m vø hoàn thành±ê¼Ç

--ÒÔÉÏÐúng¶¯Ì¬**************************************************************

--ÈÎÎñ±äÁ¿µÚmµt Î»ÓÃÀ´´æ´¢Ëæ»ú ði¬mµ½toÕ ðµ ½Å±¾ºÅ
--ÈÎÎñÎÄ±¾ÃèÊö
x600033_g_MissionName = "Chuy¬n giao tình báo"
x600033_g_MissionInfo = ""													--ÈÎÎñÃèÊö
x600033_g_MissionTarget = "    Tình báo quan tr÷ng này, c¥n các hÕ c¤p t¯c truy«n ðªn %n, kh¦n c¤p kh¦n c¤p. "	--Møc tiêu nhi®m vø
x600033_g_ContinueInfo = "    Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"				--Î´Hoàn t¤t nhi®m vøtoÕ ðµ npc¶Ô»°
x600033_g_MissionComplete = "    Làm t¯t l¡m, r¤t t¯t r¤t t¯t. "			--Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°

x600033_g_MissionRound = 79

-- Í¨ÓÃThành ph¯ ÈÎÎñ½Å±¾
x600033_g_CityMissionScript = 600001
x600033_g_MilitaryScript = 600030

x600033_g_StrForePart=7

--MisDescEnd

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x600033_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	
	if IsHaveMission( sceneId, selfId, x600033_g_MissionId ) > 0 then
		--  ðÕt ðßþcµ±Ç°Ñ¡ÖÐtoÕ ðµ NpctoÕ ðµ Tên
		local szCurNpc = GetName(sceneId,targetId)
		
		-- ÈÎÎñÖÐ¼ÇÂ¼toÕ ðµ NpctoÕ ðµ Tên
		local misIndex = GetMissionIndexByID(sceneId,selfId,x600033_g_MissionId)
		local nNpcId = GetMissionParam(sceneId, selfId, misIndex, 7)
		
		local szNpcName = ""
		if nNpcId > 0  then
			_,szNpcName = GetNpcInfoByNpcId(sceneId,nNpcId)
			
			if szCurNpc == szNpcName   then  -- ÕÒ¶ÔÈËÁË
				BeginEvent( sceneId )
					AddText( sceneId, "#YChuy¬n giao tình báo#W" )
					AddText( sceneId, "  Ðªn k¸p th¶i quá, ta s¨ s¡p ð£t hành ðµng ngay ðây" )
				EndEvent()
				DispatchEventList( sceneId, selfId, targetId )
				
				-- ÉèÖÃNhi®m vø hoàn thành±ê¼Ç
				SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
				
				-- TÕi ÕâÀïÉ¾³ýÇé±¨
				DelItem(sceneId, selfId, 40004255, 1)
				
				return
			end
		end
	end
	
	if GetName( sceneId, targetId ) ~= x600033_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600033_g_MissionId ) > 0 then
		--·¢ËÍÈÎÎñÐèÇótoÕ ðµ ÐÅÏ¢
		BeginEvent( sceneId )
			AddText( sceneId, x600033_g_MissionName )
			AddText( sceneId, x600033_g_ContinueInfo )
		EndEvent()
		local bDone = x600033_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600033_g_ScriptId, x600033_g_MissionId, bDone )
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x600033_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600033_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600033_OnAccept( sceneId, selfId, targetId )
		end
	end
	
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x600033_OnEnumerate( sceneId, selfId, targetId )

	if GetName( sceneId, targetId ) ~= x600033_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end

   --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600033_g_MissionId ) > 0 then
		AddNumText( sceneId, x600033_g_ScriptId, x600033_g_MissionName, 2 )
	end
	
end

--**********************************
--Tiªp thø
--**********************************
function x600033_OnAccept( sceneId, selfId, targetId )
	
	if GetName( sceneId, targetId ) ~= x600033_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end
	
	-- ÅÐ¶ÏÍæ¼ÒµÈc¤p,È»ºó¸ù¾ÝµÈc¤pÑ¡ÔñÊ¹ÓÃ±íÖÐtoÕ ðµ ÄÄmµt ÁÐ
	local nLevel = GetLevel(sceneId, selfId)
	local nNpcId = 0
	local szNpcName = ""
	local szScene = ""
	local nScene = 0
	local nPosX = 0
	local nPosZ = 0
	local szNpcDesc =""
	local nSex = 0

	if nLevel >= 40 and nLevel <=54   then
		nNpcId,szNpcName,szScene,nScene,nPosX,nPosZ,szNpcDesc,nSex 
				= GetOneMissionNpc(26)
	elseif nLevel >= 55 and nLevel <= 69   then
		nNpcId,szNpcName,szScene,nScene,nPosX,nPosZ,szNpcDesc,nSex 
				= GetOneMissionNpc(27)
	elseif nLevel >= 70 and nLevel <= 84   then
		nNpcId,szNpcName,szScene,nScene,nPosX,nPosZ,szNpcDesc,nSex 
				= GetOneMissionNpc(28)
	elseif nLevel >= 85 and nLevel <= 99   then			--modi:lby20071126ÎªÁË±£³Ömµt Ñù·ç¸ñ
		nNpcId,szNpcName,szScene,nScene,nPosX,nPosZ,szNpcDesc,nSex 
				= GetOneMissionNpc(29)
		
	elseif nLevel >= 100 and nLevel <= 114   then
		nNpcId,szNpcName,szScene,nScene,nPosX,nPosZ,szNpcDesc,nSex 
				= GetOneMissionNpc(253)
	elseif nLevel >= 115 and nLevel <= 150   then
		nNpcId,szNpcName,szScene,nScene,nPosX,nPosZ,szNpcDesc,nSex 
				= GetOneMissionNpc(254)	
				
	end
	
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId, selfId, x600033_g_MissionId, x600033_g_ScriptId, 0, 0, 0 )	-- kill¡¢area¡¢item
	if IsHaveMission( sceneId, selfId, x600033_g_MissionId ) <= 0 then
		return
	end

	-- ÉèÖÃCái này ÈÎÎñC¥n ¹Ø×¢NPC
	SetMissionEvent( sceneId,selfId, x600033_g_MissionId, 4)
	
	-- ¼ÇÂ¼ÏÂËæ»úÑ¡ÖÐtoÕ ðµ NpcId
	local misIndex = GetMissionIndexByID(sceneId,selfId,x600033_g_MissionId)
	
	SetMissionByIndex(sceneId, selfId, misIndex, 7, nNpcId)

	CallScriptFunction( x600033_g_MilitaryScript, "OnAccept", sceneId, selfId, targetId, x600033_g_ScriptId )

	-- ¸øÍæ¼ÒÌí¼ÓÏà¹ØtoÕ ðµ ÈÎÎñÎïÆ·
	BeginAddItem( sceneId )
		AddItem( sceneId, 40004255, 1 )
	local ret = EndAddItem( sceneId, selfId )
	if ret <= 0 then 
		return
	end
	AddItemListToHuman(sceneId,selfId)
	
	--ÏÔÊ¾ÄÚÈÝ¸æËßÍæ¼ÒÒÑ¾­Tiªp thøÁËÈÎÎñ
	BeginEvent( sceneId )
	local missionInfo = "#r#rCác hÕ mau chuy¬n giao bän tình báo này cho ".. szScene.. szNpcName
		AddText( sceneId, "    Các hÕ ðã nh§n nhi®m vø: " .. x600033_g_MissionName )
		AddText( sceneId, missionInfo )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x600033_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600033_g_MilitaryScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x600033_CheckSubmit( sceneId, selfId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600033_g_MissionId )
	if  GetMissionParam(sceneId, selfId, misIndex, 0) >0  then
		return 1
	end 
	return 0
end

--**********************************
--·ÅÆúÈÎÎñ
--**********************************
function x600033_OnAbandon( sceneId, selfId )

	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
	CallScriptFunction( x600033_g_MilitaryScript, "OnAbandon", sceneId, selfId )
	
	-- É¾³ýÈÎÎñµÀ¾ß
	DelItem(sceneId, selfId, 40004255, 1)
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x600033_OnKillObject( sceneId, selfId, objdataId ,objId )

end

--**********************************
--¼ÌÐø
--**********************************
function x600033_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600033_g_MissionName )
		AddText( sceneId, x600033_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600033_g_ScriptId, x600033_g_MissionId )
end

--**********************************
--Ìá½»
--**********************************
function x600033_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600033_g_Name then		--ÅÐ¶Ï¸ÃnpcÐúng·ñÐúng¶ÔÓ¦ÈÎÎñtoÕ ðµ npc
		return
	end
	
	if x600033_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600033_g_MilitaryScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
		-- É¾³ýÈÎÎñÎïÆ·
		-- DelItem(sceneId, selfId, 40004255, 1)
	end
end

--**********************************
-- 
--**********************************
function x600033_OnLockedTarget( sceneId, selfId, targetId, missionIndex )

	--  ðÕt ðßþcµ±Ç°Ñ¡ÖÐtoÕ ðµ NpctoÕ ðµ Tên
	local szCurNpc = GetName(sceneId,targetId)
	
	-- ÈÎÎñÖÐ¼ÇÂ¼toÕ ðµ NpctoÕ ðµ Tên
	local misIndex = GetMissionIndexByID(sceneId,selfId,x600033_g_MissionId)
	local nNpcId = GetMissionParam(sceneId, selfId, misIndex, 7)
	
	local szNpcName = ""
	_,szNpcName = GetNpcInfoByNpcId(sceneId,nNpcId)
	
	if szCurNpc == szNpcName   then  -- ÕÒ¶ÔÈËÁË
		TAddNumText(sceneId, x600033_g_ScriptId, x600033_g_MissionName, 2, -1,x600033_g_ScriptId);
		TDispatchEventList(sceneId, selfId, targetId)
		return 1
	end
	return 0
end

--**********************************
-- x600033_OnEventRequest
--**********************************
function x600033_OnEventRequest( sceneId, selfId, targetId, eventId )
	--PrintStr("x600033_OnEventRequest")
end

