--ÓÂÊ¿µÄ¼ÒÊé

--½Å±¾ºÅ
x300000_g_scriptId = 300000


--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x300000_g_eventList={212112}--212112

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x300000_OnDefaultEvent( sceneId, selfId, BagIndex )
	BeginEvent(sceneId)
		AddText(sceneId, "Thß nhà cüa dûng sî")
		for i, eventId in x300000_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, -1 )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
	
end

--**********************************
--Ë¢ÐÂÊÂ¼þ
--**********************************
function x300000_OnEventRequest( sceneId, selfId, targetId, eventId )
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x300000_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x300000_g_eventList do
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
function x300000_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x300000_g_eventList do
		if missionScriptId == findId then
			x300000_OnDefaultEvent( sceneId, selfId, targetId )
			return
		end
	end
end

function x300000_IsSkillLikeScript( sceneId, selfId)
	return 0;
end
