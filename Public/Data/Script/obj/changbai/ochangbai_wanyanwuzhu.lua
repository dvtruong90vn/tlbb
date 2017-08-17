--ÍêÑÕØ£Êõ

--½Å±¾ºÅ
x022003_g_scriptId = 022003

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x022003_g_eventList={212110}--211301,211307	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x022003_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"Anh dûng, vî ðÕi, thi®n lß½ng, nhi®t huyªt  ðÕi anh hùng! Ngß½i lÕi ðây Hoàn Nhan Bµ  A, mau t÷a hÕ u¯ng chén tiªp nãi ði.")
	for i, eventId in x022003_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x022003_OnDefaultEvent( sceneId, selfId,targetId )
	x022003_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x022003_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x022003_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x022003_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x022003_g_eventList do
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
function x022003_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x022003_g_eventList do
		if missionScriptId == findId then
			x022003_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x022003_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x022003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x022003_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x022003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x022003_OnDie( sceneId, selfId, killerId )
end
