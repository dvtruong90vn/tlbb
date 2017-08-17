--ÖÓÁé

--½Å±¾ºÅ
x006001_g_scriptId = 006001

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x006001_g_eventList={200099,200100}		--200901,200911,200921,201812

x006001_g_RSMissionId = 101
x006001_g_ActivateMissionId = 8			-- ¼¤»îÌõ¼þ
x006001_g_SongXinScriptId = 006668		-- ËÍÐÅ
x006001_g_ShaGuaiScriptId = 006666		-- É±¹Ö
x006001_g_XunWuScriptId = 006667		-- Ñ°Îï

x006001_g_RoundStorytelling = {
		[0] = { misIndex = { 1039600 }, script = x006001_g_XunWuScriptId },
		[1] = { misIndex = { 1039601 }, script = x006001_g_XunWuScriptId },
		[2] = { misIndex = { 1039602 }, script = x006001_g_XunWuScriptId },
		[3] = { misIndex = { 1039603 }, script = x006001_g_XunWuScriptId },
		[4] = { misIndex = { 1039604 }, script = x006001_g_XunWuScriptId }}
			
x006001_g_SongXinMissionList = {
		[0] = { misIndex = { 1018360 }, script = x006001_g_SongXinScriptId },
		[1] = { misIndex = { 1018361 }, script = x006001_g_SongXinScriptId },
		[2] = { misIndex = { 1018362 }, script = x006001_g_SongXinScriptId },
		[3] = { misIndex = { 1018363 }, script = x006001_g_SongXinScriptId },
		[4] = { misIndex = { 1018364 }, script = x006001_g_SongXinScriptId },
		[5] = { misIndex = { 1018365 }, script = x006001_g_SongXinScriptId },
		[6] = { misIndex = { 1018366 }, script = x006001_g_SongXinScriptId },
		[7] = { misIndex = { 1018367 }, script = x006001_g_SongXinScriptId }}
			
x006001_g_ShaGuaiMissionList = {
		[0] = { misIndex = { 1039605 }, script = x006001_g_XunWuScriptId },
		[1] = { misIndex = { 1039606 }, script = x006001_g_XunWuScriptId },
		[2] = { misIndex = { 1039607 }, script = x006001_g_XunWuScriptId },
		[3] = { misIndex = { 1039608 }, script = x006001_g_XunWuScriptId },
		[4] = { misIndex = { 1039609 }, script = x006001_g_XunWuScriptId },
		[5] = { misIndex = { 1039610 }, script = x006001_g_XunWuScriptId },
		[6] = { misIndex = { 1039611 }, script = x006001_g_XunWuScriptId },
		[7] = { misIndex = { 1039612 }, script = x006001_g_XunWuScriptId }}


--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x006001_UpdateEventList( sceneId, selfId,targetId )

	local PlayerName = GetName( sceneId, selfId )
	local PlayerSex = GetSex( sceneId, selfId )
	if PlayerSex == 0 then
		PlayerSex = " cô nß½ng "
	else
		PlayerSex = " thiªu hi®p "
	end

	BeginEvent( sceneId )
		AddText(sceneId,"Ngß¶i ta b¸ trúng ðµc, không th¬ chÕy ði chÕy lÕi ðßþc næa mà. Không biªt Ðoàn ca ca có tìm ðßþc m© cüa mình không næa, tÕi sao ðªn gi¶ này vçn chßa th¤y ðªn cÑu mình!");

		local missionIndex = GetScriptIDByMissionID( sceneId, selfId, x006001_g_RSMissionId )
		if missionIndex ~= -1 then
			local missionName = TGetMissionName( missionIndex )
			if missionName ~= "Nhi®m Vø Chung Linh" and IsMissionHaveDone( sceneId, selfId, x006001_g_ActivateMissionId ) > 0 then
				AddNumText( sceneId, x006001_g_scriptId, "Nhi®m Vø Chung Linh", 3, 1 )
			end
		elseif IsMissionHaveDone( sceneId, selfId, x006001_g_ActivateMissionId ) > 0 then
			AddNumText( sceneId, x006001_g_scriptId, "Nhi®m Vø Chung Linh", 3, 1 )
		end

		for _, eventId in x006001_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
		end
					
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
		
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x006001_OnDefaultEvent( sceneId, selfId,targetId )
	x006001_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x006001_OnEventRequest( sceneId, selfId, targetId, eventId )
		
	for _, findId in x006001_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end
	
	local num = GetNumText()
	if num == 1 then										-- Nhi®m Vø Chung Linh
		if IsHaveMission( sceneId, selfId, x006001_g_RSMissionId ) > 0 then
			x006001_NotifyFailBox( sceneId, selfId, targetId, "Ah, ngß½i ðang thñc hi®n nhi®m vø (Nhi®m vø tu¥n hoàn k¸ch tình), sau khi hoàn thành hãy ðªn tìm ta." )
			return
		end
		
		-- ¼ì²âÊÇ·ñÂú×ãÈÎÎñ¼¤»îÌõ¼þ
		if IsMissionHaveDone( sceneId, selfId, x006001_g_ActivateMissionId ) <= 0 then
			return 0
		end
		
		--¿´ÏÂ½ñÌìµÄNhi®m Vø Chung LinhÊÇ²»ÊÇ×öÍê50´ÎÁË
		--begin modified by zhangguoxin 090208
		local nDayCount = GetMissionData(sceneId, selfId, MD_JQXH_ZHONGLING_LIMITI)
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
					AddText( sceneId, "Ngày hôm nay ðã phi«n phÑc ngß½i nhi«u r°i, th§t sñ áy náy, ngày mai quay lÕi ðây!" )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				return
			end
			
		else		-- ÐÂµÄÒ»Ìì
			SetMissionData(sceneId, selfId, MD_JQXH_ZHONGLING_LIMITI, 0)
		end

		local mission = x006001_g_RoundStorytelling[0];
		local relation = GetMissionData(sceneId, selfId, MD_RELATION_ZHONGLING)
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
				mission = x006001_g_SongXinMissionList[0];
			elseif playerlevel == 30 then
				mission = x006001_g_SongXinMissionList[1];
			elseif playerlevel == 40 then
				mission = x006001_g_SongXinMissionList[2];
			elseif playerlevel == 50 then
				mission = x006001_g_SongXinMissionList[3];
			elseif playerlevel == 60 then
				mission = x006001_g_SongXinMissionList[4];
			elseif playerlevel == 70 then
				mission = x006001_g_SongXinMissionList[5];
			elseif playerlevel == 80 then
				mission = x006001_g_SongXinMissionList[6];
			elseif playerlevel == 90 then
				mission = x006001_g_SongXinMissionList[7];
			end
		-- É±¹ÖÈÎÎñ
		elseif randtype <= 95 then
			if playerlevel == 20 then
				mission = x006001_g_ShaGuaiMissionList[0];
			elseif playerlevel == 30 then
				mission = x006001_g_ShaGuaiMissionList[1];
			elseif playerlevel == 40 then
				mission = x006001_g_ShaGuaiMissionList[2];
			elseif playerlevel == 50 then
				mission = x006001_g_ShaGuaiMissionList[3];
			elseif playerlevel == 60 then
				mission = x006001_g_ShaGuaiMissionList[4];
			elseif playerlevel == 70 then
				mission = x006001_g_ShaGuaiMissionList[5];
			elseif playerlevel == 80 then
				mission = x006001_g_ShaGuaiMissionList[6];
			elseif playerlevel == 90 then
				mission = x006001_g_ShaGuaiMissionList[7];
			end
		-- Ñ°ÎïÈÎÎñ
		elseif randtype <= 100 then
			if relation <= 999 then
				mission = x006001_g_RoundStorytelling[0];
			elseif relation <= 1999 then
				mission = x006001_g_RoundStorytelling[1];
			elseif relation <= 3999 then
				mission = x006001_g_RoundStorytelling[2];
			elseif relation <= 6499 then
				mission = x006001_g_RoundStorytelling[3];
			elseif relation <= 9999 then
				mission = x006001_g_RoundStorytelling[4];
			end
		end
				
		CallScriptFunction( mission.script, "OnDefaultEvent", sceneId, selfId, targetId, mission.misIndex[ random( getn(mission.misIndex) ) ] )		
		
		return
	end	
	
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x006001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x006001_g_eventList do
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
function x006001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x006001_g_eventList do
		if missionScriptId == findId then
			x006001_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x006001_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x006001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x006001_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x006001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x006001_OnDie( sceneId, selfId, killerId )
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x006001_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--Ìá½»ÎïÆ·
--**********************************
function x006001_OnMissionCheck( sceneId, selfId, targetId, scriptId, index1, index2, index3, indexpet, missionIndex )
	
	for i, eventId in x006001_g_XunWuScriptId do
		
		if eventId == scriptId then
			CallScriptFunction( scriptId, "OnMissionCheck", sceneId, selfId, targetId, scriptId, index1, index2, index3, indexpet, missionIndex )
			return 1
		end
	end
		
end
