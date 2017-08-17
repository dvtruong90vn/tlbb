--Ê¯ÁÖ ÇØºìÃÞ

--½Å±¾ºÅ
x026001_g_scriptId = 026001

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x026001_g_eventList={}--211703,211706	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x026001_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId, "Ngß½i ðªn t× ÐÕi Lý sao $N? V§y ch¡c ngß½i ðã g£p Ðoàn lang ? Ðoàn Lang? Ðoàn Lang ngß½i không biªt sao? Chính là Tr¤n Nam Vß½ng Ðoàn Chính Thu¥n cüa ÐÕi Lý! H×, h¡n ðáng chém nghìn ðao. Ðþi ðªn khi ta g£p phäi... s¨ cho h¡n biªt tay.")	
		for i, eventId in x026001_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x026001_OnDefaultEvent( sceneId, selfId,targetId )
	x026001_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x026001_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x026001_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x026001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x026001_g_eventList do
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
function x026001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x026001_g_eventList do
		if missionScriptId == findId then
			x026001_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x026001_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x026001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x026001_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x026001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x026001_OnDie( sceneId, selfId, killerId )
end
