--¶ëáÒNPC
--ÕÆÃÅÈË
--ÃÏÇàÇà
--ÆÕÍ¨

--½Å±¾ºÅ
x015000_g_scriptId = 015000

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x015000_g_eventList={226901,229009,229012,808092}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x015000_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		AddText(sceneId,"  "..PlayerName..", trong thung lûng cüa núi Nga My, có mµt Ðào Hoa tr§n, do sß phø ta ð¬ lÕi trß¾c lúc ði. Trong tr§n bao g°m cä KÏ môn ðµn giáp, Ngû hành bát quái.")
		for i, findId in x015000_g_eventList do
			CallScriptFunction( x015000_g_eventList[i], "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x015000_OnDefaultEvent( sceneId, selfId,targetId )
	x015000_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x015000_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x015000_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, MP_EMEI )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x015000_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x015000_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x015000_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x015000_g_eventList do
		if missionScriptId == findId then
			x015000_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x015000_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x015000_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x015000_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x015000_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x015000_OnDie( sceneId, selfId, killerId )
end

