--ÂåÑôNPC Ò©Àí¼¼ÄÜNPC   °üº¬¹¦ÄÜ£º1Ò©Àí¼¼ÄÜµÄÑ§Ï° 2½²½âÒ©Àí¼¼ÄÜ
--°×Ó±Ã÷
--ÆÕÍ¨

--½Å±¾ºÅ
x000084_g_ScriptId = 000084

--ËùÓµÓÐµÄÊÂ¼þIdÁÐ±í
--estudy_yaoli = 713527
--elevelup_yaoli = 713586
--edialog_yaoli = 713620
--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000084_g_eventList={713527,713586}--,713620}
--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000084_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Ngß½i mu¯n h÷c dßþc lý kÛ nång ?")
	for i, eventId in x000084_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	AddNumText( sceneId, x000084_g_ScriptId, "Gi¾i thi®u Dßþc lý", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000084_OnDefaultEvent( sceneId, selfId,targetId )
	x000084_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000084_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_008}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	for i, findId in x000084_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x000084_g_ScriptId )
		return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x000084_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000084_g_eventList do
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
function x000084_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x000084_g_eventList do
		if missionScriptId == findId then
			x000084_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x000084_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000084_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x000084_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000084_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000084_OnDie( sceneId, selfId, killerId )
end
