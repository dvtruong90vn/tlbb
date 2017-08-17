--ÕÂª

--½Å±¾ºÅ
x000006_g_scriptId = 000006

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000006_g_eventList={201511,201512,50015}		

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000006_UpdateEventList( sceneId, selfId,targetId )

	BeginEvent(sceneId)

		local strText = "Ngày nay thiên hÕ ðµng loÕn, b¯n b« gi£c cß¾p. Tri«u ðình mu¯n mau chóng yên xã tác, cho muôn dân cuµc s¯ng thanh bình, kêu g÷i các anh hùng ra tay trþ giúp d©p loÕn. Ngß¶i có công d©p loÕn s¨ ðßþc b±n Th×a tß¾ng phong t£ng tß¾c hi®u cao quý"
		AddText( sceneId, strText )
	
	for i, eventId in x000006_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000006_OnDefaultEvent( sceneId, selfId,targetId )
	x000006_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000006_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x000006_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x000006_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000006_g_eventList do
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
function x000006_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x000006_g_eventList do
		if missionScriptId == findId then
			x000006_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x000006_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x000006_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000006_OnDie( sceneId, selfId, killerId )
end
