--²Ì±å

--½Å±¾ºÅ
x000002_g_scriptId = 000002

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000002_g_eventList={200501,200502,200603,200604,201111,201211,201313,201411,201412,201511,201512,201611,650000}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000002_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"Tây Kinh LÕc Dß½ng chính là thiên hÕ ð® nh¤t thành. Ðªn LÕc Dß½ng thì ð×ng quên thß·ng ngoÕn Mçu ð½n cüa LÕc Dß½ng, ðªn chùa BÕch Mã ð¯t nén nhang");
	--bDone = IsMissionHaveDone( sceneId, selfId, 0004 );
	--PrintStr (bDone)
	for i, eventId in x000002_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000002_OnDefaultEvent( sceneId, selfId,targetId )
	x000002_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000002_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x000002_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x000002_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000002_g_eventList do
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
function x000002_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x000002_g_eventList do
		if missionScriptId == findId then
			x000002_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x000002_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x000002_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000002_OnDie( sceneId, selfId, killerId )
end
