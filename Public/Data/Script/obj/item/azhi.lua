--Ê¯ÁÖ  ¿ÉÅÂµÄÕæÏà

--½Å±¾ºÅ

x300018_g_scriptId = 300018

--ËùÓµÓĞµÄÊÂ¼şIDÁĞ±í
x300018_g_eventList={212104}

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x300018_OnDefaultEvent( sceneId, selfId, BagIndex )
	BeginEvent(sceneId)
		AddText(sceneId, "Sñ th§t ğáng sş")
		for i, eventId in x300018_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, -1 )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
end

--**********************************
--Ë¢ĞÂÊÂ¼ş
--**********************************
function x300018_OnEventRequest( sceneId, selfId, targetId, eventId )
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x300018_OnMissionAccept( sceneId, selfId, targetId )
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x300018_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼şÁĞ±í
	for i, findId in x300018_g_eventList do
		if missionScriptId == findId then
			x300018_OnDefaultEvent( sceneId, selfId, targetId )
			return
		end
	end
end

function x300018_IsSkillLikeScript( sceneId, selfId)
	return 0;
end

