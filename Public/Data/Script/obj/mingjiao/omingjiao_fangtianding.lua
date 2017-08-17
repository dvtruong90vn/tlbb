--Ã÷½ÌNPC
--·½Ìì¶¨
--ÆÕÍ¨

--½Å±¾ºÅ
x011004_g_ScriptId = 011004

--ËùÓµÓÐµÄÊÂ¼þ
estudy_caihuoshu = 713530
elevelup_caihuoshu = 713589
edialog_caihuoshu = 713611
--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x011004_g_eventList={estudy_caihuoshu,elevelup_caihuoshu}	
--MessageNum = 1		--MessageNumÊÇ¶Ô»°±àºÅ£¬ÓÃÓÚµ÷ÓÃ²»Í¬¶Ô»°
--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x011004_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"KÛ nång cüa ta chï dÕy ð® tØ b±n phái.")
	for i, eventId in x011004_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	AddNumText( sceneId, x011004_g_ScriptId, "Gi¾i thi®u Thái höa thu§t", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x011004_OnDefaultEvent( sceneId, selfId,targetId )
	x011004_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x011004_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_024}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	for i, findId in x011004_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x011004_g_ScriptId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x011004_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x011004_g_eventList do
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
function x011004_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x011004_g_eventList do
		if missionScriptId == findId then
			x011004_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x011004_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x011004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x011004_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x011004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x011004_OnDie( sceneId, selfId, killerId )
end
