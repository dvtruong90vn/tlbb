--Â¥À¼NPC....
--çº·¢....

--½Å±¾ºÅ
x001134_g_scriptId = 001134

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x001134_g_eventList = { 801010 }

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001134_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
		AddText(sceneId,"#{loulan_huanfa_20080329}")
		AddNumText( sceneId, x001134_g_scriptId, "Gi¾i thi®u v« sØa ki¬u tóc", 11, 1 )
		AddNumText(sceneId,x001134_g_scriptId,"Thay ð±i ki¬u tóc", 6, 2 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

function x001134_OnEventRequest( sceneId, selfId, targetId, eventId )

	local NumText = GetNumText()

	if NumText == 1 then

		BeginEvent(sceneId)	
			AddText( sceneId, "#{function_help_061}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 2 then

		-- ÐÞ¸Ä·¢ÐÍ
		CallScriptFunction( 801010, "OnEnumerate",sceneId, selfId, targetId )

	end

end
