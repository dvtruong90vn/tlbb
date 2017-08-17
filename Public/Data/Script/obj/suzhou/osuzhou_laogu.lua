--Î÷ºþNPC
--ÀÏ¹Ë
--ÆÕÍ¨

--½Å±¾ºÅ
x001062_g_scriptId = 001062

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x001062_g_eventList={200011,200014}


--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001062_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Men theo con ðß¶ng này, cÑ ði thÆng s¨ t¾i ðßþc Yªn TØ ‘.")

		for i, eventId in x001062_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
-- Ñ¡ÖÐÒ»Ïî
--**********************************
function x001062_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x001062_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end

end
