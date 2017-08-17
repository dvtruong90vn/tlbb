--ÐÇËÞNPC
--ºìÓñ
--ÆÕÍ¨

--ÎåÉñ¶´¸±±¾ÈÎÎñnpc

--½Å±¾ºÅ
x016002_g_scriptId = 016002


--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x016002_g_eventList={227901}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x016002_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		AddText(sceneId,"  "..PlayerName..", trong Ngû Th¥n Ðµng có r¤t nhi«u quái v§t ð¤y, chï có Thª Trung ca ca khi ði cùng v¾i ta thì ta m¾i dám vào trong ðó. Ngß½i cûng mu¯n vào trong Ngû th¥n ðµng khiêu chiªn hay sao?")
		for i, findId in x016002_g_eventList do
			CallScriptFunction( x016002_g_eventList[i], "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x016002_OnDefaultEvent( sceneId, selfId,targetId )
	x016002_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x016002_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x016002_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x016002_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x016002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId , targetId)
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x016002_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x016002_g_eventList do
		if missionScriptId == findId then
			x016002_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x016002_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x016002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x016002_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x016002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x016002_OnDie( sceneId, selfId, killerId )
end

