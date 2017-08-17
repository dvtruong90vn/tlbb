--²ñ½ø

--½Å±¾ºÅ
x003001_g_scriptId = 003001

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x003001_g_eventList={}--210809,210300, 210301, 210302, 210304}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x003001_UpdateEventList ( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"QuÖ!!! À, thì ra là ngß½i, xin l²i nhé. G¥n ðây ta b¸ QuÖ làm cho khiªp ðäm kinh h°n. Ta không biªt r¯t cøc mình nhìn th¤y ngß¶i hay QuÖ næa...")
	for i, eventId in x003001_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x003001_OnDefaultEvent( sceneId, selfId,targetId )
	x003001_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x003001_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x003001_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x003001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x003001_g_eventList do
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
function x003001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x003001_g_eventList do
		if missionScriptId == findId then
			x003001_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x003001_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x003001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x003001_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x003001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x003001_OnDie( sceneId, selfId, killerId )
end
