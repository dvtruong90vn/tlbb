--Â³Æ½


--½Å±¾ºÅ
x032002_g_scriptId = 032004

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x032002_g_eventList={}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x032002_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Chào m×ng các hÕ ðªn doanh trÕi tu¥n tra cüa ngß¶i S½n Vi®t. Các hÕ có th¬ ði lÕi kh¡p n½i · ðây, nhßng nh¤t ð×ng làm hÕi cây cö hoa lá · ðây, chúng là bÕn t¯t cüa ngß¶i S½n Vi®t. #r#rPhía bên kia là Thüy Tiên tÖ tÖ, tÖ ¤y là ngß¶i thông minh nh¤t trong doanh trÕi cüa chúng ta ð¤y.")
	for i, eventId in x032002_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x032002_OnDefaultEvent( sceneId, selfId,targetId )
	x032002_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x032002_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x032002_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x032002_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x032002_g_eventList do
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
function x032002_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x032002_g_eventList do
		if missionScriptId == findId then
			x032002_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x032002_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x032002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x032002_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x032002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x032002_OnDie( sceneId, selfId, killerId )
end

