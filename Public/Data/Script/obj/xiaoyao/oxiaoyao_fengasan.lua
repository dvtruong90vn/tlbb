--åÐÒ£NPC  Ñ§Ï°ÆæÃÅ¶Ý¼×¼¼ÄÜ
--·ë°¢Èý
--ÆÕÍ¨

--½Å±¾ºÅ
x014005_g_ScriptId = 014005

--ËùÓµÓÐµÄÊÂ¼þ
--estudy_qimendunjia = 713520
--elevelup_qimendunjia = 713579
--edialog_qimendunjia = 713619

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x014005_g_eventList={713520,713579,701611,225901}	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x014005_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"#{OBJ_xiaoyao_0002}")
	for i, eventId in x014005_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	AddNumText( sceneId, x014005_g_ScriptId, "Gi¾i thi®u KÏ môn ðµn giáp", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x014005_OnDefaultEvent( sceneId, selfId,targetId )
	x014005_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x014005_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_037}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	for i, findId in x014005_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x014005_g_ScriptId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x014005_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x014005_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x014005_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x014005_g_eventList do
		if missionScriptId == findId then
			x014005_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x014005_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x014005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x014005_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x014005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x014005_OnDie( sceneId, selfId, killerId )
end
