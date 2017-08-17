--Â³Æ½


--½Å±¾ºÅ
x031008_g_scriptId = 031008

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x031008_g_eventList={}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x031008_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"A Di Ðà Ph§t, ðþt trß¾c xu¯ng núi ði hóa duyên, nghe nói NhÕn Nam NhÕn B¡c ð«u ðang k¸ch chiªn v¾i quân Liêu, thi®n tai thi®n tai, qu¯c gia có chiªn tranh, chï kh± cho lê dân tråm h÷ mà thôi!")
	for i, eventId in x031008_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x031008_OnDefaultEvent( sceneId, selfId,targetId )
	x031008_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x031008_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x031008_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x031008_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x031008_g_eventList do
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
function x031008_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x031008_g_eventList do
		if missionScriptId == findId then
			x031008_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x031008_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x031008_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x031008_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x031008_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x031008_OnDie( sceneId, selfId, killerId )
end

