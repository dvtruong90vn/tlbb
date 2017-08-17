-- 000144
-- ÏÄºîÈÊ

--½Å±¾ºÅ
x000144_g_scriptId = 000144

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000144_g_eventList={125020}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000144_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  #G$N#WAnh hùng! Ðªn Tung S½n phong thi«n ðài cÕnh kÛ trß¶ng bi¬u hi®n thñc lñc cüa các hÕ ði! #GCác hÕ trß¾c khi bß¾c vào phong thi«n ðài nh¤t thiªt phäi l§p 1 t± ðµi, t¤t cä ngß¶i trong t± ðµi lúc vào phong thi«n ðài s¨ thuµc tr§n hình");
		for i, eventId in x000144_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000144_OnDefaultEvent( sceneId, selfId,targetId )
	x000144_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000144_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x000144_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x000144_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000144_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x000144_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x000144_g_eventList do
		if missionScriptId == findId then
			x000144_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x000144_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000144_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x000144_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000144_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000144_OnDie( sceneId, selfId, killerId )
end
