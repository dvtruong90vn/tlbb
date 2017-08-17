--Íõ¹ÃÄï

--½Å±¾ºÅ
x037002_g_ScriptId = 037002

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x037002_g_eventList={200015, 200016, 200085}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x037002_UpdateEventList( sceneId, selfId, targetId )

	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"#{JQ_YZW_B_002}")
	for i, eventId in x037002_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	
	--Èç¹ûÍê¼ÒÒÑ¾­Íê³ÉÁË Ö¸µãÈººÀÏ· 14£¬ÄÇÃ´¶àÒ»¸öÑ¡Ïî
	if IsMissionHaveDone( sceneId, selfId, 14 ) > 0 then  --Íê¼ÒÈç¹ûÓÐÕâ¸öÈÎÎñ
		if LuaFnGetCopySceneData_Param(sceneId, 10) == 0  then
			AddNumText( sceneId, x037002_g_ScriptId, "Chï ði¬m qu¥n hào", 10, 999 )
		end
	end
		
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x037002_OnDefaultEvent( sceneId, selfId,targetId )
	x037002_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x037002_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 999  then
		--¿ªÊ¼µãÃû
		LuaFnSetCopySceneData_Param(sceneId, 10, 1)
		LuaFnSetCopySceneData_Param(sceneId, 11, GetGameTime(sceneId, selfId))
		LuaFnSetCopySceneData_Param(sceneId, 12, GetGameTime(sceneId, selfId))
		
		--µãÃûÒ»µ©¿ªÊ¼£¬¾Í²»ÄÜÔÙÀ´Ò»´ÎÁË
		LuaFnSetCopySceneData_Param(sceneId, 25, 1)
		
		--¹Ø±Õ¿Í»§¶Ë½çÃæ
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,1000)

		return
	end
	
	for i, findId in x037002_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x037002_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x037002_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId,targetId  )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId,targetId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x037002_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x037002_g_eventList do
		if missionScriptId == findId then
			x037002_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x037002_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x037002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x037002_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x037002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x037002_OnDie( sceneId, selfId, killerId )
end
