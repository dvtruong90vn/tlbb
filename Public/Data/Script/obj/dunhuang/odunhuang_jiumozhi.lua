--¶Ø»ÍNPC
--ğ¯Ä¦ÖÇ
--ÆÕÍ¨

--½Å±¾ºÅ
x008011_g_scriptId = 008011

--ËùÓµÓĞµÄÊÂ¼şIDÁĞ±í
x008011_g_eventList={200099,200100}

x008011_g_RSMissionId = 101
x008011_g_ActivateMissionId = 37			-- ¼¤»îÌõ¼ş
x008011_g_SongXinScriptId = 006668		-- ËÍĞÅ
x008011_g_ShaGuaiScriptId = 006666		-- É±¹Ö
x008011_g_XunWuScriptId = 006667			-- Ñ°Îï

x008011_g_RoundStorytelling = {
		[0] = { misIndex = { 1039550 }, script = x008011_g_XunWuScriptId },
		[1] = { misIndex = { 1039551 }, script = x008011_g_XunWuScriptId },
		[2] = { misIndex = { 1039552 }, script = x008011_g_XunWuScriptId },
		[3] = { misIndex = { 1039553 }, script = x008011_g_XunWuScriptId },
		[4] = { misIndex = { 1039554 }, script = x008011_g_XunWuScriptId }}
			
x008011_g_SongXinMissionList = {
		[0] = { misIndex = { 1018530,1018534,1018538 }, script = x008011_g_SongXinScriptId },
		[1] = { misIndex = { 1018531,1018535,1018539 }, script = x008011_g_SongXinScriptId },
		[2] = { misIndex = { 1018532,1018536,1018540 }, script = x008011_g_SongXinScriptId },
		[3] = { misIndex = { 1018533,1018537,1018541 }, script = x008011_g_SongXinScriptId }}
			
x008011_g_ShaGuaiMissionList = {
		[0] = { misIndex = { 1009100 }, script = x008011_g_ShaGuaiScriptId },
		[1] = { misIndex = { 1009101 }, script = x008011_g_ShaGuaiScriptId },
		[2] = { misIndex = { 1009102 }, script = x008011_g_ShaGuaiScriptId },
		[3] = { misIndex = { 1009103 }, script = x008011_g_ShaGuaiScriptId }}
			

--**********************************
--ÊÂ¼şÁĞ±í
--**********************************
function x008011_UpdateEventList( sceneId, selfId,targetId )
	
	local PlayerName = GetName( sceneId, selfId )
	local PlayerSex = GetSex( sceneId, selfId )
	if PlayerSex == 0 then
		PlayerSex = " cô nß½ng "
	else
		PlayerSex = " thiªu hi®p "
	end

	BeginEvent( sceneId )
		AddText(sceneId,"Thí chü phong tr¥n ğß¶ng xa ğªn Ng÷c Môn Quan là ğ¬ ği nß¾c Tây HÕ chång? ThÑ l²i cho ti¬u tång nói nång thÆng th¡n, ¤n ğß¶ng cüa thí chü t¯i màu, l¥n này ği Tây HÕ ¡t hÆn lành ít dæ nhi«u, t¯t nh¤t là nên s¾m quay v« Trung Nguyên, m¾i là kª vÕn toàn")

		local missionIndex = GetScriptIDByMissionID( sceneId, selfId, x008011_g_RSMissionId )
		if missionIndex ~= -1 then
			local missionName = TGetMissionName( missionIndex )
			if missionName ~= "Nhi®m vø Cßu Ma Trí" and IsMissionHaveDone( sceneId, selfId, x008011_g_ActivateMissionId ) > 0 then
				AddNumText( sceneId, x008011_g_scriptId, "Nhi®m vø Cßu Ma Trí", 3, 1 )
			end
		elseif IsMissionHaveDone( sceneId, selfId, x008011_g_ActivateMissionId ) > 0 then
			AddNumText( sceneId, x008011_g_scriptId, "Nhi®m vø Cßu Ma Trí", 3, 1 )
		end

		for i, eventId in x008011_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
		end
					
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
end

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x008011_OnDefaultEvent( sceneId, selfId,targetId )
	x008011_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x008011_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x008011_g_eventList do
		if eventId == findId then			
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
		
	local num = GetNumText()
	if num == 1 then										-- Nhi®m vø Cßu Ma Trí
		if IsHaveMission( sceneId, selfId, x008011_g_RSMissionId ) > 0 then
			x008011_NotifyFailBox( sceneId, selfId, targetId, "Các hÕ có nhi®m vø chßa hoàn thành, ğşi hoàn thành xong lÕi ğªn tìm tÕi hÕ." )
			return
		end
		
		-- ¼ì²âÊÇ·ñÂú×ãÈÎÎñ¼¤»îÌõ¼ş
		if IsMissionHaveDone( sceneId, selfId, x008011_g_ActivateMissionId ) <= 0 then
			return 0
		end
		
		--¿´ÏÂ½ñÌìµÄNhi®m vø Cßu Ma TríÊÇ²»ÊÇ×öÍê50´ÎÁË
		--begin modified by zhangguoxin 090208
		local nDayCount = GetMissionData(sceneId, selfId, MD_JQXH_JIUMOZHI_LIMITI)
		local nCount = 		floor(nDayCount/100000)
		local nTime = 		mod(nDayCount,100000)
		--local nDayTime = 	floor(nTime/100)	--ÉÏÒ»´Î½»ÈÎÎñµÄÊ±¼ä(ÌìÊı)
		local nDayTime = 	nTime								--ÉÏÒ»´Î½»ÈÎÎñµÄÊ±¼ä(ÌìÊı)
		
		--local CurTime = GetHourTime()				--µ±Ç°Ê±¼ä
		local CurTime = GetDayTime()					--µ±Ç°Ê±¼ä
		--local CurDaytime = floor(CurTime/100)	--µ±Ç°Ê±¼ä(Ìì)
		local CurDaytime = CurTime							--µ±Ç°Ê±¼ä(Ìì)
		--end modified by zhangguoxin 090208
		
		if nDayTime == CurDaytime  then -- µ±Ìì
			if nCount >= 50  then
				BeginEvent( sceneId )
					AddText( sceneId, "Hôm nay các hÕ ğã g£p quá nhi«u chuy®n phi«n phÑc r°i, th§t xin l²i, ngày mai m¾i làm phi«n các hÕ næa v§y!" )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				return
			end
			
		else		-- ĞÂµÄÒ»Ìì
			SetMissionData(sceneId, selfId, MD_JQXH_JIUMOZHI_LIMITI, 0)
		end

		local mission = x008011_g_RoundStorytelling[0];
		local relation = GetMissionData(sceneId, selfId, MD_RELATION_JIUMOZHI)
		local playerlevel = GetLevel( sceneId, selfId )
		
		-- µÈ¼¶ÉÏÏŞ´¦Àí
		if playerlevel >= 100 then
			playerlevel = 90
		end
		
		playerlevel = floor( playerlevel / 10 ) * 10
		local randtype = random(100)
		
		-- ËÍĞÅÈÎÎñ
		if randtype <= 60 then
			if playerlevel == 60 then
				mission = x008011_g_SongXinMissionList[0];
			elseif playerlevel == 70 then
				mission = x008011_g_SongXinMissionList[1];
			elseif playerlevel == 80 then
				mission = x008011_g_SongXinMissionList[2];
			elseif playerlevel == 90 then
				mission = x008011_g_SongXinMissionList[3];			
			end
		-- É±¹ÖÈÎÎñ
		elseif randtype <= 95 then
			if playerlevel == 60 then
				mission = x008011_g_ShaGuaiMissionList[0];
			elseif playerlevel == 70 then
				mission = x008011_g_ShaGuaiMissionList[1];
			elseif playerlevel == 80 then
				mission = x008011_g_ShaGuaiMissionList[2];
			elseif playerlevel == 90 then
				mission = x008011_g_ShaGuaiMissionList[3];			
			end
		-- Ñ°ÎïÈÎÎñ
		elseif randtype <= 100 then
			if relation <= 999 then
				mission = x008011_g_RoundStorytelling[0];
			elseif relation <= 1999 then
				mission = x008011_g_RoundStorytelling[1];
			elseif relation <= 3999 then
				mission = x008011_g_RoundStorytelling[2];
			elseif relation <= 6499 then
				mission = x008011_g_RoundStorytelling[3];
			elseif relation <= 9999 then
				mission = x008011_g_RoundStorytelling[4];
			end
		end
				
		CallScriptFunction( mission.script, "OnDefaultEvent", sceneId, selfId, targetId, mission.misIndex[ random( getn(mission.misIndex) ) ] )		
		
		return
	end	
	
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x008011_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x008011_g_eventList do
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
function x008011_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼şÁĞ±í
	for i, findId in x008011_g_eventList do
		if missionScriptId == findId then
			x008011_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end	
end

--**********************************
--¼ÌĞø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x008011_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x008011_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end	
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x008011_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x008011_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end	
end

--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x008011_OnDie( sceneId, selfId, killerId )
end

--**********************************
-- ¶Ô»°´°¿ÚĞÅÏ¢ÌáÊ¾
--**********************************
function x008011_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--Ìá½»ÎïÆ·
--**********************************
function x008011_OnMissionCheck( sceneId, selfId, targetId, scriptId, index1, index2, index3, indexpet, missionIndex )
	
	for i, eventId in x008011_g_XunWuScriptId do
		
		if eventId == scriptId then
			CallScriptFunction( scriptId, "OnMissionCheck", sceneId, selfId, targetId, scriptId, index1, index2, index3, indexpet, missionIndex )
			return 1
		end
	end
		
end
