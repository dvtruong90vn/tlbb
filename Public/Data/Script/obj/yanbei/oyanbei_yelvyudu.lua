--Ò®ÂÉÓà¶Ã

--½Å±¾ºÅ
x019003_g_scriptId = 019003


--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x019003_g_eventList={200032,200033}--211001,211006,211007}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x019003_UpdateEventList( sceneId, selfId,targetId )

	BeginEvent(sceneId)
	AddText(sceneId,"M£c dù Mã Phï t¤n công ðÕi doanh cüa ta, nhßng ta lo l¡ng nh¤t vçn là T¯ng tri«u #RKhúc Ðoan#W, không tiêu di®t ðßþc con ngß¶i này, thì biên cß½ng phía Nam cüa nß¾c Liêu không bao gi¶ ðßþc bình yên.")
	for i, eventId in x019003_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x019003_OnDefaultEvent( sceneId, selfId,targetId )
	x019003_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x019003_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x019003_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x019003_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x019003_g_eventList do
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
function x019003_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x019003_g_eventList do
		if missionScriptId == findId then
			x019003_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x019003_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x019003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x019003_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x019003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x019003_OnDie( sceneId, selfId, killerId )

end

