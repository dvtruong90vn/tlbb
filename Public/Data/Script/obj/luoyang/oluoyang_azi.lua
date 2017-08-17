--ÂåÑôNPC
--°¢×Ï
--Ö÷Òª

--½Å±¾ºÅ
x000016_g_scriptId = 000016

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000016_g_eventList={200099,200100}

x000016_g_RSMissionId = 101
x000016_g_ActivateMissionId = 32			-- ¼¤»îÌõ¼þ
x000016_g_SongXinScriptId = 006668		-- ËÍÐÅ
x000016_g_ShaGuaiScriptId = 006666		-- É±¹Ö
x000016_g_XunWuScriptId = 006667			-- Ñ°Îï

x000016_g_RoundStorytelling = {
		[0] = { misIndex = { 1039250 }, script = x000016_g_XunWuScriptId },
		[1] = { misIndex = { 1039251 }, script = x000016_g_XunWuScriptId },
		[2] = { misIndex = { 1039252 }, script = x000016_g_XunWuScriptId },
		[3] = { misIndex = { 1039253 }, script = x000016_g_XunWuScriptId },
		[4] = { misIndex = { 1039254 }, script = x000016_g_XunWuScriptId }}
			
x000016_g_SongXinMissionList = {
		[0] = { misIndex = { 1018500 }, script = x000016_g_SongXinScriptId },
		[1] = { misIndex = { 1018501 }, script = x000016_g_SongXinScriptId },
		[2] = { misIndex = { 1018502 }, script = x000016_g_SongXinScriptId },
		[3] = { misIndex = { 1018503 }, script = x000016_g_SongXinScriptId },
		[4] = { misIndex = { 1018504 }, script = x000016_g_SongXinScriptId }}		
			
x000016_g_ShaGuaiMissionList = {
		[0] = { misIndex = { 1039255 }, script = x000016_g_XunWuScriptId },
		[1] = { misIndex = { 1039256 }, script = x000016_g_XunWuScriptId },
		[2] = { misIndex = { 1039257 }, script = x000016_g_XunWuScriptId },
		[3] = { misIndex = { 1039258 }, script = x000016_g_XunWuScriptId },
		[4] = { misIndex = { 1039259 }, script = x000016_g_XunWuScriptId }}


--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000016_UpdateEventList( sceneId, selfId,targetId )
		
	local PlayerName = GetName( sceneId, selfId )
	local PlayerSex = GetSex( sceneId, selfId )
	if PlayerSex == 0 then
		PlayerSex = "Cô nß½ng"
	else
		PlayerSex = "Thiªu hi®p"
	end

	BeginEvent( sceneId )
		AddText(sceneId,"#{OBJ_luoyang_0009}")

		local missionIndex = GetScriptIDByMissionID( sceneId, selfId, x000016_g_RSMissionId )
		if missionIndex ~= -1 then
			local missionName = TGetMissionName( missionIndex )
			if missionName ~= "Nhi®m vø A TØ" and IsMissionHaveDone( sceneId, selfId, x000016_g_ActivateMissionId ) > 0 then
				AddNumText( sceneId, x000016_g_scriptId, "Nhi®m vø A TØ", 3, 1 )
			end
		elseif IsMissionHaveDone( sceneId, selfId, x000016_g_ActivateMissionId ) > 0 then
			AddNumText( sceneId, x000016_g_scriptId, "Nhi®m vø A TØ", 3, 1 )
		end

		for _, eventId in x000016_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
		end
					
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000016_OnDefaultEvent( sceneId, selfId,targetId )
	x000016_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000016_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x000016_g_eventList do
		if eventId == findId then			
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end	
	
	local num = GetNumText()
	if num == 1 then										-- Nhi®m vø A TØ
		if IsHaveMission( sceneId, selfId, x000016_g_RSMissionId ) > 0 then
			x000016_NotifyFailBox( sceneId, selfId, targetId, "Ngß½i vçn còn nhi®m vø anh hùng chßa hoàn thành, khi nào hoàn thành xong hãy ðªn tìm ta..." )
			return
		end
		
		-- ¼ì²âÊÇ·ñÂú×ãÈÎÎñ¼¤»îÌõ¼þ
		if IsMissionHaveDone( sceneId, selfId, x000016_g_ActivateMissionId ) <= 0 then
			return 0
		end
		
		--¿´ÏÂ½ñÌìµÄNhi®m vø A TØÊÇ²»ÊÇ×öÍê50´ÎÁË
		--begin modified by zhangguoxin 090208
		local nDayCount = GetMissionData(sceneId, selfId, MD_JQXH_AZI_LIMITI)
		local nCount = 		floor(nDayCount/100000)
		local nTime = 		mod(nDayCount,100000)
		--local nDayTime = 	floor(nTime/100)	--ÉÏÒ»´Î½»ÈÎÎñµÄÊ±¼ä(ÌìÊý)
		local nDayTime = 	nTime								--ÉÏÒ»´Î½»ÈÎÎñµÄÊ±¼ä(ÌìÊý)
		
		--local CurTime = GetHourTime()				--µ±Ç°Ê±¼ä
		local CurTime = GetDayTime()					--µ±Ç°Ê±¼ä
		--local CurDaytime = floor(CurTime/100)	--µ±Ç°Ê±¼ä(Ìì)
		local CurDaytime = CurTime							--µ±Ç°Ê±¼ä(Ìì)
		--end modified by zhangguoxin 090208
		
		if nDayTime == CurDaytime  then -- µ±Ìì
			if nCount >= 50  then
				BeginEvent( sceneId )
					AddText( sceneId, "Hôm nay ta ðã làm phi«n ngß½i nhi«u, th§t áy náy. Ngß½i v« ði, mai hãy quay lÕi..." )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				return
			end
			
		else		-- ÐÂµÄÒ»Ìì
			SetMissionData(sceneId, selfId, MD_JQXH_AZI_LIMITI, 0)
		end

		local mission = x000016_g_RoundStorytelling[0];
		local relation = GetMissionData(sceneId, selfId, MD_RELATION_AZI)
		local playerlevel = GetLevel( sceneId, selfId )
		
		-- µÈ¼¶ÉÏÏÞ´¦Àí
		if playerlevel >= 100 then
			playerlevel = 90
		end
		
		playerlevel = floor( playerlevel / 10 ) * 10
		local randtype = random(100)
		
		-- ËÍÐÅÈÎÎñ
		if randtype <= 60 then
			if playerlevel == 50 then
				mission = x000016_g_SongXinMissionList[0];
			elseif playerlevel == 60 then
				mission = x000016_g_SongXinMissionList[1];
			elseif playerlevel == 70 then
				mission = x000016_g_SongXinMissionList[2];
			elseif playerlevel == 80 then
				mission = x000016_g_SongXinMissionList[3];
			elseif playerlevel == 90 then
				mission = x000016_g_SongXinMissionList[4];			
			end
		-- É±¹ÖÈÎÎñ
		elseif randtype <= 95 then
			if playerlevel == 50 then
				mission = x000016_g_ShaGuaiMissionList[0];
			elseif playerlevel == 60 then
				mission = x000016_g_ShaGuaiMissionList[1];
			elseif playerlevel == 70 then
				mission = x000016_g_ShaGuaiMissionList[2];
			elseif playerlevel == 80 then
				mission = x000016_g_ShaGuaiMissionList[3];
			elseif playerlevel == 90 then
				mission = x000016_g_ShaGuaiMissionList[4];			
			end
		-- Ñ°ÎïÈÎÎñ
		elseif randtype <= 100 then
			if relation <= 999 then
				mission = x000016_g_RoundStorytelling[0];
			elseif relation <= 1999 then
				mission = x000016_g_RoundStorytelling[1];
			elseif relation <= 3999 then
				mission = x000016_g_RoundStorytelling[2];
			elseif relation <= 6499 then
				mission = x000016_g_RoundStorytelling[3];
			elseif relation <= 9999 then
				mission = x000016_g_RoundStorytelling[4];
			end
		end
				
		CallScriptFunction( mission.script, "OnDefaultEvent", sceneId, selfId, targetId, mission.misIndex[ random( getn(mission.misIndex) ) ] )		
		
		return
	end	
	
	
	
	
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x000016_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000016_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end	
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x000016_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x000016_g_eventList do
		if missionScriptId == findId then
			x000016_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end	
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x000016_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000016_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end	
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x000016_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000016_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end	
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000016_OnDie( sceneId, selfId, killerId )
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x000016_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--Ìá½»ÎïÆ·
--**********************************
function x000016_OnMissionCheck( sceneId, selfId, targetId, scriptId, index1, index2, index3, indexpet, missionIndex )
	
	for i, eventId in x000016_g_XunWuScriptId do
		
		if eventId == scriptId then
			CallScriptFunction( scriptId, "OnMissionCheck", sceneId, selfId, targetId, scriptId, index1, index2, index3, indexpet, missionIndex )
			return 1
		end
	end
		
end
