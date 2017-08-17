--ÍêÑÕÕ³Ã»ºÈ

--½Å±¾ºÅ
x022004_g_scriptId = 022004

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x022004_g_eventList={212110}--211304	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x022004_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"Ngµt Thu§t tên ti¬u tØ này, làm m¤t món ð° quan tr÷ng cüa ta, trß¾c gi¶ cÑ ngÞ h¡n r¤t thông minh, thì ra so v¾i ta không khác là bao.")
	for i, eventId in x022004_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x022004_OnDefaultEvent( sceneId, selfId,targetId )
	x022004_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x022004_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x022004_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x022004_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x022004_g_eventList do
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
function x022004_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x022004_g_eventList do
		if missionScriptId == findId then
			x022004_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x022004_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x022004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x022004_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x022004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x022004_OnDie( sceneId, selfId, killerId )
end
