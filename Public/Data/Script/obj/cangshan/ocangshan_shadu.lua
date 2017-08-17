--¸Ê±¦±¦

--½Å±¾ºÅ
x025001_g_scriptId = 025001

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x025001_g_eventList={}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x025001_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"H×! Chï c¥n ta có m£t, không ai ðßþc ðøng t¾i Tát Tang ðÕi nhân! #r#rTên m§p thúi Tát L² kia nªu ngß½i dám xông vào, t¾i 1 ta giªt 1, t¾i 2 ta giªt 2!");
	for i, eventId in x025001_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x025001_OnDefaultEvent( sceneId, selfId,targetId )
	x025001_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x025001_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x025001_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x025001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x025001_g_eventList do
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
function x025001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x025001_g_eventList do
		if missionScriptId == findId then
			x025001_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x025001_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x025001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x025001_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x025001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x025001_OnDie( sceneId, selfId, killerId )
end
