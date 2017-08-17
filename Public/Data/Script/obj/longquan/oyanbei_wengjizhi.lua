--Â³Æ½


--½Å±¾ºÅ
x031003_g_scriptId = 031003

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x031003_g_eventList={212119}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x031003_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Khi trß¾c tu±i nhö không suy nghî, cÑ ngÞ chï c¥n thích là nên c¯ dành l¤y, chÆng h« nghî s¨ gây sai l¥m. #r#rNh¸ ca vì tác thành cho ta mà phäi xu¤t gia, A Thanh vì nh¸ ca mà su¯t ð¶i thü ph§n, ta, ta, ta thñc là có tµi!")
	for i, eventId in x031003_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x031003_OnDefaultEvent( sceneId, selfId,targetId )
	x031003_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x031003_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x031003_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x031003_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x031003_g_eventList do
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
function x031003_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x031003_g_eventList do
		if missionScriptId == findId then
			x031003_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x031003_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x031003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x031003_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x031003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x031003_OnDie( sceneId, selfId, killerId )
end

