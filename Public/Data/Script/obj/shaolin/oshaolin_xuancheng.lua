--Í­ÈËÏï¸±±¾ÈÎÎñnpc

--½Å±¾ºÅ
x009014_g_scriptId = 009014


--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x009014_g_eventList={220901}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x009014_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		AddText(sceneId,"  "..PlayerName..", Thiªu Lâm tñ có Ð°ng Nhân HÕng n±i danh thiên hÕ, các hÕ có mu¯n thØ thách bän thân không?")
		for i, findId in x009014_g_eventList do
			CallScriptFunction( x009014_g_eventList[i], "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x009014_OnDefaultEvent( sceneId, selfId,targetId )
	x009014_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x009014_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x009014_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x009014_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x009014_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x009014_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x009014_g_eventList do
		if missionScriptId == findId then
			x009014_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x009014_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x009014_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x009014_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x009014_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x009014_OnDie( sceneId, selfId, killerId )
end
