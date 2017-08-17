--½Å±¾ºÅ
x000087_g_scriptId = 000087

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000087_g_eventList = { 801011 }

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000087_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Chï c¥n ngß½i có thu¯c nhuµm tóc là có th¬ thay ð±i ðßþc màu tóc mu¯n nhuµm")
		
		AddNumText( sceneId, x000087_g_scriptId, "Gi¾i thi®u thay ð±i màu tóc", 11, 10 )
		AddNumText( sceneId,x000087_g_scriptId,"Thay ð±i màu tóc",6,2)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000087_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 10 then
			BeginEvent(sceneId)	
				AddText( sceneId, "#{function_help_060}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end

	if GetNumText() == 2 then
		-- ÐÞ¸Ä·¢É«
		CallScriptFunction( 801011, "OnEnumerate",sceneId, selfId, targetId )
		return
	end

end
