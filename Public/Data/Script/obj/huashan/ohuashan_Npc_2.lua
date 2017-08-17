--´«³öÕâ¸ö³¡¾°µÄNpc
--ÆÕÍ¨

--½Å±¾ºÅ
x125002_g_scriptId = 125002

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x125002_g_eventList={001231}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************

function x125002_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Mu¯n r¶i khöi ðây r°i à?")
		for i, eventId in x125002_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x125002_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x125002_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

