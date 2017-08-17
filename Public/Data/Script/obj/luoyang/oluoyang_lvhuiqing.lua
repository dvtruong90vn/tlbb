--ÂÀ»ÝÇä

--½Å±¾ºÅ
x000005_g_ScriptId = 000005


--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000005_g_eventList={200502,200601,200602,200603,250508}

--¶Ô°××´Ì¬¼ìÑé
x000005_g_missionId = 12

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000005_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
  if  (IsMissionHaveDone(sceneId,selfId,x000005_g_missionId) > 0 ) then
  			AddText(sceneId,"Ta là Lã Hu® Khanh. Thiªu hi®p ð¯i nhân phúc thi®n, tß½ng lai t¤t ðßþc tr÷ng døng");
	else			
			AddText(sceneId,"#{OBJ_luoyang_0002}");
	end
	for i, eventId in x000005_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000005_OnDefaultEvent( sceneId, selfId,targetId )
	x000005_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000005_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x000005_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x000005_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000005_g_eventList do
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
function x000005_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x000005_g_eventList do
		if missionScriptId == findId then
			x000005_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x000005_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x000005_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000005_OnDie( sceneId, selfId, killerId )
end
