--ÉÙÁÖNPC
--ÕÆÃÅÈË
--Ðþ´È
--ÆÕÍ¨

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x009005_g_eventList={229009, 200089, 200090, 212140, 229012, 808092}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x009005_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta cäm th¤y Huy«n Bi sß ð® viên t¸ch, không có liên can gì v¾i Ðoàn gia · ÐÕi Lý.")
		for i, findId in x009005_g_eventList do
			CallScriptFunction( x009005_g_eventList[i], "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x009005_OnDefaultEvent( sceneId, selfId,targetId )
	x009005_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x009005_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x009005_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, MP_SHAOLIN )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x009005_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x009005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x009005_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x009005_g_eventList do
		if missionScriptId == findId then
			x009005_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x009005_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x009005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x009005_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x009005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x009005_OnDie( sceneId, selfId, killerId )
end

