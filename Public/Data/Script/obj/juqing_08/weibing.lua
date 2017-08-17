--120004

-- ²ÔÃ£É½£¬°¢×Ï

--½Å±¾ºÅ
x120004_g_scriptId = 120004

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x120004_g_eventList={}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x120004_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		--
		local nRand = random( 3 )
		if nRand == 1  then
			AddText(sceneId,"Phø mçu, vþ con ta ð«u n¢m trong tay quân phän bµi, làm thª nào bây gi¶")
		elseif nRand == 2  then
			AddText(sceneId,"Hoàng ðª b® hÕ các hÕ minh th¥n vû, Tiêu ðÕi hi®p thiên hÕ vô ð¸ch, chúng ta nh¤t ð¸nh chiªn th¡ng quân tÕo phän")
		elseif nRand == 3  then
			AddText(sceneId,"Tình hình hi®n r¤t nguy c¤p, nhßng chính là lúc cho ta rình c½ hµi báo thù")
		end
		
		for i, eventId in x120004_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x120004_OnDefaultEvent( sceneId, selfId, targetId )
	x120004_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x120004_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x120004_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x120004_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x120004_g_eventList do
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
function x120004_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x120004_g_eventList do
		if missionScriptId == findId then
			x120004_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x120004_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x120004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x120004_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x120004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x120004_OnDie( sceneId, selfId, killerId )
end
