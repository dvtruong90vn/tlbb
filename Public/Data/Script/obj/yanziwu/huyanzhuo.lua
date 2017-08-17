-- 402241
-- ºôÑÓ×Æ   Ñà×ÓÎë¸±±¾ÄÚ

--Thái H° Àî¸Ù

--½Å±¾ºÅ
x402241_g_scriptId = 402241

x402241_g_SceneData_1 = 8

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x402241_g_eventList={}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x402241_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		
		if LuaFnGetCopySceneData_Param(sceneId, 8) < 10  then
			AddText(sceneId, "#{dazhan_yzw_002}")
		elseif LuaFnGetCopySceneData_Param(sceneId, 8) >= 10  then
			AddText(sceneId, "#{dazhan_yzw_003}")
		end	
		
		
		if LuaFnGetCopySceneData_Param(sceneId, 8) == 1  then
			AddNumText( sceneId, x402241_g_scriptId, "SÇn Sàng Chiªn Ð¤u", 10 ,1  )
			--AddNumText( sceneId, x402241_g_scriptId, "Ö±½ÓÌøµ½µÚ¶þ¹Ø", 10 ,2  )
		end
		
		for i, eventId in x402241_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x402241_OnDefaultEvent( sceneId, selfId,targetId )
	x402241_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x402241_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 1  then
		-- ¼ì²âµ±Ç°Ðúng²»ÐúngTÕi Ïà¹Ø¸±±¾,ÕâÀï±ØÐëÒª×ö°²È«¼ì²é,ÏÖTÕi ÏÖ²»×ö
		if GetName(sceneId, targetId) ~= "Hô Diên Báo"  then
			return
		end
		
		if LuaFnGetCopySceneData_Param(sceneId, 8) == 1  then
			LuaFnSetCopySceneData_Param(sceneId, 8, 2)
		end

		-- ¹Ø±Õ½çÃæ
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		
		return
	end
	
	if GetNumText() == 2  then
		-- ¼ì²âµ±Ç°Ðúng²»ÐúngTÕi Ïà¹Ø¸±±¾,ÕâÀï±ØÐëÒª×ö°²È«¼ì²é,ÏÖTÕi ÏÖ²»×ö
		if GetName(sceneId, targetId) ~= "Hô Diên Báo"  then
			return
		end
		
		if LuaFnGetCopySceneData_Param(sceneId, 8) == 1  then
			LuaFnSetCopySceneData_Param(sceneId, 8, 10)
		end
		BeginEvent(sceneId)
			AddText(sceneId, "CØa thÑ hai ðã m· ra.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

		return
	end

	for i, findId in x402241_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x402241_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x402241_g_eventList do
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
function x402241_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x402241_g_eventList do
		if missionScriptId == findId then
			x402241_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x402241_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x402241_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x402241_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x402241_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x402241_OnDie( sceneId, selfId, killerId )
	LuaFnSetCopySceneData_Param(sceneId, 26, 500)
end

