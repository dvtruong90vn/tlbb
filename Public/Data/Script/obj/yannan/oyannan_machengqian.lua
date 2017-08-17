--Âí³ÐÙ»

--½Å±¾ºÅ
x018002_g_scriptId = 018002


--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x018002_g_eventList={212120}--210904

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x018002_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"M¤y t¤m väi này t¯t ð¤y, cái khay này ch¤t li®u cûng ðßþc ð¤y. –, hai con lþn sæa ðó xem ra r¤t ngon ð¤y, ngß½i mau ði cß¾p cho ta ði!")
	for i, eventId in x018002_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x018002_OnDefaultEvent( sceneId, selfId,targetId )
	x018002_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x018002_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x018002_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x018002_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x018002_g_eventList do
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
function x018002_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x018002_g_eventList do
		if missionScriptId == findId then
			x018002_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x018002_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x018002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x018002_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x018002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x018002_OnDie( sceneId, selfId, killerId )
end
