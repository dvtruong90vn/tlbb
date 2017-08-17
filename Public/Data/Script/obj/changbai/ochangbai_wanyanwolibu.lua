--ÍêÑÕÎÓÀë²»

--½Å±¾ºÅ
x022005_g_scriptId = 022005

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x022005_g_eventList={212110}--211303	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x022005_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"B®nh cüa thúc thúc là do ngß¶i H¯t ThÕch Li®t hÕi, ta nh¤t ð¸nh phäi tiêu di®t ngß¶i H¯t ThÕch Li®t, trä thù cho thúc thúc!")
	for i, eventId in x022005_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x022005_OnDefaultEvent( sceneId, selfId,targetId )
	x022005_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x022005_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x022005_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x022005_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x022005_g_eventList do
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
function x022005_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x022005_g_eventList do
		if missionScriptId == findId then
			x022005_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x022005_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x022005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x022005_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x022005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x022005_OnDie( sceneId, selfId, killerId )
end
