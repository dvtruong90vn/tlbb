--±£»¤°ïÅÉ×¤µØ
--ÆÕÍ¨

--½Å±¾ºÅ
x805040_g_ScriptId	= 805040

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x805040_g_EventList	= { 805042 }


--½ÓÈ¡ÈÎÎñµÄ×îµÍµÈ¼¶
x805040_g_minLevel			= 20

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x805040_UpdateEventList( sceneId, selfId, targetId )

	local Humanguildid 	= GetHumanGuildID(sceneId,selfId)
	local cityguildid 	= GetCityGuildID(sceneId, selfId, sceneId)
	
	if Humanguildid ~= cityguildid then
		BeginEvent( sceneId )
			AddText( sceneId, "#{SYDH_81016_01}" )
			AddNumText( sceneId, 805042, "V« bäo hµ bang hµi" ,11 ,2)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	CallScriptFunction( x805040_g_EventList[1], "OnEnumerate", sceneId, selfId, targetId )
	
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x805040_OnDefaultEvent( sceneId, selfId, targetId )
	x805040_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x805040_OnEventRequest( sceneId, selfId, targetId, eventId )

	for i, findId in x805040_g_EventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x805040_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )

	for i, findId in x805040_g_EventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			return
		end
	end

end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x805040_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )

	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x805040_g_EventList do
		if missionScriptId == findId then
			x805040_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x805040_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )

	for i, findId in x805040_g_EventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x805040_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )

	for i, findId in x805040_g_EventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end

end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x805040_OnDie( sceneId, selfId, killerId )
end
