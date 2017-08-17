--Â³Æ½


--½Å±¾ºÅ
x031007_g_scriptId = 031007

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x031007_g_eventList={}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x031007_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Thí chü, thí chü có t×ng nghe nói g¥n Kim S½n tñ chúng tôi có tháp Lôi Phong? V« sau chÆng biªt thª nào mà s§p m¤t, th§t kÏ lÕ, chÆng l¨ do Ph§t t± hi¬n linh?")
	for i, eventId in x031007_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x031007_OnDefaultEvent( sceneId, selfId,targetId )
	x031007_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x031007_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x031007_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x031007_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x031007_g_eventList do
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
function x031007_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x031007_g_eventList do
		if missionScriptId == findId then
			x031007_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x031007_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x031007_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x031007_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x031007_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x031007_OnDie( sceneId, selfId, killerId )
end

