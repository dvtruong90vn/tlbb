--Îäµ±NPC  Ñ§Ï°Á¶µ¤¼¼ÄÜ
--º×ÔÆ
--ÆÕÍ¨

--½Å±¾ºÅ
x012001_g_ScriptId = 012001

--ËùÓµÓÐµÄÊÂ¼þ
--estudy_liandan = 713519
--elevelup_liandan = 713578
--edialog_liandan = 713618

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x012001_g_eventList={713519,713578,701608}	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x012001_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Chính là tên Hoàng ÐÕi Nhân hãm hÕi ðÕi sß huynh! Ti¬u sß muµi vçn còn nói t¯t cho h¡n, quä th§t không th¬ ch¸u n±i")
		for i, eventId in x012001_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		AddNumText( sceneId, x012001_g_ScriptId, "Gi¾i thi®u cách Luy®n ð½n", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x012001_OnDefaultEvent( sceneId, selfId,targetId )
	x012001_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x012001_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_035}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	for i, findId in x012001_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x012001_g_ScriptId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x012001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x012001_g_eventList do
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
function x012001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x012001_g_eventList do
		if missionScriptId == findId then
			x012001_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x012001_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x012001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x012001_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x012001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x012001_OnDie( sceneId, selfId, killerId )
end
