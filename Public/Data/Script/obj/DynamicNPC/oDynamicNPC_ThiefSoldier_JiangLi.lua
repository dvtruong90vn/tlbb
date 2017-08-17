--Ì«ºşNPC
--Ôì·´¶ñÔô
--ÆÕÍ¨

--½Å±¾ºÅ
x050014_g_ScriptId	= 050014

--ËùÓµÓĞµÄÊÂ¼şIDÁĞ±í
x050014_g_EventList	= { 050015 }
--½ÓÈ¡ÈÎÎñµÄ×îµÍµÈ¼¶
x050014_g_minLevel			= 20

--**********************************
--ÊÂ¼şÁĞ±í
--**********************************
function x050014_UpdateEventList( sceneId, selfId, targetId )

	BeginEvent( sceneId )
		local	nam	= LuaFnGetName( sceneId, selfId )
		AddText( sceneId, "Ngày nay thiên hÕ ğµng loÕn, b¯n b« gi£c cß¾p, Tri«u ğinh vì mu¯n mau chóng d©p yên, ra hi®u tri®u các v¸ giúp ğŞ d©p loÕn. Ngß¶i có công d©p loÕn s¨ ğßşc phong tß¾c hi®u" )
		CallScriptFunction( x050014_g_EventList[1], "OnEnumerate", sceneId, selfId, targetId )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
	
end

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x050014_OnDefaultEvent( sceneId, selfId, targetId )
	x050014_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x050014_OnEventRequest( sceneId, selfId, targetId, eventId )

	for i, findId in x050014_g_EventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x050014_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )

	for i, findId in x050014_g_EventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			return
		end
	end

end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x050014_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )

	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼şÁĞ±í
	for i, findId in x050014_g_EventList do
		if missionScriptId == findId then
			x050014_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--¼ÌĞø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x050014_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )

	for i, findId in x050014_g_EventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x050014_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )

	for i, findId in x050014_g_EventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end

end

--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x050014_OnDie( sceneId, selfId, killerId )
end
