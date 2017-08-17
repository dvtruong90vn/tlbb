--Â³Æ½


--½Å±¾ºÅ
x031006_g_scriptId = 031006

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x031006_g_eventList={}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x031006_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Nghe nói Pháp Ni®m sß huynh trß¾c khi xu¤t gia ðã có quan h® ð£c bi®t v¾i v¸ sß phø ðúc kiªm danh tiªng Lôi Hoán, chÆng biªt thñc hß ra sao. #r#rCó ði«u, m²i nåm tiªt Thanh Minh ð«u th¤y mµt næ thí chü che m£t ðªn tìm sß huynh, nhßng mà sß huynh không h« g£p m£t, h×, #r#rNghi®p chß¾ng!")
	for i, eventId in x031006_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x031006_OnDefaultEvent( sceneId, selfId,targetId )
	x031006_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x031006_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x031006_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x031006_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x031006_g_eventList do
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
function x031006_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x031006_g_eventList do
		if missionScriptId == findId then
			x031006_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x031006_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x031006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x031006_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x031006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x031006_OnDie( sceneId, selfId, killerId )
end

