--ÄÏº£NPC
--Ò¶Á÷·²
--ÆÕÍ¨

--½Å±¾ºÅ
x034001_g_scriptId = 34001

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x034001_g_eventList={212114}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x034001_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"R¯t cøc là ai gây ra! Ta nh¤t ð¸nh phäi tìm ra hung thü, ta mu¯n ðem ð¥u h¡n tª vong linh sß phø, sß nß½ng và t¤t cä nhæng ngß¶i cüa Nam Häi kiªm phái! #r#rCØu sß muµi ðáng thß½ng nh¤t, sß muµi nh¤t ð¸nh r¤t ðau lòng... Trong tim nàng ¤y, chï có ðÕi sß huynh.")
		for i, eventId in x034001_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x034001_OnDefaultEvent( sceneId, selfId,targetId )
	x034001_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x034001_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x034001_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x034001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x034001_g_eventList do
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
function x034001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x034001_g_eventList do
		if missionScriptId == findId then
			x034001_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x034001_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x034001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x034001_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x034001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x034001_OnDie( sceneId, selfId, killerId )
end
