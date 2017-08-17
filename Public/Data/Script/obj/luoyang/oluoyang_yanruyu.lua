-- 000131
-- 
--½Å±¾ºÅ
x000131_g_scriptId = 000131

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000131_g_eventList = { 805029, 805030 }

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000131_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Tøc ngæ nói, tß¾ng do tr¶i sinh, khách quan ð¯i v¾i di®n mÕo cüa bän thân ðã ßng ý chßa, có mu¯n làm chút thay ð±i không?")
		AddNumText( sceneId, x000131_g_scriptId, "Gi¾i thi®u sØa dung mÕo", 11, 10 )
		AddNumText(sceneId,x000131_g_scriptId,"SØa dung mÕo",6,1)
		AddNumText( sceneId, x000131_g_scriptId, "Gi¾i thi®u thay ð±i hình bi¬u tßþng nhân v§t", 11, 14 )
		AddNumText(sceneId,x000131_g_scriptId,"Thay ð±i hình bi¬u tßþng nhân v§t",6,4)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000131_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 10 then
		BeginEvent(sceneId)	
			AddText( sceneId, "#{function_help_088}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	if GetNumText() == 14 then
		BeginEvent(sceneId)	
			AddText( sceneId, "#{INTERHEAD_XML_008}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if GetNumText() == 1 then
		-- ÐÞ¸ÄÁ³ÐÍ
		CallScriptFunction( 805029, "OnEnumerate",sceneId, selfId, targetId )
		return
	end
	if GetNumText() == 4 then
		-- ÐÞ¸ÄÍ·Ïñ
		CallScriptFunction( 805030, "OnEnumerate",sceneId, selfId, targetId )
		return
	end
	
end
