--ÓñÏªNPC
--°¢ºÚ
--ÆÕÍ¨

x027004_g_scriptId = 027004

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x027004_g_eventList={212111}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x027004_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
		AddText(sceneId,"TÕi sao ðôi thanh mai trúc mã t× nhö sau khi trß·ng thành cÑ nh¤t ð¸nh phäi s¯ng bên nhau? #r#rTa th¤y th§t khó hi¬u. TÕi sao m÷i ngß¶i ð«u cho r¢ng nhß v§y là..., ta có nên cÑu A Thi Mã không? Nàng là bÕn hæu t¯t nh¤t, nhßng... #r#rTÕi sao? TÕi sao? Ngay cä A Y Na ð«u cho r¢ng ta và A Thi Mã là ðôi kim ð°ng ng÷c næ?")
	for i, eventId in x027004_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x027004_OnDefaultEvent( sceneId, selfId,targetId )
	x027004_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x027004_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x027004_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x027004_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x027004_g_eventList do
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
function x027004_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x027004_g_eventList do
		if missionScriptId == findId then
			x027004_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x027004_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	
	for i, findId in x027004_g_eventList do
		if 212111 == findId then
			CallScriptFunction( 212111, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x027004_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x027004_g_eventList do
		if 212111 == findId then
			CallScriptFunction( 212111, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x027004_OnDie( sceneId, selfId, killerId )
end
