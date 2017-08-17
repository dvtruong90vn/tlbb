--Â½ËÉ

--½Å±¾ºÅ
x003003_g_scriptId = 003003

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x003003_g_eventList={}--210303, 210304}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x003003_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Ta là Danh y Løc Tùng cüa Tung Dß½ng thß vi®n, ðã hành y · ðây ðßþc 30 nåm r°i, chßa bao gi¶ g£p sñ c¯ trong ði«u tr¸.")
	for i, eventId in x003003_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x003003_OnDefaultEvent( sceneId, selfId,targetId )
	x003003_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x003003_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x003003_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x003003_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x003003_g_eventList do
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
function x003003_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x003003_g_eventList do
		if missionScriptId == findId then
			x003003_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x003003_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x003003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x003003_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x003003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x003003_OnDie( sceneId, selfId, killerId )
end
