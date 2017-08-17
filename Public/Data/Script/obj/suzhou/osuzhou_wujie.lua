--ËÕÖÝNPC		³ÍÐ×´òÍ¼
--Îâ«d
--½Å±¾ºÅ

x001058_g_ScriptId = 001058


--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x001058_g_eventList={229020}

--**********************************

--ÊÂ¼þÁÐ±í

--**********************************

function x001058_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"Hung ð° làm b§y kh¡p n½i, ngß½i có th¬ giúp ta tr×ng phÕt h¡n? Ðánh bÕi ðßþc hung ð° s¨ ðÕt ðßþc bän ð° kho báu")
	
	AddNumText( sceneId, x001058_g_ScriptId, "Gi¾i thi®u nhi®m vø tr× hung", 11, 10 )
	
	for i, eventId in x001058_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end



--**********************************

--ÊÂ¼þ½»»¥Èë¿Ú

--**********************************

function x001058_OnDefaultEvent( sceneId, selfId,targetId )

	x001058_UpdateEventList( sceneId, selfId, targetId )

end



--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x001058_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 10 then
			BeginEvent(sceneId)	
					
				AddText( sceneId, "#{function_help_072}" )
								
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end


	for i, findId in x001058_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x001058_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001058_g_eventList do
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
function x001058_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x001058_g_eventList do
		if missionScriptId == findId then
			x001058_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x001058_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001058_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x001058_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001058_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x001058_OnDie( sceneId, selfId, killerId )
end
