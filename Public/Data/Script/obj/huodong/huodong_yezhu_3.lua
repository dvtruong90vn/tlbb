-- 402104
-- ³¡¾°ÖÐ»î¶¯¿ªÊ¼ºóË¢³öÀ´µÄNpc

-- 
x402104_g_scriptId = 402104

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x402104_g_eventList={402105}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x402104_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ðáng gi§n Dã Trß Vß½ng ðào t¦u! ChÆng biªt các ngß½i có hay không có mµt ít khä nång tìm ðßþc manh m¯i Dã Trß Vß½ng?")
		for i, eventId in x402104_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x402104_OnDefaultEvent( sceneId, selfId,targetId )
	x402104_UpdateEventList( sceneId, selfId,targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x402104_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x402104_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end
