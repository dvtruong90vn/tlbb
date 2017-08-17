--ÖÐÇïNPC
--ÁèÕñ

x050203_g_scriptId = 050203

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x050203_g_eventList={050018, 050019}

--»î¶¯Ê±¼ä
x050203_g_StartDayTime = 8257   --»î¶¯¿ªÊ¼Ê±¼ä 2008-9-14,°üº¬µ±ÈÕ
x050203_g_EndDayTime = 8282   --»î¶¯½áÊøÊ±¼ä 2008-10-09,°üº¬µ±ÈÕ

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x050203_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText( sceneId, "Cänh · DÕ Tây H° th§t là ð©p! Nªu trong không gian này ma b¡n thêm vài pháo hoa cüa ngày l­ thì th§t là t¯t." )
		if IsHaveMission(sceneId, selfId, 131) > 0 then
			CallScriptFunction( 050018, "OnEnumerate",sceneId, selfId, targetId )
		elseif IsHaveMission(sceneId, selfId, 132) > 0 then
			CallScriptFunction( 050019, "OnEnumerate",sceneId, selfId, targetId )
		else
			local randIndex = random(1, 2);
			if randIndex == 1 then
				CallScriptFunction( 050018, "OnEnumerate",sceneId, selfId, targetId )
			else
				CallScriptFunction( 050019, "OnEnumerate",sceneId, selfId, targetId )
			end
		end
		
		local check = x050203_IsMidAutumnPeriod(sceneId, selfId);
		if check and check == 1 then
			AddNumText(sceneId, x050203_g_scriptId, "Liên quan ðªn thß·ng nguy®t phóng pháo hoa", 11, 1);
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x050203_OnDefaultEvent( sceneId, selfId,targetId )
	x050203_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x050203_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x050203_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
	
	local num = GetNumText()
	if num == 1 then
		BeginEvent(sceneId);
			AddText( sceneId, "#{FANGYIANHUA_ABOUT}");
		EndEvent(sceneId);
		DispatchEventList(sceneId, selfId, targetId);
		return
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x050203_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x050203_g_eventList do
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
function x050203_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x050203_g_eventList do
		if missionScriptId == findId then
			x050203_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x050203_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x050203_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x050203_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x050203_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x050203_OnDie( sceneId, selfId, killerId )
end

--**********************************
--»î¶¯ÊÇ·ñ¿ªÆô
--**********************************
function x050203_IsMidAutumnPeriod(sceneId, selfId)
	local curDay = GetDayTime();
	if not curDay then
		return 0;
	end

	if curDay < x050203_g_StartDayTime or curDay > x050203_g_EndDayTime then
		return 0;
	end

	return 1
end
