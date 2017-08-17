--¾µºþNPC
--ÈîÐÇÖñ
--ÆÕÍ¨

--½Å±¾ºÅ
x005001_g_scriptId = 005001

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x005001_g_eventList={200099,200100}
x005001_g_lifeeventList={713507,713566,713606}

x005001_g_RSMissionId = 101;
x005001_g_ActivateMissionId = 15		-- ¼¤»îÌõ¼þ
x005001_g_SongXinScriptId = 006668		-- ËÍÐÅ
x005001_g_ShaGuaiScriptId = 006666		-- É±¹Ö
x005001_g_XunWuScriptId = 006667		-- Ñ°Îï
x005001_g_RoundStorytelling = {
		[0] = { misIndex = { 1039115 }, script = x005001_g_XunWuScriptId },
		[1] = { misIndex = { 1039116 }, script = x005001_g_XunWuScriptId },
		[2] = { misIndex = { 1039117 }, script = x005001_g_XunWuScriptId },
		[3] = { misIndex = { 1039118 }, script = x005001_g_XunWuScriptId },
		[4] = { misIndex = { 1039119 }, script = x005001_g_XunWuScriptId }}
			
x005001_g_SongXinMissionList = {
		[0] = { misIndex = { 1010402 }, script = x005001_g_SongXinScriptId },
		[1] = { misIndex = { 1010403 }, script = x005001_g_SongXinScriptId },
		[2] = { misIndex = { 1010404 }, script = x005001_g_SongXinScriptId },
		[3] = { misIndex = { 1010405 }, script = x005001_g_SongXinScriptId },
		[4] = { misIndex = { 1010406 }, script = x005001_g_SongXinScriptId },
		[5] = { misIndex = { 1010407 }, script = x005001_g_SongXinScriptId },
		[6] = { misIndex = { 1010408 }, script = x005001_g_SongXinScriptId },
		[7] = { misIndex = { 1010409 }, script = x005001_g_SongXinScriptId }}
			
x005001_g_ShaGuaiMissionList = {
		[0] = { misIndex = { 1039120 }, script = x005001_g_XunWuScriptId },
		[1] = { misIndex = { 1039121 }, script = x005001_g_XunWuScriptId },
		[2] = { misIndex = { 1039122 }, script = x005001_g_XunWuScriptId },
		[3] = { misIndex = { 1039123 }, script = x005001_g_XunWuScriptId },
		[4] = { misIndex = { 1039124 }, script = x005001_g_XunWuScriptId },
		[5] = { misIndex = { 1039125 }, script = x005001_g_XunWuScriptId },
		[6] = { misIndex = { 1039126 }, script = x005001_g_XunWuScriptId }}
		
x005001_g_awardItems = {
	[1] = { odds = 50, itemIdxs = { [30] = 10410004, [40] = 10410005, [50] = 10410006, [60] = 10410007, [70] = 10410008, [80] = 10410009, [90] = 10410010, [100] = 10410011 } },
	[2] = { odds = 50, itemIdxs = { [30] = 10410012, [40] = 10410013, [50] = 10410014, [60] = 10410015, [70] = 10410016, [80] = 10410017, [90] = 10410018, [100] = 10410019 } },
	[3] = { odds = 50, itemIdxs = { [30] = 10410020, [40] = 10410021, [50] = 10410022, [60] = 10410023, [70] = 10410024, [80] = 10410025, [90] = 10410026, [100] = 10410027 } },
	[4] = { odds = 50, itemIdxs = { [30] = 10410028, [40] = 10410029, [50] = 10410030, [60] = 10410031, [70] = 10410032, [80] = 10410033, [90] = 10410034, [100] = 10410035 } }}

--Ð¡°×ÍÃ¶ú¶äÊý¾Ý±í....µÚ50»·Ê±ÐèÒª¸ÄËÍÐ¡°×ÍÃ¶ú¶ä....
x005001_g_awardItemsNew = {

	[1] = { odds = 50, itemIdxs = { [30] = 10410082, [40] = 10410083, [50] = 10410084, [60] = 10410085, [70] = 10410086, [80] = 10410087, [90] = 10410088, [100] = 10410089 } },
	[2] = { odds = 50, itemIdxs = { [30] = 10410090, [40] = 10410091, [50] = 10410092, [60] = 10410093, [70] = 10410094, [80] = 10410095, [90] = 10410096, [100] = 10410097 } },

}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x005001_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText(sceneId,"Ta ngày nào cûng nh¾ t¾i Ðoàn Lang, và hai ðÑa con kh¯n kh± cüa ta...")
		local missionIndex = GetScriptIDByMissionID( sceneId, selfId, x005001_g_RSMissionId )
		if missionIndex ~= -1 then
			local missionName = TGetMissionName( missionIndex )
			if missionName ~= "Nhi®m vø A Châu" and IsMissionHaveDone( sceneId, selfId, x005001_g_ActivateMissionId ) > 0 then
				AddNumText( sceneId, x005001_g_scriptId, "Nhi®m vø A Châu", 3, 1 )
			end
		elseif IsMissionHaveDone( sceneId, selfId, x005001_g_ActivateMissionId ) > 0 then
			AddNumText( sceneId, x005001_g_scriptId, "Nhi®m vø A Châu", 3, 1 )
		end

		local checkDay = x005001_IsMidAutumnPeriod(sceneId, selfId);
		if checkDay and checkDay == 1 then
			AddNumText(sceneId, x005001_g_scriptId, "#{TED_90305_1}", 11, 2);
		end

		for _, eventId in x005001_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
		end
		
		for i, eventId in x005001_g_lifeeventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end

	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x005001_OnDefaultEvent( sceneId, selfId, targetId )
	x005001_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x005001_OnEventRequest( sceneId, selfId, targetId, eventId )
	for _, findId in x005001_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end
	
	for i, findId in x005001_g_lifeeventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x005001_g_scriptId )
			return
		end
	end

	local num = GetNumText()
	if num == 1 then
		if IsHaveMission( sceneId, selfId, x005001_g_RSMissionId ) > 0 then
			x005001_NotifyFailBox( sceneId, selfId, targetId, "Các hÕ có nhi®m vø chßa hoàn thành, ðþi hoàn thành xong lÕi ðªn tìm tÕi hÕ." )
			return
		end
		
		-- ¼ì²âÊÇ·ñÂú×ãÈÎÎñ¼¤»îÌõ¼þ
		if IsMissionHaveDone( sceneId, selfId, x005001_g_ActivateMissionId ) <= 0 then
			return 0
		end
		
		--¿´ÏÂ½ñÌìµÄÈÎÎñÊÇ²»ÊÇ×öÍê50´ÎÁË
		--begin modified by zhangguoxin 090208
		local nDayCount = GetMissionData(sceneId, selfId, MD_JQXH_AZHU_LIMITI)
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
			if nCount >= 100  then
				BeginEvent( sceneId )
					AddText( sceneId, "Hôm nay các hÕ ðã g£p quá nhi«u chuy®n phi«n phÑc r°i, th§t xin l²i, ngày mai m¾i làm phi«n các hÕ næa v§y!" )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				return
			end
			
		else		-- ÐÂµÄÒ»Ìì
			SetMissionData(sceneId, selfId, MD_JQXH_AZHU_LIMITI, 0)
		end

		local mission = x005001_g_RoundStorytelling[0];
		local relation = GetMissionData(sceneId, selfId, MD_RELATION_AZHU);
		local playerlevel = GetLevel( sceneId, selfId )
		
		-- µÈ¼¶ÉÏÏÞ´¦Àí
		if playerlevel >= 100 then
			playerlevel = 90
		end
		
		playerlevel = floor( playerlevel / 10 ) * 10
		local randtype = random(100)
		if randtype <= 20 then
			if playerlevel == 20 then
				mission = x005001_g_SongXinMissionList[0];
			elseif playerlevel == 30 then
				mission = x005001_g_SongXinMissionList[1];
			elseif playerlevel == 40 then
				mission = x005001_g_SongXinMissionList[2];
			elseif playerlevel == 50 then
				mission = x005001_g_SongXinMissionList[3];
			elseif playerlevel == 60 then
				mission = x005001_g_SongXinMissionList[4];
			elseif playerlevel == 70 then
				mission = x005001_g_SongXinMissionList[5];
			elseif playerlevel == 80 then
				mission = x005001_g_SongXinMissionList[6];
			elseif playerlevel == 90 then
				mission = x005001_g_SongXinMissionList[7];
			end
		elseif randtype <= 40 then
			if playerlevel == 30 then
				mission = x005001_g_ShaGuaiMissionList[0];
			elseif playerlevel == 40 then
				mission = x005001_g_ShaGuaiMissionList[1];
			elseif playerlevel == 50 then
				mission = x005001_g_ShaGuaiMissionList[2];
			elseif playerlevel == 60 then
				mission = x005001_g_ShaGuaiMissionList[3];
			elseif playerlevel == 70 then
				mission = x005001_g_ShaGuaiMissionList[4];
			elseif playerlevel == 80 then
				mission = x005001_g_ShaGuaiMissionList[5];
			elseif playerlevel == 90 then
				mission = x005001_g_ShaGuaiMissionList[6];
			end
		elseif randtype <= 100 then
			if relation <= 999 then
				mission = x005001_g_RoundStorytelling[0];
			elseif relation <= 1999 then
				mission = x005001_g_RoundStorytelling[1];
			elseif relation <= 3999 then
				mission = x005001_g_RoundStorytelling[2];
			elseif relation <= 6499 then
				mission = x005001_g_RoundStorytelling[3];
			elseif relation <= 9999 then
				mission = x005001_g_RoundStorytelling[4];
			end
		end
		
		CallScriptFunction( mission.script, "OnDefaultEvent", sceneId, selfId, targetId, mission.misIndex[ random( getn(mission.misIndex) ) ] )

		return
	elseif num == 2 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{MWQ_227_2}");
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x005001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for _, findId in x005001_g_eventList do
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
function x005001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for _, findId in x005001_g_eventList do
		if missionScriptId == findId then
			x005001_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x005001_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for _, findId in x005001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x005001_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for _, findId in x005001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x005001_OnDie( sceneId, selfId, killerId )
end

--**********************************
--Ñ­»·ÈÎÎñÌá½»µÄÊÂ¼þ
--²»È«£¬ÒªÓÃÊ±×¢Òâ
--ÏÖÖ»ÓÐÑ°Îï£¬É±¹Ö£¬ËÍÐÅÈýÖÖÖ§³Ö
--**********************************
function x005001_OnModEvent_Submit(sceneId, selfId, targetId, missionIndex)
	local checkDay = x005001_IsMidAutumnPeriod(sceneId, selfId);
	if not checkDay or checkDay ~= 1 then
		return 0;
	end
	
	local mdLocation, _, _ = TGetRelationShipAwardInfo( missionIndex );
	if not mdLocation or mdLocation ~= MD_RELATION_AZHU then
		return 0;
	end
	
	local value = GetMissionData( sceneId, selfId, mdLocation);
	if not value or value < 1000 then
		x005001_NotifyMessage(sceneId, selfId, targetId);
		return 0;
	end
	
	local count = GetMissionData(sceneId, selfId, MD_AZHU_TUERDUO_COUNT);
	if not count then
		return 0;
	end
	
	count = count + 1;
	SetMissionData(sceneId, selfId, MD_AZHU_TUERDUO_COUNT, count);
	
	local testValue = 50;
	local hit = 0;
	for i = 0, 16 do
		if testValue == count then
			hit = 1;
			break;
		end
		testValue = testValue * 2;
	end

	if hit ~= 1 then
		x005001_NotifyMessage(sceneId, selfId,targetId)
		return 0;
	end

	--Èç¹ûÊÇµÚ50»·(µÚÒ»´Î¸ø)....ÔòËÍÍæ¼ÒÒ»¸öÐ¡°×ÍÃ¶ú¶ä....·ñÔò¾ÍËÍÆÕÍ¨ÍÃ¶ú¶ä....
	if count == 50 then
		x005001_GiveSmallRabbitEar( sceneId, selfId )
	else
		x005001_GiveRabbitEar( sceneId, selfId )
	end

	return 1;
end

--**********************************
--»î¶¯ÊÇ·ñ¿ªÆô
--**********************************
function x005001_IsMidAutumnPeriod(sceneId, selfId)

	--¸ÄÎª³¤ÆÚ»î¶¯ÁË....

	--local curDay = GetDayTime();
	--if not curDay then
	--	return 0;
	--end
	
	--if curDay < 7262 or curDay > 7283 then
	--	return 0;
	--end

	return 1
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x005001_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end



function x005001_NotifyMessage(sceneId, selfId,targetId )		
		-- [ QUFEI 2007-09-19 11:42 UPDATE BugID 25436 ]
		local nDayCount = GetMissionData(sceneId, selfId, MD_JQXH_AZHU_LIMITI)
		local nCount = 		floor(nDayCount/100000)
		--Èç¹ûÃ¿Íê³É10´Î·¢²¼³¡¾°ÏûÏ¢
		if(nCount == 10 or nCount == 20 or nCount == 30 or nCount == 40 )	then				
				local msg = format("[%s]£º#W#{_INFOUSR%s} #G°¢Öì#P#{JINGHU_RUANXINZHU}", GetSceneName(sceneId), GetName(sceneId, selfId) )
				LuaFnNpcChat(sceneId, targetId, 1, msg)				
		end
		--Èç¹ûÃ¿Íê³É50´Î·¢²¼ÊÀ½çÏûÏ¢
		if(nCount == 50)	then								
				local msg = format("#W#{_INFOUSR%s} #G°¢Öì#P#{JINGHU_RUANXINZHU}", GetName(sceneId, selfId) )
				BroadMsgByChatPipe(sceneId, selfId, msg, 2);
		end
end


--**********************************
-- ËÍÆÕÍ¨ÍÃ¶ú¶ä....
--**********************************
function x005001_GiveRabbitEar( sceneId, selfId )

	local totalOdds = 0;
	local item;
	for _, item in x005001_g_awardItems do
		totalOdds = totalOdds  + item.odds;
	end
	
	if totalOdds < 1 then
		return 0;
	end

	local selItem;
	local randValue = random(1, totalOdds);
	randValue = randValue - 1;
	for _, item in x005001_g_awardItems do
		if item.odds >= randValue then
			selItem = item;
			break;
		end
		randValue = randValue - item.odds;
	end
	
	if not selItem then
		return 0;
	end
	
	local level = GetLevel(sceneId, selfId);
	if not level then
		return 0;
	end
	if level >= 110 then
		level = 100
	end
	
	local idx = floor(level / 10);
	idx = idx * 10;
	
	local itemIdx = selItem.itemIdxs[idx];
	if not itemIdx then
		return 0;
	end
	
	local itemAddPos;
	BeginAddItem(sceneId);
		itemAddPos = AddItem(sceneId, itemIdx, 1);
	ret = EndAddItem(sceneId, selfId);
	if ret and ret > 0 then
		AddItemListToHuman(sceneId, selfId);
		
		local selfName = GetName(sceneId, selfId);
		local itemTransfer;
		if itemAddPos then
			itemTransfer = GetItemTransfer(sceneId, selfId, itemAddPos);
		end

		if itemTransfer and selfName then
			local msg = "#YÈîÐÇÖñ£º#W#{_INFOUSR"..selfName.."}#P#{tuerduo}#{_INFOMSG"..itemTransfer.."}#P´÷ÔÚ#W#{_INFOUSR"..selfName.."}#PµÄÍ·ÉÏ±íÊ¾¸ÐÐ»£¡";
			BroadMsgByChatPipe(sceneId, selfId, msg, 4);
		end
	end

end

--**********************************
-- ËÍÐ¡°×ÍÃ¶ú¶ä....
--**********************************
function x005001_GiveSmallRabbitEar( sceneId, selfId )

	local totalOdds = 0;
	local item;
	for _, item in x005001_g_awardItemsNew do
		totalOdds = totalOdds  + item.odds;
	end
	
	if totalOdds < 1 then
		return 0;
	end

	local selItem;
	local randValue = random(1, totalOdds);
	randValue = randValue - 1;
	for _, item in x005001_g_awardItemsNew do
		if item.odds >= randValue then
			selItem = item;
			break;
		end
		randValue = randValue - item.odds;
	end
	
	if not selItem then
		return 0;
	end
	
	local level = GetLevel(sceneId, selfId);
	if not level then
		return 0;
	end
	if level >= 110 then
		level = 100
	end
	
	local idx = floor(level / 10);
	idx = idx * 10;
	
	local itemIdx = selItem.itemIdxs[idx];
	if not itemIdx then
		return 0;
	end
	
	local itemAddPos;
	BeginAddItem(sceneId);
		itemAddPos = AddItem(sceneId, itemIdx, 1);
	ret = EndAddItem(sceneId, selfId);
	if ret and ret > 0 then
		AddItemListToHuman(sceneId, selfId);
		
		local selfName = GetName(sceneId, selfId);
		local itemTransfer;
		if itemAddPos then
			itemTransfer = GetItemTransfer(sceneId, selfId, itemAddPos);
		end

		if itemTransfer and selfName then
			local msg = "#YÈîÐÇÖñ£º#W#{_INFOUSR"..selfName.."}#P#{tuerduo2}#{_INFOMSG"..itemTransfer.."}#PËÍ¸ø#W#{_INFOUSR"..selfName.."}#P#{tuerduo3}";
			BroadMsgByChatPipe(sceneId, selfId, msg, 4);
		end
	end

end

--**********************************
--Ìá½»ÎïÆ·
--**********************************
function x005001_OnMissionCheck( sceneId, selfId, targetId, scriptId, index1, index2, index3, indexpet, missionIndex )
	
	for i, eventId in x005001_g_XunWuScriptId do
		
		if eventId == scriptId then
			CallScriptFunction( scriptId, "OnMissionCheck", sceneId, selfId, targetId, scriptId, index1, index2, index3, indexpet, missionIndex )
			return 1
		end
	end
		
end
