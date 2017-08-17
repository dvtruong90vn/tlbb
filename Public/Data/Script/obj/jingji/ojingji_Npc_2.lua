-- 125012
-- ¸´»îÉè¶¨

--½Å±¾ºÅ
x125012_g_scriptId = 125012

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x125012_g_eventList={}

x125012_g_Position = {
				{x=143,z=151,name="PhÕm Chung Ly"},
				{x=28, z=152,name="ThÕch Thª Sùng"},
				{x=149,z=80,name="Ð£ng Ð¸nh Thông"},
				{x=36, z=49,name="Lßþng VÕn Kí"},
}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x125012_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ngß½i mu¯n ð¸nh ði¬m h°i sinh cüa ngß½i · n½i này sao?");
		for i, eventId in x125012_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		
		AddNumText( sceneId, x125012_g_scriptId, "Ð¸nh ði¬m h°i sinh cüa ta · n½i này" ,9 ,1  )
		
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x125012_OnDefaultEvent( sceneId, selfId,targetId )
	x125012_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x125012_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText()==1  then
		local nIndex = 0
		for i=1, 4  do
			if GetName(sceneId, targetId) == x125012_g_Position[i].name  then
				nIndex = i
			end
		end

		--SetPlayerDefaultReliveInfo( sceneId, selfId, "%100", "%100", "0", 
		--			sceneId, x125012_g_Position[nIndex].x, x125012_g_Position[nIndex].z )
		
		SetPlayerDefaultReliveInfoEx( sceneId, selfId, "%100", "%100", "0", 
						sceneId, 
						x125012_g_Position[nIndex].x, 
						x125012_g_Position[nIndex].z, 
						125020 )
					
		BeginEvent(sceneId)
			AddText(sceneId,"Ði¬m h°i sinh cüa ngß½i ðã thiªt l§p n½i này.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
		-- ¸øÒ»¸öÌØÐ§
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, 
										selfId, 152, 100 )
		
		return
	end
	for i, findId in x125012_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x125012_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x125012_g_eventList do
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
function x125012_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x125012_g_eventList do
		if missionScriptId == findId then
			x125012_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x125012_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x125012_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x125012_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x125012_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x125012_OnDie( sceneId, selfId, killerId )
end
