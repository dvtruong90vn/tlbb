--NPC
--
--½Å±¾ºÅ
x000149_g_scriptId = 000149

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000149_g_eventList={500600}

--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000149_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC¶Ô»°
--**********************************
		AddText(sceneId,"Nhæng anh hùng bôn t¦u trên giang h° c¥n nên lßu ý, vi®c quan h® v¾i nhæng b¢ng hæu khác trên giang h° là ði«u không th¬ thiªu, nhæng b¢ng hæu nào ðã t×ng kªt bái kim lang, ho£c tß½ng ð°ng môn phái, trên giang h° loÕn lÕc này r¤t hiªm khi các hÕ tìm ðßþc.")
		
		for i, eventId in x000149_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000149_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x000149_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x000149_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000149_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId, targetId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId, missionScriptId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x000149_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x000149_g_eventList do
		if missionScriptId == findId then
			x000149_OnDefaultEvent( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x000149_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000149_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x000149_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000149_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000149_OnDie( sceneId, selfId, killerId )
end
