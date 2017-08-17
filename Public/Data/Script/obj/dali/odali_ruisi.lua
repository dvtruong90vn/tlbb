--´óÀíNPC
--ÜÇË¹
--ÆÕÍ¨

--½Å±¾ºÅ
x002090_g_scriptId	= 002090

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x002090_g_eventList	= { 808005 }

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x002090_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "TÕi hÕ ðªn t× qu¯c gia ?n Ðµ xa xôi. V¯n ngßÞng mµ ¦m thñc vån hóa cüa thiên tri«u thßþng qu¯c. M£t khác ta ðã phøng m®nh ðem v« mµt s¯ thú cßng t× n½i này..." )
		for i, eventId in x002090_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
		end
	EndEvent( sceneId )
	DispatchEventList( sceneId,selfId,targetId )
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002090_OnDefaultEvent( sceneId, selfId, targetId )
	x002090_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002090_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x002090_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x002090_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002090_g_eventList do
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
function x002090_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x002090_g_eventList do
		if missionScriptId == findId then
			x002090_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x002090_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002090_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x002090_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002090_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--Íæ¼ÒÌá½»µÄÎïÆ·¼°ÕäÊÞ
--**********************************
function x002090_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
	if scriptId ~= nil then
		CallScriptFunction( scriptId, "OnMissionCheck", sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x002090_OnDie( sceneId, selfId, killerId )
end
