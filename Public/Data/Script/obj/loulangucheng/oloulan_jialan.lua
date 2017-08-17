--Â¥À¼NPC....
--È¾·¢....

--½Å±¾ºÅ
x001132_g_scriptId = 001132

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x001132_g_eventList = { 801011 }

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001132_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
		AddText(sceneId,"#{LLGC_20080324_14}")
		AddNumText( sceneId, x001132_g_scriptId, "Gi¾i thi®u v« thay ð±i màu tóc", 11, 1 )
		AddNumText(sceneId,x001132_g_scriptId,"Thay ð±i màu tóc",6,2)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

function x001132_OnEventRequest( sceneId, selfId, targetId, eventId )

	local NumText = GetNumText()

	if NumText == 1 then

		BeginEvent(sceneId)	
			AddText( sceneId, "#{function_help_060}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 2 then

		-- ÐÞ¸Ä·¢É«
		CallScriptFunction( 801011, "OnEnumerate",sceneId, selfId, targetId )

	end

end
