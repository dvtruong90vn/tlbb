--Ò®ÂÉÄª¸ç

--½Å±¾ºÅ
x018004_g_scriptId = 018004


--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x018004_g_eventList={200030,200034,212120}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x018004_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Tiêu ÐÕi Vß½ng l¥n này ði Nam tri«u, lành ít dæ nhi«u... Nhßng tÕi sao thái h§u lÕi kiên quyªt b¡t ông ði nhï?")
	for i, eventId in x018004_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x018004_OnDefaultEvent( sceneId, selfId,targetId )
	x018004_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x018004_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x018004_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x018004_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x018004_g_eventList do
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
function x018004_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x018004_g_eventList do
		if missionScriptId == findId then
			x018004_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x018004_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x018004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x018004_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x018004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x018004_OnDie( sceneId, selfId, killerId )
end
