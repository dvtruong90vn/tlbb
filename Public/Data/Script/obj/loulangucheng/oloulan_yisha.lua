--Â¥À¼NPC....
--ÕûÈÝ....

--½Å±¾ºÅ
x001133_g_scriptId = 001133

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x001133_g_eventList = { 805029, 805030 }

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001133_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)

		AddText(sceneId,"#{loulan_zhengrong_20080329}")

		AddNumText( sceneId, x001133_g_scriptId, "Gi¾i thi®u v« thay ð±i dung mÕo", 11, 1 )
		AddNumText(sceneId,x001133_g_scriptId,"Thay ð±i dung mÕo",6,2)

		AddNumText( sceneId, x001133_g_scriptId, "Gi¾i thi®u v« thay ð±i khuôn m£t", 11, 3 )
		AddNumText(sceneId,x001133_g_scriptId,"Thay ð±i khuôn m£t",6,4)

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

function x001133_OnEventRequest( sceneId, selfId, targetId, eventId )

	local NumText = GetNumText()

	if NumText == 1 then

		BeginEvent(sceneId)	
			AddText( sceneId, "#{function_help_088}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 3 then

		BeginEvent(sceneId)	
			AddText( sceneId, "#{INTERHEAD_XML_008}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 2 then
		-- ÐÞ¸ÄÁ³ÐÍ
		CallScriptFunction( 805029, "OnEnumerate",sceneId, selfId, targetId )

	elseif NumText == 4 then
		-- ÐÞ¸ÄÍ·Ïñ
		CallScriptFunction( 805030, "OnEnumerate",sceneId, selfId, targetId )

	end

end
