--´«ÈëÕ½³¡µÄNpc
--ÆÕÍ¨

--½Å±¾ºÅ
x125001_g_scriptId = 125001

--ËùÓµÓĞµÄÊÂ¼şIDÁĞ±í
x125001_g_eventList={001232}

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x125001_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Mu¯n tham gia chiªn trß¶ng? Các hÕ ğã chu¦n b¸ sÇn sàng chßa?")
		for i, eventId in x125001_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x125001_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x125001_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
		end
	end
end

