--°ïÕ½NPC A°ï
--ÕÃì÷
--½Å±¾ºÅ

x402296_g_ScriptId = 402296

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x402296_OnDefaultEvent( sceneId, selfId,targetId )
	if CallScriptFunction(402047, "IsCommonAGuild", sceneId, selfId ) == 1 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{BHXZ_081103_24}")
			AddNumText(sceneId,x402296_g_ScriptId,"Ta mu¯n sØa chæa trang b¸",6,1)
			AddNumText(sceneId, x402296_g_ScriptId,"#{INTERFACE_XML_1004}",6,2);
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		BeginEvent(sceneId);
			AddText( sceneId, "#{BHXZ_081103_20}" );
		EndEvent(sceneId);
		DispatchEventList(sceneId, selfId, targetId);
	end
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x402296_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
	
	if CallScriptFunction(402047, "IsCommonAGuild", sceneId, selfId ) == 0 then
		return
	end
	
	if key == 1 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, -1 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19810313 )
	elseif key == 2 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, -1 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 101526358 )
	end
	
end
