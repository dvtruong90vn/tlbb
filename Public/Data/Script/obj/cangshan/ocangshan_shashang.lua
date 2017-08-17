--¸Ê±¦±¦

--½Å±¾ºÅ
x025002_g_scriptId = 025002

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x025002_g_eventList={}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x025002_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"Ðây là Quan Nguy®t Ðình · Thß½ng S½n, phía trß¾c chính là Nhî Häi, vào m²i ðêm trång, Nhî Häi phong ðình nß¾c tînh, ánh trång sáng vàng v£c hòa trong m£t h°, nhß ngàn vÕn vì sao l¤p lánh, muôn ngàn con sóng bÕc lån tån. #r#rVách núi ð¯i di®n là V÷ng Tuyªt Nhai, ðÑng trên vách núi ðó có th¬ nhìn th¤y tuyªt tr¡ng trên ðïnh Tang S½n. Tuyªt tr¡ng phau phau nhß khoác chiªc áo tr¡ng tinh, dß¾i ánh m£t tr¶i chiªu r÷i, tr¡ng sáng long lanh. #r#rCänh ð©p nhß v§y mà ðã lâu mà sao không có ai dám t¾i thß·ng thÑc...");
	for i, eventId in x025002_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x025002_OnDefaultEvent( sceneId, selfId,targetId )
	x025002_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x025002_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x025002_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x025002_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x025002_g_eventList do
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
function x025002_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x025002_g_eventList do
		if missionScriptId == findId then
			x025002_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x025002_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x025002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x025002_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x025002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x025002_OnDie( sceneId, selfId, killerId )
end
