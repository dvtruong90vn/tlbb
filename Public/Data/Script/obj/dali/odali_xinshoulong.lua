--Ç®Áú

--½Å±¾ºÅ
x002031_g_scriptId = 002031

x002031_g_startTime = 09097 --»î¶¯¿ªÊ¼Ê±¼ä
x002031_g_EndTime   = 09150 --»î¶¯½áÊøÊ±¼ä

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x002031_g_eventList={210205,210207,210208,050028,889054,889055,889056,889057}--210206,311100

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x002031_UpdateEventList( sceneId, selfId,targetId )
	
	local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "Muµi muµi"
	else
		PlayerSex = "Huynh ð®"
	end
	
	BeginEvent(sceneId)
	local curDayTime = GetDayTime()
	if curDayTime >= x002031_g_startTime and curDayTime <= x002031_g_EndTime then
		AddText(sceneId,"#{XFMTL_20090319_05}")
	else
		AddText(sceneId,"#{OBJ_dali_0013}"..PlayerName..PlayerSex.."Nghî kÛ lÕi ði...")		--#r  ÔÚÏÂ²»²Å£¬È´Ò²ÓÐ¡°½­ºþ°ÙÏþÉú¡±µÄÐéÃû£¬¶Ô¹Å½ñÌìÏÂ½­ºþÖ®ÊÂ¶¼ÂÔÖªÒ»¶þ£¬ÈôÓÐÊ²Ã´ÒÉÎÊ£¬Äã¿ÉÒÔ¾¡¹ÜÀ´ÕÒÎÒ¡£--#r  #r#r  ¡°ÄãÎÊÎÒ´ð¡±£­ÎÒÀ´¸æËßÄãÒ»Ð©½­ºþÊÂ¡£  #r#r  ¡°ÎÒÎÊÄã´ð¡±£­Á¬Ðø´ð¶ÔÎÊÌâ¾Í×ÊÖúÄãÒøÁ½¡£
	end
	for i, eventId in x002031_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002031_OnDefaultEvent( sceneId, selfId,targetId )
	x002031_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002031_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x002031_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x002031_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002031_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x002031_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x002031_g_eventList do
		if missionScriptId == findId then
			x002031_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x002031_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002031_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x002031_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002031_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x002031_OnDie( sceneId, selfId, killerId )
end
