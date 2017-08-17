-- 019033
-- ÄÂµº

--½Å±¾ºÅ
x019033_g_scriptId = 019033

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x019033_g_eventList={212220}



--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x019033_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Các hÕ mu¯n ð±i bäo v§t cüa ta ß? E r¢ng các hÕ phäi chu¦n b¸ 1 túi Yªn Huy«n Ng÷c, thÑ ðó trong C± Mµ có r¤t nhi«u, nhßng phäi xem các hÕ còn mÕng ð¬ l¤y ra không.");
		for i, eventId in x019033_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x019033_OnDefaultEvent( sceneId, selfId,targetId )
	x019033_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x019033_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x019033_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x019033_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x019033_g_eventList do
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
function x019033_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x019033_g_eventList do
		if missionScriptId == findId then
			x019033_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x019033_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x019033_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x019033_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )

	for i, findId in x019033_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x019033_OnDie( sceneId, selfId, killerId )
end

