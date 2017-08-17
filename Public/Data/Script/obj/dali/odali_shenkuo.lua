--´óÀíNPC
--ÉòÀ¨
--ÆÕÍ¨

--½Å±¾ºÅ
x002001_g_scriptId = 002001

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x002001_g_eventList={212128,212131}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x002001_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"ÐÕi Lý Qu¯c cûng nhi«u tài nguyên khoáng sän quý. Không u±ng ta mµt chuyªn t× Biªn Kinh t¾i ðây...")
		for i, eventId in x002001_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		
		-- ÁìÈ¡³ÆºÅ
		if (IsMissionHaveDone(sceneId,selfId, 253) > 0 ) then
			AddNumText(sceneId, x002001_g_scriptId, "Nh§n danh hi®u", 6, 999);
		end
		
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002001_OnDefaultEvent( sceneId, selfId,targetId )
	x002001_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002001_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText()==999  then
		LuaFnAwardTitle( sceneId, selfId,  9, 233)
		SetCurTitle(sceneId, selfId,  9, 233)
		LuaFnDispatchAllTitle(sceneId, selfId)
		return
	end
	
	for i, findId in x002001_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x002001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002001_g_eventList do
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
function x002001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x002001_g_eventList do
		if missionScriptId == findId then
			x002001_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x002001_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x002001_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x002001_OnDie( sceneId, selfId, killerId )
end
