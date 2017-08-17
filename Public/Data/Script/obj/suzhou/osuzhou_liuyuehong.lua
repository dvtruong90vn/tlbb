--ËÕÖÝNPC
--ÁøÔÂºç
--Ò»°ã
x001025_g_ScriptId = 1025

x001025_g_ControlScript = 808071


--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001025_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
		AddText(sceneId,"B¡t ð¥u t× ðây, chàng chï ðßþc yêu mình ta, thß½ng mình ta, không ðßþc d¯i l×a ta, phäi làm hªt nhæng vi®c ta mu¯n nhé.")
		CallScriptFunction( x001025_g_ControlScript, "OnEnumerate",sceneId, selfId, targetId )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end


function x001025_OnEventRequest( sceneId, selfId, targetId, eventId )
  
	if eventId == x001025_g_ControlScript then
		CallScriptFunction( x001025_g_ControlScript, "OnDefaultEvent",sceneId, selfId, targetId )
		return
	end

end
