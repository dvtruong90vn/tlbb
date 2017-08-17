--402246
-- Ç®ºêÓî

--½Å±¾ºÅ
x402246_g_scriptId = 402246

x402246_g_SceneData_1 = 8

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x402246_g_eventList={}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x402246_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local nStep = LuaFnGetCopySceneData_Param(sceneId, 8)
		if nStep==11   then
			AddText(sceneId, "#{dazhan_yzw_004}")
		elseif nStep == 15  then
			AddText(sceneId, "#{dazhan_yzw_006}")
		else
			AddText(sceneId, "#{dazhan_yzw_005}")
		end

		for i, eventId in x402246_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		
		if nStep == 10  then
			AddNumText( sceneId, x402246_g_scriptId, "Bäo v® Tiên Hoành Vû", 10 ,1  )
		end
			
		if nStep < 14  then
			--AddNumText( sceneId, x402246_g_scriptId, "Ö±½Ó¿ªÊ¼µÚ3¹Ø", 10 ,2  )
		end
		
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x402246_OnDefaultEvent( sceneId, selfId,targetId )
	x402246_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x402246_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 1  then
		-- ¼ì²âµ±Ç°Ðúng²»ÐúngTÕi Ïà¹Ø¸±±¾,ÕâÀï±ØÐëÒª×ö°²È«¼ì²é,ÏÖTÕi ÏÈ²»×ö
		if GetName(sceneId, targetId) ~= "Tiên Hoành Vû"  then
			return
		end
		
		if LuaFnGetCopySceneData_Param(sceneId, 8) == 10  then
			LuaFnSetCopySceneData_Param(sceneId, 8, 11)
		end
		
		-- ¹Ø±Õ½çÃæ
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
	
	if GetNumText() == 2  then
		LuaFnSetCopySceneData_Param(sceneId, 8, 15)
		
		--Í¬Ê±Ë¢³öC¥n toÕ ðµ ºóÐø¹Ö
		CallScriptFunction( 401040, "CreateMonster_9",sceneId )
		CallScriptFunction( 401040, "CreateMonster_10",sceneId )
		CallScriptFunction( 401040, "CreateMonster_11",sceneId )
		
		BeginEvent(sceneId)
			AddText(sceneId, "  CØa thÑ 3 ðã m·")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end

	for i, findId in x402246_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
	
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x402246_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x402246_g_eventList do
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
function x402246_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x402246_g_eventList do
		if missionScriptId == findId then
			x402246_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x402246_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x402246_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x402246_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x402246_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x402246_OnDie( sceneId, selfId, killerId )
	LuaFnSetCopySceneData_Param(sceneId, 26, 501)
end

