--ÇñÐÐÂå

--½Å±¾ºÅ
x000122_g_scriptId = 000122

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000122_g_eventList={250551}	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000122_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"Giäi túc c¥u chu¦n b¸ b¡t ð¥u r°i, b§n chªt ði ðßþc, nªu các hÕ có th¶i gian, có th¬ giúp ta chuy¬n l¶i chång?")
	for i, eventId in x000122_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		
	end
	
	AddNumText( sceneId, x000122_g_scriptId, "Gi¾i thi®u thß tín · LÕc Dß½ng", 11, 10 )
	AddNumText( sceneId, x000122_g_scriptId, "Liên quan hµi thi Túc c¥u", 11, 11 )
	
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000122_OnDefaultEvent( sceneId, selfId,targetId )
	x000122_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000122_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 10 then
			BeginEvent(sceneId)	
					
				AddText( sceneId, "#{function_help_075}" )
								
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end
	
	if GetNumText() == 11 then
		BeginEvent(sceneId)	
			AddText(sceneId,"#BLiên quan hµi thi Túc c¥u");
			AddText( sceneId, "#{CUJU_INFO}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	for i, findId in x000122_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x000122_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000122_g_eventList do
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
function x000122_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x000122_g_eventList do
		if missionScriptId == findId then
			x000122_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x000122_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000122_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x000122_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000122_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000122_OnDie( sceneId, selfId, killerId )
end
