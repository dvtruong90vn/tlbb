--Â½ÄýËª

--½Å±¾ºÅ
x003004_g_scriptId = 003004

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x003004_g_eventList={}--210307}--210306,210305

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x003004_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"TØ ÐÕi quan nhân võ công cao cß¶ng, hi¬u biªt, phong ðµ ng¶i ng¶i, mu¯n gä cho ai cûng nên l¤y ngß¶i nhß TØ ÐÕi quan nhân.")
	for i, eventId in x003004_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x003004_OnDefaultEvent( sceneId, selfId,targetId )
	x003004_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x003004_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x003004_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x003004_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x003004_g_eventList do
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
function x003004_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x003004_g_eventList do
		if missionScriptId == findId then
			x003004_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x003004_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x003004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x003004_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x003004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x003004_OnDie( sceneId, selfId, killerId )
end
