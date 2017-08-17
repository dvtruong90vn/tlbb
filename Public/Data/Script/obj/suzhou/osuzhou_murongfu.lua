--ËÕÖÝNPC
--Ä½ÈÝ¸´
--Ö÷½Ç

--½Å±¾ºÅ
x001015_g_scriptId = 001015

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x001015_g_eventList={ 200013, 200085, 200099, 200100 }

x001015_g_RSMissionId = 101
x001015_g_ActivateMissionId = 37			-- ¼¤»îÌõ¼þ
x001015_g_SongXinScriptId = 006668		-- ËÍÐÅ
x001015_g_ShaGuaiScriptId = 006666		-- É±¹Ö
x001015_g_XunWuScriptId = 006667			-- Ñ°Îï

x001015_g_RoundStorytelling = {
		[0] = { misIndex = { 1039300 }, script = x001015_g_XunWuScriptId },
		[1] = { misIndex = { 1039301 }, script = x001015_g_XunWuScriptId },
		[2] = { misIndex = { 1039302 }, script = x001015_g_XunWuScriptId },
		[3] = { misIndex = { 1039303 }, script = x001015_g_XunWuScriptId },
		[4] = { misIndex = { 1039304 }, script = x001015_g_XunWuScriptId }}
			
x001015_g_SongXinMissionList = {
		[0] = { misIndex = { 1018200,1018204,1018208,1018212,1018216,1018220,1018224,1018228,1018232 }, script = x001015_g_SongXinScriptId },
		[1] = { misIndex = { 1018201,1018205,1018209,1018213,1018217,1018221,1018225,1018229,1018233 }, script = x001015_g_SongXinScriptId },
		[2] = { misIndex = { 1018202,1018206,1018210,1018214,1018218,1018222,1018226,1018230,1018234 }, script = x001015_g_SongXinScriptId },
		[3] = { misIndex = { 1018203,1018207,1018211,1018215,1018219,1018223,1018227,1018231,1018235 }, script = x001015_g_SongXinScriptId }}
					
x001015_g_ShaGuaiMissionList = {
		[0] = { misIndex = { 1039305,1039309 }, script = x001015_g_XunWuScriptId },
		[1] = { misIndex = { 1039306,1039310 }, script = x001015_g_XunWuScriptId },
		[2] = { misIndex = { 1039307,1039311 }, script = x001015_g_XunWuScriptId },
		[3] = { misIndex = { 1039308,1039312 }, script = x001015_g_XunWuScriptId }}
			

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x001015_UpdateEventList( sceneId, selfId,targetId )
	
	local PlayerName = GetName( sceneId, selfId )
	local PlayerSex = GetSex( sceneId, selfId )
	if PlayerSex == 0 then
		PlayerSex = " Cô nß½ng"
	else
		PlayerSex = " Thiªu hi®p"
	end

	BeginEvent( sceneId )
		AddText(sceneId,"Xin chào"..PlayerSex..", ngß½i có g£p mµt v¸ LÕt Ma Th± Ph°n · g¥n ðây không?");

		local missionIndex = GetScriptIDByMissionID( sceneId, selfId, x001015_g_RSMissionId )
		if missionIndex ~= -1 then
			local missionName = TGetMissionName( missionIndex )
			if missionName ~= "Nhi®m vø Mµ Dung Phøc" and IsMissionHaveDone( sceneId, selfId, x001015_g_ActivateMissionId ) > 0 then
				AddNumText( sceneId, x001015_g_scriptId, "Nhi®m vø Mµ Dung Phøc", 3, 1 )
			end
		elseif IsMissionHaveDone( sceneId, selfId, x001015_g_ActivateMissionId ) > 0 then
			AddNumText( sceneId, x001015_g_scriptId, "Nhi®m vø Mµ Dung Phøc", 3, 1 )
		end

		for _, eventId in x001015_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
		end
					
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )	
	
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001015_OnDefaultEvent( sceneId, selfId,targetId )
	x001015_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x001015_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x001015_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
		
	local num = GetNumText()
	if num == 1 then										-- Ä½ÈÝ¸´ÈÎÎñ
		if IsHaveMission( sceneId, selfId, x001015_g_RSMissionId ) > 0 then
			x001015_NotifyFailBox( sceneId, selfId, targetId, "Các hÕ vçn còn Nhi®m vø k¸ch tình liên quan chua hoàn thành. Hãy ðªn sau khi các hÕ ðã hoàn thành nhi®m vø liên quan" )
			return
		end
		
		-- ¼ì²âÊÇ·ñÂú×ãÈÎÎñ¼¤»îÌõ¼þ
		if IsMissionHaveDone( sceneId, selfId, x001015_g_ActivateMissionId ) <= 0 then
			return 0
		end
		
		--¿´ÏÂ½ñÌìµÄÄ½ÈÝ¸´ÈÎÎñÊÇ²»ÊÇ×öÍê50´ÎÁË
		--begin modified by zhangguoxin 090208
		local nDayCount = GetMissionData(sceneId, selfId, MD_JQXH_MURONGFU_LIMITI)
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
					AddText( sceneId, "Hôm nay bÕn ðã g£p nhi«u r¡c r¯i, hãi tr· lÕi vào ngày mai" )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				return
			end
			
		else		-- ÐÂµÄÒ»Ìì
			SetMissionData(sceneId, selfId, MD_JQXH_MURONGFU_LIMITI, 0)
		end

		local mission = x001015_g_RoundStorytelling[0];
		local relation = GetMissionData(sceneId, selfId, MD_RELATION_MURONGFU)
		local playerlevel = GetLevel( sceneId, selfId )
		
		-- µÈ¼¶ÉÏÏÞ´¦Àí
		if playerlevel >= 100 then
			playerlevel = 90
		end
		
		playerlevel = floor( playerlevel / 10 ) * 10
		local randtype = random(100)
		
		-- ËÍÐÅÈÎÎñ
		if randtype <= 60 then
			if playerlevel == 60 then
				mission = x001015_g_SongXinMissionList[0];
			elseif playerlevel == 70 then
				mission = x001015_g_SongXinMissionList[1];
			elseif playerlevel == 80 then
				mission = x001015_g_SongXinMissionList[2];
			elseif playerlevel == 90 then
				mission = x001015_g_SongXinMissionList[3];			
			end
		-- É±¹ÖÈÎÎñ
		elseif randtype <= 95 then
			if playerlevel == 60 then
				mission = x001015_g_ShaGuaiMissionList[0];
			elseif playerlevel == 70 then
				mission = x001015_g_ShaGuaiMissionList[1];
			elseif playerlevel == 80 then
				mission = x001015_g_ShaGuaiMissionList[2];
			elseif playerlevel == 90 then
				mission = x001015_g_ShaGuaiMissionList[3];			
			end
		-- Ñ°ÎïÈÎÎñ
		elseif randtype <= 100 then
			if relation <= 999 then
				mission = x001015_g_RoundStorytelling[0];
			elseif relation <= 1999 then
				mission = x001015_g_RoundStorytelling[1];
			elseif relation <= 3999 then
				mission = x001015_g_RoundStorytelling[2];
			elseif relation <= 6499 then
				mission = x001015_g_RoundStorytelling[3];
			elseif relation <= 9999 then
				mission = x001015_g_RoundStorytelling[4];
			end
		end
				
		CallScriptFunction( mission.script, "OnDefaultEvent", sceneId, selfId, targetId, mission.misIndex[ random( getn(mission.misIndex) ) ] )		
		
		return
	end	
	
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x001015_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001015_g_eventList do
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
function x001015_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x001015_g_eventList do
		if missionScriptId == findId then
			x001015_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x001015_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001015_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x001015_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001015_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x001015_OnDie( sceneId, selfId, killerId )
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x001015_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--Ìá½»ÎïÆ·
--**********************************
function x001015_OnMissionCheck( sceneId, selfId, targetId, scriptId, index1, index2, index3, indexpet, missionIndex )
	
	for i, eventId in x001015_g_XunWuScriptId do
		
		if eventId == scriptId then
			CallScriptFunction( scriptId, "OnMissionCheck", sceneId, selfId, targetId, scriptId, index1, index2, index3, indexpet, missionIndex )
			return 1
		end
	end
		
end
