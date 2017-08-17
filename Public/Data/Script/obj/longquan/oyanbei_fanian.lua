--Â³Æ½


--½Å±¾ºÅ
x031004_g_scriptId = 031004

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x031004_g_eventList={212119}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x031004_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Yêu ðß½ng ham mu¯n ngß¶i khác, thñc gi¯ng ðu¯c ði ngßþc gió, t¤t có cái h÷a böng tay. #r#rT× yêu t¤t sinh bu°n r¥u, có yêu t¤t sinh lo sþ, nªu r¶i xa yêu, còn gì ð¬ bu°n ð¬ sþ... #r#rThí chü có hi¬u chång?")
	for i, eventId in x031004_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x031004_OnDefaultEvent( sceneId, selfId,targetId )
	x031004_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x031004_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x031004_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x031004_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x031004_g_eventList do
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
function x031004_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x031004_g_eventList do
		if missionScriptId == findId then
			x031004_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x031004_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x031004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x031004_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x031004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x031004_OnDie( sceneId, selfId, killerId )
end

