--Ê¯ÁÖ Ö£Ô²

--½Å±¾ºÅ
x026004_g_scriptId = 026004

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x026004_g_eventList={212124}--211705

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x026004_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)	
	AddText(sceneId,"Dù xäy ra b¤t kÏ chuy®n gì, ta vçn không tin tß¾ng công ta lÕi biªn thành Y¬n sß, ông là ngß¶i ta yêu quý nh¤t, cûng là ngß¶i thân duy nh¤t cüa ta trên thª gian này, nh¤t ð¸nh ông có n±i kh± tâm, nh¤t ð¸nh v§y. T¤t cä ð«u do l²i cüa lû Y¬n sß, t¤t cä là do l²i cüa chúng!")
	for i, eventId in x026004_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x026004_OnDefaultEvent( sceneId, selfId,targetId )
	x026004_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x026004_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x026004_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x026004_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x026004_g_eventList do
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
function x026004_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x026004_g_eventList do
		if missionScriptId == findId then
			x026004_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x026004_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x026004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x026004_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x026004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x026004_OnDie( sceneId, selfId, killerId )
end
