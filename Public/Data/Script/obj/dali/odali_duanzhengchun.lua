--¶ÎÕý´¾

--½Å±¾ºÅ
x002004_g_scriptId = 002004

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x002004_g_eventList={200002,200004,200080,200081,200087,200088,200092,200093,200099,200100}

x002004_g_RSMissionId = 101
x002004_g_ActivateMissionId = 8			-- ¼¤»îÌõ¼þ
x002004_g_SongXinScriptId = 006668		-- ËÍÐÅ
x002004_g_ShaGuaiScriptId = 006666		-- É±¹Ö
x002004_g_XunWuScriptId = 006667		-- Ñ°Îï

x002004_g_RoundStorytelling = {
		[0] = { misIndex = { 1039450 }, script = x002004_g_XunWuScriptId },
		[1] = { misIndex = { 1039451 }, script = x002004_g_XunWuScriptId },
		[2] = { misIndex = { 1039452 }, script = x002004_g_XunWuScriptId },
		[3] = { misIndex = { 1039453 }, script = x002004_g_XunWuScriptId },
		[4] = { misIndex = { 1039454 }, script = x002004_g_XunWuScriptId }}
			
x002004_g_SongXinMissionList = {
		[0] = { misIndex = { 1018000 }, script = x002004_g_SongXinScriptId },
		[1] = { misIndex = { 1018001 }, script = x002004_g_SongXinScriptId },
		[2] = { misIndex = { 1018002,1018008,1018014,1018020 }, script = x002004_g_SongXinScriptId },
		[3] = { misIndex = { 1018003,1018009,1018015,1018021 }, script = x002004_g_SongXinScriptId },
		[4] = { misIndex = { 1018004,1018010,1018016,1018022 }, script = x002004_g_SongXinScriptId },
		[5] = { misIndex = { 1018005,1018011,1018017,1018023 }, script = x002004_g_SongXinScriptId },
		[6] = { misIndex = { 1018006,1018012,1018018,1018024,1018027,1018028,1018031,1018033 }, script = x002004_g_SongXinScriptId },
		[7] = { misIndex = { 1018007,1018013,1018019,1018025,1018026,1018029,1018030,1018032 }, script = x002004_g_SongXinScriptId }}
			
x002004_g_ShaGuaiMissionList = {
		[0] = { misIndex = { 1039455 }, script = x002004_g_XunWuScriptId },
		[1] = { misIndex = { 1039456 }, script = x002004_g_XunWuScriptId },
		[2] = { misIndex = { 1039457 }, script = x002004_g_XunWuScriptId },
		[3] = { misIndex = { 1039458 }, script = x002004_g_XunWuScriptId },
		[4] = { misIndex = { 1039459 }, script = x002004_g_XunWuScriptId },
		[5] = { misIndex = { 1039460 }, script = x002004_g_XunWuScriptId },
		[6] = { misIndex = { 1039461 }, script = x002004_g_XunWuScriptId },
		[7] = { misIndex = { 1039462 }, script = x002004_g_XunWuScriptId }}


--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x002004_UpdateEventList( sceneId, selfId,targetId )
	local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "Cô nß½ng"
	else
		PlayerSex = "Thiªu hi®p"
	end
	
	BeginEvent(sceneId)	
		AddText(sceneId,"  "..PlayerName..PlayerSex.."#{OBJ_dali_0001}")
		
		local missionIndex = GetScriptIDByMissionID( sceneId, selfId, x002004_g_RSMissionId )
		if missionIndex ~= -1 then
			local missionName = TGetMissionName( missionIndex )
			if missionName ~= "Nhi®m vø Ðoàn Dñ" and IsMissionHaveDone( sceneId, selfId, x002004_g_ActivateMissionId ) > 0 then
				AddNumText( sceneId, x002004_g_scriptId, "Nhi®m vø Ðoàn Dñ", 3, 1 )
			end
		elseif IsMissionHaveDone( sceneId, selfId, x002004_g_ActivateMissionId ) > 0 then
			AddNumText( sceneId, x002004_g_scriptId, "Nhi®m vø Ðoàn Dñ", 3, 1 )
		end
		
		for i, eventId in x002004_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002004_OnDefaultEvent( sceneId, selfId,targetId )
	x002004_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002004_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x002004_g_eventList do
		if eventId == findId then			
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end
	
	local num = GetNumText()
	if num == 1 then										-- Nhi®m vø Ðoàn Dñ
		if IsHaveMission( sceneId, selfId, x002004_g_RSMissionId ) > 0 then
			x002004_NotifyFailBox( sceneId, selfId, targetId, "Ngß½i còn Nhi®m Vø Anh Hùng [ Nhi®m vø k¸ch tình ] chßa hoàn thành, khi nào xong hãy ðªn tìm ta." )
			return
		end
		
		-- ¼ì²âÊÇ·ñÂú×ãÈÎÎñ¼¤»îÌõ¼þ
		if IsMissionHaveDone( sceneId, selfId, x002004_g_ActivateMissionId ) <= 0 then
			return 0
		end
		
		--¿´ÏÂ½ñÌìµÄNhi®m vø Ðoàn DñÊÇ²»ÊÇ×öÍê50´ÎÁË
		--begin modified by zhangguoxin 090208
		local nDayCount = GetMissionData(sceneId, selfId, MD_JQXH_DUANYU_LIMITI)
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
					AddText( sceneId, "Hôm nay ta ðã làm phi«n ngß½i nhi«u, th§t áy náy. Ngß½i v« ði, ngày mai hãy quay lÕi." )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				return
			end
			
		else		-- ÐÂµÄÒ»Ìì
			SetMissionData(sceneId, selfId, MD_JQXH_DUANYU_LIMITI, 0)
		end

		local mission = x002004_g_RoundStorytelling[0];
		local relation = GetMissionData(sceneId, selfId, MD_RELATION_DUANYU)
		local playerlevel = GetLevel( sceneId, selfId )
		
		-- µÈ¼¶ÉÏÏÞ´¦Àí
		if playerlevel >= 100 then
			playerlevel = 90
		end
		
		playerlevel = floor( playerlevel / 10 ) * 10
		local randtype = random(100)
		
		-- ËÍÐÅÈÎÎñ
		if randtype <= 60 then			
			if playerlevel == 20 then
				mission = x002004_g_SongXinMissionList[0];
			elseif playerlevel == 30 then
				mission = x002004_g_SongXinMissionList[1];
			elseif playerlevel == 40 then
				mission = x002004_g_SongXinMissionList[2];
			elseif playerlevel == 50 then
				mission = x002004_g_SongXinMissionList[3];
			elseif playerlevel == 60 then
				mission = x002004_g_SongXinMissionList[4];
			elseif playerlevel == 70 then
				mission = x002004_g_SongXinMissionList[5];
			elseif playerlevel == 80 then
				mission = x002004_g_SongXinMissionList[6];
			elseif playerlevel == 90 then
				mission = x002004_g_SongXinMissionList[7];
			end
		-- É±¹ÖÈÎÎñ
		elseif randtype <= 95 then
			if playerlevel == 20 then
				mission = x002004_g_ShaGuaiMissionList[0];
			elseif playerlevel == 30 then
				mission = x002004_g_ShaGuaiMissionList[1];
			elseif playerlevel == 40 then
				mission = x002004_g_ShaGuaiMissionList[2];
			elseif playerlevel == 50 then
				mission = x002004_g_ShaGuaiMissionList[3];
			elseif playerlevel == 60 then
				mission = x002004_g_ShaGuaiMissionList[4];
			elseif playerlevel == 70 then
				mission = x002004_g_ShaGuaiMissionList[5];
			elseif playerlevel == 80 then
				mission = x002004_g_ShaGuaiMissionList[6];
			elseif playerlevel == 90 then
				mission = x002004_g_ShaGuaiMissionList[7];
			end
		-- Ñ°ÎïÈÎÎñ
		elseif randtype <= 100 then
			if relation <= 999 then
				mission = x002004_g_RoundStorytelling[0];
			elseif relation <= 1999 then
				mission = x002004_g_RoundStorytelling[1];
			elseif relation <= 3999 then
				mission = x002004_g_RoundStorytelling[2];
			elseif relation <= 6499 then
				mission = x002004_g_RoundStorytelling[3];
			elseif relation <= 9999 then
				mission = x002004_g_RoundStorytelling[4];
			end
		end
				
		CallScriptFunction( mission.script, "OnDefaultEvent", sceneId, selfId, targetId, mission.misIndex[ random( getn(mission.misIndex) ) ] )		
		
		return
	end
	
	
	
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x002004_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002004_g_eventList do
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
function x002004_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x002004_g_eventList do
		if missionScriptId == findId then
			x002004_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end	
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x002004_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end	
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x002004_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end	
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x002004_OnDie( sceneId, selfId, killerId )
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x002004_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--Ìá½»ÎïÆ·
--**********************************
function x002004_OnMissionCheck( sceneId, selfId, targetId, scriptId, index1, index2, index3, indexpet, missionIndex )
	
	for i, eventId in x002004_g_XunWuScriptId do
		
		if eventId == scriptId then
			CallScriptFunction( scriptId, "OnMissionCheck", sceneId, selfId, targetId, scriptId, index1, index2, index3, indexpet, missionIndex )
			return 1
		end
	end
		
end
