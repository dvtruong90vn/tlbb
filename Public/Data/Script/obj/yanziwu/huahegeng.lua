-- 402249
-- »ªºÕôÞ


--½Å±¾ºÅ
x402249_g_scriptId = 402249

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x402249_g_eventList={}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x402249_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local nStep = LuaFnGetCopySceneData_Param(sceneId, 8)
		AddText(sceneId, "#{dazhan_yzw_007}")
		if GetName(sceneId, targetId) == "Hoa Hách C¤n" then
			if nStep == 15  then
				AddNumText( sceneId, x402249_g_scriptId, "Tiªn vào Yªn TØ ‘", 9 ,1  )
			end
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x402249_OnDefaultEvent( sceneId, selfId,targetId )
	x402249_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x402249_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1  then
		--local nStep = LuaFnGetCopySceneData_Param(sceneId, 8)
		--if nStep == 14  then
			-- ´«ËÍÍæ¼Òµ½mµt cáiÐÂtoÕ ðµ Î»ÖÃ
			SetPos(sceneId, selfId, 154, 96)
		--end
		return
	end
	
	for i, findId in x402249_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x402249_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x402249_g_eventList do
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
function x402249_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x402249_g_eventList do
		if missionScriptId == findId then
			x402249_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x402249_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x402249_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x402249_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x402249_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x402249_OnDie( sceneId, selfId, killerId )

end

