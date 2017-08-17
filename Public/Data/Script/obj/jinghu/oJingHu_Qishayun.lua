-- 005113
-- ÆëÉ·ÔÆ

--½Å±¾ºÅ
x005113_g_scriptId = 005113

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x005113_g_eventList={402030}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x005113_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Ta nh§n nhi®m vø di®t Kính H° thüy t£c t× tri«u ðình, tri«u ðình ðang chiêu mµ thiên hÕ nhân sî có chí cùng tiªn hành di®t phï.")
	for i, eventId in x005113_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x005113_OnDefaultEvent( sceneId, selfId,targetId )
	x005113_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x005113_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x005113_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x005113_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x005113_g_eventList do
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
function x005113_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x005113_g_eventList do
		if missionScriptId == findId then
			x005113_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x005113_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x005113_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x005113_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x005113_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x005113_OnDie( sceneId, selfId, killerId )
end
