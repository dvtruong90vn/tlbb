--´óÀíNPC		Åëâ¿   1Åëâ¿¼¼ÄÜÑ§Ï° 2Åëâ¿¼¼ÄÜËµÃ÷
--Àî´ó×ì
--ÆÕÍ¨

--½Å±¾ºÅ
x000107_g_ScriptId = 000107

--ËùÓµÓÐµÄÊÂ¼þIdÁÐ±í
--elevelup_pengren = 713561
--edialog_pengren = 713601
--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000107_g_eventList={713561,250505}--,713601
--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000107_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Mu¯n h÷c và nâng cao kÛ nång n¤u nß¾ng, hãy thß¶ng xuyên t¾i ch² ta, luy®n t§p không ng×ng, nhß v§y trình ðµ n¤u nß¾ng thành thÕo và kÛ nång n¤u nß¾ng cüa ngß½i m¾i có th¬ nâng cao")
	AddText(sceneId,"„n vào thång c¤p kÛ nång n¤u nß¾ng, các hÕ có th¬ h÷c ðßþc kÛ thu§t n¤u nß¾ng · c¤p cao h½n")
	for i, eventId in x000107_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	AddNumText( sceneId, x000107_g_ScriptId, "Gi¾i thi®u n¤u nß¾ng", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000107_OnDefaultEvent( sceneId, selfId,targetId )
	x000107_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000107_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_001}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	for i, findId in x000107_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x000107_g_ScriptId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x000107_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000107_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId,ABILITY_PENGREN )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x000107_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x000107_g_eventList do
		if missionScriptId == findId then
			x000107_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x000107_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000107_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x000107_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000107_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000107_OnDie( sceneId, selfId, killerId )
end
