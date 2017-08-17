--ÍêÑÕÓ¯¸ç

--½Å±¾ºÅ
x022008_g_scriptId = 022008

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x022008_g_eventList={}--211300,211306	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x022008_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"Ð£c sÑ ðÕi nhân, da cüa Hoàn Nhan bµ lÕc c¯ng nÕp là t¯t nh¤t, t¯t h½n nhi«u so v¾i bµ lÕc H¯t ThÕch Li®t. S¯ H± c¯t thßþng hÕn này là cho ð£c sÑ ðÕi nhân, xin các hÕ nói nhæng l¶i t¯t ð©p trß¾c m£t ðÕi vß½ng, nói r¢ng bµ lÕc Hoàn Nhan mãi mãi trung thành v¾i nß¾c Liêu.")
	for i, eventId in x022008_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x022008_OnDefaultEvent( sceneId, selfId,targetId )
	x022008_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x022008_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x022008_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x022008_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x022008_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x022008_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x022008_g_eventList do
		if missionScriptId == findId then
			x022008_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x022008_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x022008_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x022008_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x022008_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x022008_OnDie( sceneId, selfId, killerId )
end
