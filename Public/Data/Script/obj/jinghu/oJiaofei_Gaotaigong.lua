-- 005114
-- ¸ßÌ«¹« ·ËÕ¯´«ËÍÈË

--½Å±¾ºÅ
x005114_g_scriptId = 005114

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x005114_g_eventList={}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x005114_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Ta là ngß¶i chü nghîa hòa bình.")
	
	AddNumText( sceneId, x005114_g_scriptId, "Ðßa ta ðªn Kính H°",9 ,1  )
	
	for i, eventId in x005114_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x005114_OnDefaultEvent( sceneId, selfId,targetId )
	x005114_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x005114_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText() == 1  then
		NewWorld( sceneId, selfId, 5, 200, 52)
		return
	end

	for i, findId in x005114_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x005114_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x005114_g_eventList do
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
function x005114_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x005114_g_eventList do
		if missionScriptId == findId then
			x005114_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x005114_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x005114_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x005114_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x005114_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x005114_OnDie( sceneId, selfId, killerId )
end

