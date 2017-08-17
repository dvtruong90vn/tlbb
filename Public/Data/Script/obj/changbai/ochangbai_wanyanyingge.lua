--ÍêÑÕÓ¯¸ç

--½Å±¾ºÅ
x022002_g_scriptId = 022002

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x022002_g_eventList={}--211305	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x022002_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"V¸ anh hùng dûng cäm, vî ðÕi, hi«n lß½ng, nhi®t huyªt! Các hÕ lÕi ðªn bµ lÕc Hoàn Nhan r°i à, mau ng°i xu¯ng u¯ng 1 ly sæa dê nào.")
	for i, eventId in x022002_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x022002_OnDefaultEvent( sceneId, selfId,targetId )
	x022002_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x022002_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x022002_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x022002_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x022002_g_eventList do
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
function x022002_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x022002_g_eventList do
		if missionScriptId == findId then
			x022002_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x022002_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x022002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x022002_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x022002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x022002_OnDie( sceneId, selfId, killerId )
end
