-- 402240
-- ºôÑÓÇì  Ñà×ÓÎë¸±±¾ÄÚ

--½Å±¾ºÅ
x402240_g_scriptId = 402240

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x402240_g_eventList={}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x402240_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId, "#{dazhan_yzw_001}")		    				
		for i, eventId in x402240_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		
		-- Ìí¼Ómµt cáiÍË³ö¸±±¾toÕ ðµ Ñ¡Ïî
		--AddNumText( sceneId, x402240_g_scriptId, "Ç°ÍùThái H°", 9 ,1  )
		
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x402240_OnDefaultEvent( sceneId, selfId,targetId )
	x402240_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x402240_OnEventRequest( sceneId, selfId, targetId, eventId )
	
--	if GetNumText() == 1   then
--		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 4,70,121)
--		return
--	end

	for i, findId in x402240_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x402240_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x402240_g_eventList do
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
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x402240_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x402240_g_eventList do
		if missionScriptId == findId then
			x402240_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x402240_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x402240_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x402240_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x402240_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x402240_OnDie( sceneId, selfId, killerId )

end

