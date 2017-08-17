--¶Ø»Í ÕÔÐÐµÂ

--½Å±¾ºÅ
--g_scriptId = 008002

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x008002_g_eventList={}--210801,210802,210803,210804}--212603,212606}	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x008002_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
--	local IsDone511 = IsMissionHaveDone(sceneId,selfId,511)	
	
	AddText(sceneId,"Lâu l¡m không g£p, hi®n tÕi hÕ ðã thuµc ðÕo quân ngß¶i Hán cüa nß¾c Tây HÕ")
	for i, eventId in x008002_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x008002_OnDefaultEvent( sceneId, selfId,targetId )
	x008002_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x008002_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x008002_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x008002_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x008002_g_eventList do
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
function x008002_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x008002_g_eventList do
		if missionScriptId == findId then
			x008002_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x008002_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x008002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x008002_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x008002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x008002_OnDie( sceneId, selfId, killerId )
end
