--ËÕÖİNPC
--Ëå±ªÃù
--Ò»°ã
--´óÌÓÉ±±¨ÃûÈË

--½Å±¾ºÅ
x001063_g_ScriptId	= 1063

--ËùÓµÓĞµÄÊÂ¼şIDÁĞ±í
x001063_g_EventList	= { 808002 }

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x001063_OnDefaultEvent( sceneId, selfId, targetId )

	x001063_UpdateEventList( sceneId, selfId, targetId )

end

--**********************************
--ÊÂ¼şÁĞ±í
--**********************************
function x001063_UpdateEventList( sceneId, selfId, targetId )

	local	i
	BeginEvent( sceneId )
		AddText( sceneId, "#{function_help_083}" );
		
		AddNumText( sceneId, x001063_g_ScriptId, "Gi¾i thi®u ğÕi hµi thí võ", 11, 10 )
		
		for i, eventId in x001063_g_EventList do
				CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
		end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x001063_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 10 then
			BeginEvent(sceneId)	
					
				AddText( sceneId, "#{function_help_065}" )
								
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end
	
	CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )

end

--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x001063_OnDie( sceneId, selfId, killerId )
end
