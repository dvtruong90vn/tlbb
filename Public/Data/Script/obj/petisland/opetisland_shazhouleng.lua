--É³ÖÞÀä
--½Å±¾ºÅ
x112002_g_scriptId = 112002

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x112002_g_eventList={ 250000 }	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x112002_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"Ta · ðây thu mua t¤t cä các loÕi trân thú, ngß½i có trân thú c¥n bán không?")
	for i, eventId in x112002_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		
	end
	
	AddNumText( sceneId, x112002_g_scriptId, "Gi¾i thi®u trân thú", 11, 10 )
	
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x112002_OnDefaultEvent( sceneId, selfId,targetId )
	x112002_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x112002_OnEventRequest( sceneId, selfId, targetId, eventId )


	if GetNumText() == 10 then
			BeginEvent(sceneId)	
					
				AddText( sceneId, "#{function_help_076}" )
								
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end

	for i, findId in x112002_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x112002_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
 
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x112002_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
 
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x112002_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
 
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x112002_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
 
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x112002_OnDie( sceneId, selfId, killerId )
end

--**********************************
--¼ì²âÈÎÎñ½ÓÊÜÌõ¼þ
--**********************************
function x112002_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
			CallScriptFunction( scriptId, "OnMissionCheck", sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
end
