--ËÕ·É

--½Å±¾ºÅ
x030003_g_scriptId = 030003

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x030003_g_eventList={212100, 808095, 808096, 808097, 808094}
-- 212100  ËÕ·ÉµÄÊÀ½ç

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x030003_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"Chúng ta v¯n là #rThüy QuÖ#W - tuy không phäi loài ngß¶i, nhßng chúng ta và loài ngß¶i gi¯ng nhau vì có cuµc s¯ng cüa mình, tß tß·ng cüa mình, chúng ta không phäi là chüng tµc hung ác hiªu chiªn")
	for i, eventId in x030003_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x030003_OnDefaultEvent( sceneId, selfId,targetId )
	x030003_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x030003_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x030003_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x030003_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x030003_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId, targetId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId, missionScriptId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x030003_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x030003_g_eventList do
		if missionScriptId == findId then
			x030003_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x030003_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x030003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x030003_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x030003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x030003_OnDie( sceneId, selfId, killerId )
end
