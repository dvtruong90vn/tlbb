--ÍçÑÕ°¢¹Ç´ò

--½Å±¾ºÅ
x022001_g_scriptId = 022001

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x022001_g_eventList={}--211305,211306,211309	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x022001_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"Ngß¶i nß¾c Liêu truy«n r¢ng, Nß Chân binh không th¬ ðü 1 vÕn, nªu ðü 1 vÕn s¨ là thiên hÕ vô ð¸ch. Hoàn Nhan bµ lÕc nh¤t ð¸nh phäi th¯ng nh¤t Næ Chân, th¯ng lînh 1 vÕn thiªt kÜ, ð¦y ngßþc ách th¯ng tr¸ cüa nß¾c Liêu.")
	for i, eventId in x022001_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x022001_OnDefaultEvent( sceneId, selfId,targetId )
	x022001_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x022001_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x022001_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x022001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x022001_g_eventList do
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
function x022001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x022001_g_eventList do
		if missionScriptId == findId then
			x022001_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x022001_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x022001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x022001_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x022001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x022001_OnDie( sceneId, selfId, killerId )
end
