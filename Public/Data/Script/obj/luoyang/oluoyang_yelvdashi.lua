--ÂåÑôNPC
--Ò®ÂÉ´óÊ¯
--ÆÕÍ¨

--½Å±¾ºÅ
x000031_g_scriptId = 000031

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000031_g_eventList={200099, 200100}
x000031_g_lifeeventList={713505,713564,713604}

x000031_g_RSMissionId = 101
x000031_g_ActivateMissionId = 23		-- ¼¤»îÌõ¼þ
x000031_g_SongXinScriptId = 006668		-- ËÍÐÅ
x000031_g_ShaGuaiScriptId = 006666		-- É±¹Ö
x000031_g_XunWuScriptId = 006667		-- Ñ°Îï

x000031_g_RoundStorytelling = {
		[0] = { misIndex = { 1039020 }, script = x000031_g_XunWuScriptId },
		[1] = { misIndex = { 1039021 }, script = x000031_g_XunWuScriptId },
		[2] = { misIndex = { 1039022 }, script = x000031_g_XunWuScriptId },
		[3] = { misIndex = { 1039023 }, script = x000031_g_XunWuScriptId },
		[4] = { misIndex = { 1039024 }, script = x000031_g_XunWuScriptId }}
			
x000031_g_SongXinMissionList = {
		[0] = { misIndex = { 1018050,1018056 }, script = x000031_g_SongXinScriptId },
		[1] = { misIndex = { 1018051,1018057,1018062 }, script = x000031_g_SongXinScriptId },
		[2] = { misIndex = { 1018052,1018058,1018063,1018067,1018071 }, script = x000031_g_SongXinScriptId },
		[3] = { misIndex = { 1018053,1018059,1018064,1018068,1018072,1018075 }, script = x000031_g_SongXinScriptId },
		[4] = { misIndex = { 1018054,1018060,1018065,1018069,1018073,1018076,1018078,1018080 }, script = x000031_g_SongXinScriptId },
		[5] = { misIndex = { 1018055,1018061,1018066,1018070,1018074,1018077,1018079,1018081,1018082,1018083,1018084 }, script = x000031_g_SongXinScriptId }}		
			
x000031_g_ShaGuaiMissionList = {
		[0] = { misIndex = { 1039000 }, script = x000031_g_XunWuScriptId },
		[1] = { misIndex = { 1039001 }, script = x000031_g_XunWuScriptId },
		[2] = { misIndex = { 1039002 }, script = x000031_g_XunWuScriptId },
		[3] = { misIndex = { 1039003 }, script = x000031_g_XunWuScriptId },
		[4] = { misIndex = { 1039004 }, script = x000031_g_XunWuScriptId },
		[5] = { misIndex = { 1039005 }, script = x000031_g_XunWuScriptId }}		


--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000031_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Hoàng ðª ði®n hÕ mu¯n chúng ta t¾i LÕc Dß½ng không phäi ð¬ ch½i" )

		local missionIndex = GetScriptIDByMissionID( sceneId, selfId, x000031_g_RSMissionId )
		if missionIndex ~= -1 then
			local missionName = TGetMissionName( missionIndex )
			if missionName ~= "Nhi®m vø cüa Tiêu Phong" and IsMissionHaveDone( sceneId, selfId, x000031_g_ActivateMissionId ) > 0 then
				AddNumText( sceneId, x000031_g_scriptId, "Nhi®m vø cüa Tiêu Phong", 3, 1 )
			end
		elseif IsMissionHaveDone( sceneId, selfId, x000031_g_ActivateMissionId ) > 0 then
			AddNumText( sceneId, x000031_g_scriptId, "Nhi®m vø cüa Tiêu Phong", 3, 1 )
		end

		for _, eventId in x000031_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
		end
		
		for i, eventId in x000031_g_lifeeventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end


	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000031_OnEventRequest( sceneId, selfId, targetId, eventId )
	for _, findId in x000031_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end
	
	for i, findId in x000031_g_lifeeventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x000031_g_scriptId )
			return
		end
	end

	local num = GetNumText()
	if num == 1 then										-- Ïô·åÈÎÎñ
		if IsHaveMission( sceneId, selfId, x000031_g_RSMissionId ) > 0 then
			x000031_NotifyFailBox( sceneId, selfId, targetId, "Các hÕ có nhi®m vø chßa hoàn thành, ðþi hoàn thành xong lÕi ðªn tìm tÕi hÕ." )
			return
		end

		-- ¼ì²âÊÇ·ñÂú×ãÈÎÎñ¼¤»îÌõ¼þ
		if IsMissionHaveDone( sceneId, selfId, x000031_g_ActivateMissionId ) <= 0 then
			return 0
		end

		--¿´ÏÂ½ñÌìµÄÏô·åÈÎÎñÊÇ²»ÊÇ×öÍê50´ÎÁË
		--begin modified by zhangguoxin 090208
		local nDayCount = GetMissionData(sceneId, selfId, MD_JQXH_XIAOFENG_LIMITI)
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
					AddText( sceneId, "Hôm nay các hÕ ðã g£p quá nhi«u chuy®n phi«n phÑc r°i, th§t xin l²i, ngày mai m¾i làm phi«n các hÕ næa v§y!" )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				return
			end
			
		else		-- ÐÂµÄÒ»Ìì
			SetMissionData(sceneId, selfId, MD_JQXH_XIAOFENG_LIMITI, 0)
		end

		local mission = x000031_g_RoundStorytelling[0];
		local relation = GetMissionData(sceneId, selfId, MD_RELATION_XIAOFENG)
		local playerlevel = GetLevel( sceneId, selfId )
		
		-- µÈ¼¶ÉÏÏÞ´¦Àí
		if playerlevel >= 100 then
			playerlevel = 90
		end
		
		playerlevel = floor( playerlevel / 10 ) * 10
		local randtype = random(100)
		if randtype <= 20 then
			if playerlevel == 40 then
				mission = x000031_g_SongXinMissionList[0];
			elseif playerlevel == 50 then
				mission = x000031_g_SongXinMissionList[1];
			elseif playerlevel == 60 then
				mission = x000031_g_SongXinMissionList[2];
			elseif playerlevel == 70 then
				mission = x000031_g_SongXinMissionList[3];
			elseif playerlevel == 80 then
				mission = x000031_g_SongXinMissionList[4];
			elseif playerlevel == 90 then
				mission = x000031_g_SongXinMissionList[5];			
			end
		elseif randtype <= 40 then
			if playerlevel == 40 then
				mission = x000031_g_ShaGuaiMissionList[0];
			elseif playerlevel == 50 then
				mission = x000031_g_ShaGuaiMissionList[1];
			elseif playerlevel == 60 then
				mission = x000031_g_ShaGuaiMissionList[2];
			elseif playerlevel == 70 then
				mission = x000031_g_ShaGuaiMissionList[3];
			elseif playerlevel == 80 then
				mission = x000031_g_ShaGuaiMissionList[4];
			elseif playerlevel == 90 then
				mission = x000031_g_ShaGuaiMissionList[5];			
			end
		elseif randtype <= 100 then
			if relation <= 999 then
				mission = x000031_g_RoundStorytelling[0];
			elseif relation <= 1999 then
				mission = x000031_g_RoundStorytelling[1];
			elseif relation <= 3999 then
				mission = x000031_g_RoundStorytelling[2];
			elseif relation <= 6499 then
				mission = x000031_g_RoundStorytelling[3];
			elseif relation <= 9999 then
				mission = x000031_g_RoundStorytelling[4];
			end
		end
				
		CallScriptFunction( mission.script, "OnDefaultEvent", sceneId, selfId, targetId, mission.misIndex[ random( getn(mission.misIndex) ) ] )		
		
		return
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x000031_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for _, findId in x000031_g_eventList do
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
function x000031_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for _, findId in x000031_g_eventList do
		if missionScriptId == findId then
			x000031_OnDefaultEvent( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x000031_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for _, findId in x000031_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x000031_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for _, findId in x000031_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000031_OnDie( sceneId, selfId, killerId )
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x000031_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--Ìá½»ÎïÆ·
--**********************************
function x000031_OnMissionCheck( sceneId, selfId, targetId, scriptId, index1, index2, index3, indexpet, missionIndex )
	
	for i, eventId in x000031_g_XunWuScriptId do
		
		if eventId == scriptId then
			CallScriptFunction( scriptId, "OnMissionCheck", sceneId, selfId, targetId, scriptId, index1, index2, index3, indexpet, missionIndex )
			return 1
		end
	end
		
end
