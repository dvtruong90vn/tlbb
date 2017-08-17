--NPCÍü³¾
--ÎäÒÄ
--ÆÕÍ¨

--½Å±¾ºÅ
x032112_g_scriptId = 032112

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x032112_g_eventList={212123}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x032112_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Ð¶i ngß¶i dù không qua tråm nåm nhßng ð«u có ði¬m kªt thúc, b¤t lu§n Ðª vß½ng hay tß¾ng ð«u là bình dân bách tính. V§y ð¶i ngß¶i trong thª gian này là gì ? A di ðà ph§t, thí chü, phäi chång v¤n ð« này cûng ðang khiªn thí chü b¯i r¯i?")
	for i, eventId in x032112_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x032112_OnDefaultEvent( sceneId, selfId,targetId )
	x032112_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x032112_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x032112_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x032112_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x032112_g_eventList do
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
function x032112_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x032112_g_eventList do
		if missionScriptId == findId then
			x032112_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x032112_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x032112_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x032112_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x032112_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x032112_OnDie( sceneId, selfId, killerId )
end

