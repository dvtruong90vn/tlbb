--ÖÜÎÞÎ·

--½Å±¾ºÅ
x018005_g_scriptId = 018005


--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x018005_g_eventList={808103, 808104, 808105, 808094}--210900,210901,210906, 210409}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x018005_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Công vi®c bäo v® an ninh · NhÕn Môn Quan hi®n nay chü yªu phân thành ba bµ ph§n: ðÕi soái Chüng Thª Hoành phø trách ð¯i phó v¾i ðÕo phï T¥n Gia TrÕi · phía nam NhÕn Môn Quan; phó soái Khúc Ðoan phø trách ð¯i phó v¾i quân Liêu · phía b¡c NhÕn Môn Quan; giám quân Mã Th×a Sänh phø trách giám sát, ðôn ð¯c cµng vi®c cüa hai v¸ nguyên soái.")
	for i, eventId in x018005_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x018005_OnDefaultEvent( sceneId, selfId,targetId )
	x018005_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x018005_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x018005_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x018005_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x018005_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId, targetId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId, missionScriptId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x018005_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x018005_g_eventList do
		if missionScriptId == findId then
			x018005_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x018005_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x018005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x018005_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x018005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x018005_OnDie( sceneId, selfId, killerId )
end
