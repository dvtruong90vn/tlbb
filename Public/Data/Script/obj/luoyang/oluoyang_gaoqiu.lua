--¸ßÙ´

--½Å±¾ºÅ
x000003_g_scriptId = 000003

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000003_g_eventList={201211,201312}		

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000003_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"Ð°ng ðÕi nhân ðã tiªn cØ ta trß¾c m£t Ðoan vß½ng, c½ hµi cüa ta ðã ðªn chï c¥n ngß¶i theo ta, t¤t nhiên vinh hoa phú quý hß·ng không hªt, ha ha!");
	for i, eventId in x000003_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000003_OnDefaultEvent( sceneId, selfId,targetId )
	x000003_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000003_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x000003_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x000003_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000003_g_eventList do
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
function x000003_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x000003_g_eventList do
		if missionScriptId == findId then
			x000003_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x000003_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x000003_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000003_OnDie( sceneId, selfId, killerId )
end
