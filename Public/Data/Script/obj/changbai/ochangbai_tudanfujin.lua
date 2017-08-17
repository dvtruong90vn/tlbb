--ÍêÑÕÓ¯¸ç

--½Å±¾ºÅ
x022009_g_scriptId = 022009

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x022009_g_eventList={}--211302,211303,211304,211307,211308	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x022009_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"Ngµt Thu§t vçn còn là 1 ðÑa trë, quyªt không phäi c¯ ý mu¯n hÕi Ngô Th¶i MÕi. Ph¯i phß½ng cüa th¥n y nh¤t ð¸nh vçn còn · Trß¶ng BÕch S½n, nªu nhß tìm v« ðßþc thì quá t¯t.")
	for i, eventId in x022009_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x022009_OnDefaultEvent( sceneId, selfId,targetId )
	x022009_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x022009_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x022009_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x022009_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x022009_g_eventList do
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
function x022009_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x022009_g_eventList do
		if missionScriptId == findId then
			x022009_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x022009_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x022009_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x022009_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x022009_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x022009_OnDie( sceneId, selfId, killerId )
end
