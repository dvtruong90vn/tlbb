--ÄÏº£NPC
--ÀîÀÏÌ«Ì«
--ÆÕÍ¨

x034006_g_eventList = {212112}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x034006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Con trai ta dù không còn næa, nhßng nó vçn s¯ng! Nó vînh vi­n s¯ng · Liêu Tây!")
		for i, eventId in x034006_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--Ë¢ÐÂÊÂ¼þ
--**********************************
function x034006_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x034006_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x034006_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x034006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x034006_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x034006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end


