-- 402101
-- ³¡¾°ÖÐ»î¶¯¿ªÊ¼ºóË¢³öÀ´µÄNpc

-- 
x402101_g_scriptId = 402101

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x402101_g_eventList={402102} 	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x402101_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  ~#r  <Ðáng thß½ng, linh thú tr×ng l¾n hai m¡t nhìn ngß½i...>")
		for i, eventId in x402101_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x402101_OnDefaultEvent( sceneId, selfId,targetId )
	x402101_UpdateEventList( sceneId, selfId,targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x402101_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x402101_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end
