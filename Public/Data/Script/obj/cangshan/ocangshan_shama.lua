--¸Ê±¦±¦

--½Å±¾ºÅ
x025004_g_scriptId = 025004

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x025004_g_eventList={212121}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x025004_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"Thß½ng S½n ðµi tuyªt nhß ng÷n nªn th¡p sáng b¥u tr¶i phía nam. #r#rThÑ mình ðã ch÷n dù ðúng dù sai, chÆng ai có th¬ nói rõ ðßþc");
	for i, eventId in x025004_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x025004_OnDefaultEvent( sceneId, selfId,targetId )
	x025004_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x025004_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x025004_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x025004_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x025004_g_eventList do
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
function x025004_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x025004_g_eventList do
		if missionScriptId == findId then
			x025004_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x025004_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x025004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x025004_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x025004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x025004_OnDie( sceneId, selfId, killerId )
end
