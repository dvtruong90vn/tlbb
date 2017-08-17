--ËÕÖÝNPC
--Íõ°²Ê¯
--Ò»°ã

--½Å±¾ºÅ
x001000_g_scriptId = 001000

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x001000_g_eventList={212130, 212133}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x001000_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Thi®n tai không ðáng sþ, phép t¡c cüa t± tông không ðáng ð¬ mô phöng mµt cách cÑng nh¡c, nhæng l¶i nói cüa các thói tøc hü l§u không ðáng phäi lo l¡ng.")
		for i, eventId in x001000_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end

		-- ÁìÈ¡³ÆºÅ
		if (IsMissionHaveDone(sceneId,selfId, 255) > 0 ) then
			AddNumText(sceneId, x001000_g_scriptId, "Nh§n danh hi®u", 6, 999);
		end

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001000_OnDefaultEvent( sceneId, selfId,targetId )
	x001000_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x001000_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText()==999  then
		LuaFnAwardTitle( sceneId, selfId,  11, 235)
		SetCurTitle(sceneId, selfId,  11, 235)
		LuaFnDispatchAllTitle(sceneId, selfId)
		return
	end

	for i, findId in x001000_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x001000_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001000_g_eventList do
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
function x001000_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x001000_g_eventList do
		if missionScriptId == findId then
			x001000_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x001000_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001000_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x001000_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001000_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x001000_OnDie( sceneId, selfId, killerId )
end
