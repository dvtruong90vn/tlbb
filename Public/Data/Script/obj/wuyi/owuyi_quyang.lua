--Â³Æ½


--½Å±¾ºÅ
x032001_g_scriptId = 032001

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x032001_g_eventList={212123}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x032001_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Ch¸ em cüa bµ tµc S½n Vi®t r¤t ßu tú. #r#rTØ Vi d¸u dàng hi«n lành, m÷i ngß¶i ð«u thích. Thüy Tiên thanh t¸nh nhã nh£n, chín ch¡n thông minh, h½n næa Phù Dung tÖ tÖ.....")
	for i, eventId in x032001_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x032001_OnDefaultEvent( sceneId, selfId,targetId )
	x032001_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x032001_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x032001_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x032001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x032001_g_eventList do
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
function x032001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x032001_g_eventList do
		if missionScriptId == findId then
			x032001_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x032001_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x032001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x032001_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x032001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x032001_OnDie( sceneId, selfId, killerId )
end

