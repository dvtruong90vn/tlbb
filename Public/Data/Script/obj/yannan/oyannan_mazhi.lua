--ÂíÖ²

--½Å±¾ºÅ
x018003_g_scriptId = 018003


--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x018003_g_eventList={}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x018003_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Gia Lu§t tß¾ng quân, nghe nói ngß¶i nß¾c Kim không ðßþc ðü mµt vÕn, nªu ðü mµt vÕn thì thiên hÕ vô ð¸ch, có ðúng là th§t nhß v§y không?")
	for i, eventId in x018003_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x018003_OnDefaultEvent( sceneId, selfId,targetId )
	x018003_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x018003_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x018003_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x018003_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x018003_g_eventList do
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
function x018003_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x018003_g_eventList do
		if missionScriptId == findId then
			x018003_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x018003_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x018003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x018003_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x018003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x018003_OnDie( sceneId, selfId, killerId )
end
