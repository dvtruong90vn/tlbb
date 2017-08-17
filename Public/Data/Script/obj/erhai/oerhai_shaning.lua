--Â³Æ½


--½Å±¾ºÅ
x024004_g_scriptId = 024004

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x024004_g_eventList={}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x024004_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Ta là kë m° côi, chßa bao gi¶ th¤y m£t cha m©, chính Thúc thúc nuôi ta t× bé, thúc thúc ð¯i v¾i ta nhß con ðë, ta nh¤t ð¸nh phäi tìm th¤y ông ¤y. #r#rTa ðã t×ng nhìn th¤y bÑc v¨ cô cô trong phòng cüa thúc thúc, cô cô r¤t xinh ð©p, thúc thúc m²i l¥n u¯ng say lÕi nhìn bÑc h÷a ðó, cÑ nhìn mãi. #r#rKhông biªt thúc thúc có ði tìm cô cô không?")
	for i, eventId in x024004_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x024004_OnDefaultEvent( sceneId, selfId,targetId )
	x024004_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x024004_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x024004_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x024004_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x024004_g_eventList do
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
function x024004_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x024004_g_eventList do
		if missionScriptId == findId then
			x024004_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x024004_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x024004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x024004_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x024004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x024004_OnDie( sceneId, selfId, killerId )
end

