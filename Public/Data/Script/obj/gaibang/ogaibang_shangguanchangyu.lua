--Ø¤°ïNPC
--ÉÏ¹Ù³¤Óê
--ÆÕÍ¨

--½Å±¾ºÅ
x010009_g_ScriptId = 010009

--ËùÓµÓÐµÄÊÂ¼þ
estudy_lianhualuo = 713531
elevelup_lianhualuo = 713590
edialog_lianhualuo = 713611
--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x010009_g_eventList={estudy_lianhualuo,elevelup_lianhualuo}	
--MessageNum = 1		--MessageNumÊÇ¶Ô»°±àºÅ£¬ÓÃÓÚµ÷ÓÃ²»Í¬¶Ô»°
--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x010009_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"KÛ nång cüa ta chï dÕy ð® tØ b±n phái.")
	for i, eventId in x010009_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	AddNumText( sceneId, x010009_g_ScriptId, "Gi¾i thi®u Liên Hoa LÕc", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x010009_OnDefaultEvent( sceneId, selfId,targetId )
	x010009_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x010009_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_026}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	for i, findId in x010009_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x010009_g_ScriptId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x010009_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x010009_g_eventList do
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
function x010009_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x010009_g_eventList do
		if missionScriptId == findId then
			x010009_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x010009_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x010009_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x010009_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x010009_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x010009_OnDie( sceneId, selfId, killerId )
end
