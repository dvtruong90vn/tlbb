--038002

-- ÂÌÒÂ¹¬Å® 038002

--½Å±¾ºÅ
x038002_g_ScriptId = 038002

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x038002_g_eventList={200053, 200055}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x038002_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"#{JQ_YPT_B_003}")
	for i, eventId in x038002_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	
	-- Èç¹ûÍæ¼ÒÒÑ¾­Íê³ÉÁËÈÎÎñ¡°»·Åå¿Õ¹éÔÂÒ¹»ê¡±£¬
	-- x200053_g_MissionIdÎª43
	if (IsMissionHaveDone(sceneId,selfId,43) > 0 ) then
		if LuaFnGetCopySceneData_Param(sceneId, 30) == 0 then
			AddNumText( sceneId, x038002_g_ScriptId, "Bày ti®c rßþu höi Quân Tam Ngæ", 10, 999 )
			--LuaFnSetCopySceneData_Param(sceneId, 30, 1)
		end
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x038002_OnDefaultEvent( sceneId, selfId,targetId )
	x038002_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x038002_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 999 then
		--¿ªÊ¼¾çÇé
		LuaFnSetCopySceneData_Param(sceneId, 8, 1) --¿ØÖÆËµ»°
		LuaFnSetCopySceneData_Param(sceneId, 9, GetGameTime(sceneId, selfId))	--Ê±¼ä

		LuaFnSetCopySceneData_Param(sceneId, 30, 1)
		
    BeginEvent(sceneId)
		AddText(sceneId,"Hoan nghênh các ngß½i ðã ðªn!")
    EndEvent( )
    DispatchEventList(sceneId,selfId,targetId)
		
		return
	end
	
	for i, findId in x038002_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x038002_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x038002_g_eventList do
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
function x038002_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x038002_g_eventList do
		if missionScriptId == findId then
			x038002_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x038002_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x038002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x038002_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x038002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x038002_OnDie( sceneId, selfId, killerId )
end
