--Ø¤°ïNPC  Ñ§Ï°Äð¾Æ¼¼ÄÜ
--Îâ³¤·ç
--ÆÕÍ¨

--½Å±¾ºÅ
x010006_g_ScriptId = 010006

--ËùÓµÓÐµÄÊÂ¼þ
--estudy_niangjiu = 713514
--elevelup_niangjiu = 713573
--edialog_niangjiu = 713613

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x010006_g_eventList={713514,713573,701606}	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x010006_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"KÛ nång cüa ta chï dÕy ð® tØ b±n phái.")
	for i, eventId in x010006_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	AddNumText( sceneId, x010006_g_ScriptId, "Gi¾i thi®u cách n¤u rßþu", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x010006_OnDefaultEvent( sceneId, selfId,targetId )
	x010006_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x010006_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_025}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	for i, findId in x010006_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x010006_g_ScriptId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x010006_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x010006_g_eventList do
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
function x010006_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x010006_g_eventList do
		if missionScriptId == findId then
			x010006_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x010006_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x010006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x010006_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x010006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x010006_OnDie( sceneId, selfId, killerId )
end
