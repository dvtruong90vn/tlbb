--Ã·ÁëNPC
--ÔÂ¼¾
--ÆÕÍ¨

--½Å±¾ºÅ
x033009_g_scriptId = 033009

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x033009_g_eventList={212113}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x033009_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
		AddText(sceneId,"G¥n ðây Thái Dß½ng Hoa tÖ tÖ r¤t hay n±i gi§n vô c¾, lÕ lùng th§t! Cûng chÆng biªt TØ Vi tÖ tÖ bên ðó có vi®c gì không, ðã lâu r°i không có tin tÑc gì cä. #r#rCûng chÆng biªt Kinh Cúc ðang làm cái gì, m¤y hôm nay cäm giác r¤t n£ng n«, tña nhß s¡p có gì ðó xäy ra. Ôi, ch¡c là mình lÕi ða nghî r°i.")
		for i, eventId in x033009_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x033009_OnDefaultEvent( sceneId, selfId,targetId )
	x033009_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x033009_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x033009_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x033009_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x033009_g_eventList do
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
function x033009_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x033009_g_eventList do
		if missionScriptId == findId then
			x033009_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x033009_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x033009_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x033009_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x033009_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x033009_OnDie( sceneId, selfId, killerId )
end
