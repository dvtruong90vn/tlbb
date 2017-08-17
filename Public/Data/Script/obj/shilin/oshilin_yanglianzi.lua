--Ê¯ÁÖ ÑîÁ«×Ó

--½Å±¾ºÅ
x026003_g_scriptId = 026003

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x026003_g_eventList={}--211701	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x026003_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
		
	AddText(sceneId, "TÕi sao...tÕi sao... #r#rA Mao cüa ta... #r#rM©, xin l²i m©... #r#rA Mao... #r#rHu hu hu...")	
	
	for i, eventId in x026003_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x026003_OnDefaultEvent( sceneId, selfId,targetId )
	x026003_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x026003_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x026003_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x026003_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x026003_g_eventList do
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
function x026003_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x026003_g_eventList do
		if missionScriptId == findId then
			x026003_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x026003_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x026003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x026003_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x026003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x026003_OnDie( sceneId, selfId, killerId )
end
