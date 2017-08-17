--ÌìÁúËÂNPC
--ÎÊÂ·
--½Å±¾ºÅ
x013034_g_scriptId = 013034

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x013034_g_eventList={500066}	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x013034_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = " cô nß½ng "
		else
			PlayerSex = " thiªu hi®p "
		end
		AddText(sceneId,"Thiên Long Tñ là ch¯n tu hành cüa các v¸ vua nß¾c ÐÕi Lý sau khi tr¸ vì. Các hÕ m¾i ðªn, ch¾ làm phi«n h÷. Có gì khó khån ti¬u tång s¨ giúp ðÞ các hÕ.")
		for i, eventId in x013034_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x013034_OnDefaultEvent( sceneId, selfId,targetId )
	x013034_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x013034_OnEventRequest( sceneId, selfId, targetId, eventId )
	CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
	return
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x013034_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x013034_g_eventList do
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
function x013034_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x013034_g_eventList do
		if missionScriptId == findId then
			x013034_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x013034_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x013034_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x013034_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x013034_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x013034_OnDie( sceneId, selfId, killerId )
end
