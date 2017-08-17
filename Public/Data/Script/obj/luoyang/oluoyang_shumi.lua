--Î÷¾©ÊàÃÜÊ¹

--½Å±¾ºÅ
x311000_g_scriptId = 311000


--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x311000_g_eventList={311004,311005}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x311000_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		AddText(sceneId,"  "..PlayerName..", ðây là lúc tri«u ðình tr÷ng døng ngß¶i tài, ngß¶i trë tu±i nên ra m£t báo ðáp nß¾c nhà. Ta ðã thông báo cho Lßu Ki®n Minh, cung c¤p cho nhæng anh hùng trên giang h° nhß các hÕ g¤p ðôi kinh nghi®m, ð¬ nâng cao hi®u su¤t cüa các v¸. Các hÕ có th¬ ðªn quäng trß¶ng trß¾c phü ð¬ nh§n lînh")

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x311000_OnDefaultEvent( sceneId, selfId,targetId )
	--if ( IsHaveMission(sceneId,selfId,4001) > 0) then
	--	DelMission(sceneId,selfId,4001)	
	--elseif ( IsHaveMission(sceneId,selfId,4002) > 0) then
	--	DelMission(sceneId,selfId,4002)
	--end
	x311000_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x311000_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x311000_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x311000_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x311000_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x311000_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x311000_g_eventList do
		if missionScriptId == findId then
			x311000_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x311000_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x311000_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x311000_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x311000_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x311000_OnDie( sceneId, selfId, killerId )
end
