--´óÀíNPC
--ÉêÇé
--ÕäÊÞÖ¸µ¼

--½Å±¾ºÅ
x002069_g_ScriptId = 002069

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x002069_g_eventList={808097, 808098, 808099, 808093}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002069_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "Cô nß½ng"
	else
		PlayerSex = "Thiªu hi®p"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  "..PlayerName..PlayerSex..", cái gì ngß½i không rõ v« trân thú cÑ höi ta...")
		
		for i, eventId in x002069_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		
		AddNumText(sceneId,x002069_g_ScriptId,"Sinh m®nh trân thú",11,0)
		AddNumText(sceneId,x002069_g_ScriptId,"Khoái lÕc trân thú",11,1)
		AddNumText(sceneId,x002069_g_ScriptId,"Thång c¤p trân thú",11,2)
		AddNumText(sceneId,x002069_g_ScriptId,"Thu phøc trân thú",11,3)

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x002069_OnEventRequest( sceneId, selfId, targetId, eventId )

	for i, findId in x002069_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end

	if	GetNumText() == 0	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{OBJ_dali_0041}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif	GetNumText() == 1	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{OBJ_dali_0042}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)		
	elseif	GetNumText() == 2	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{OBJ_dali_0043}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif	GetNumText() == 3	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{OBJ_dali_0044}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end

end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x002069_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002069_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId, targetId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId, missionScriptId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x002069_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x002069_g_eventList do
		if missionScriptId == findId then
			x002069_OnDefaultEvent( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x002069_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002069_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x002069_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002069_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x002069_OnDie( sceneId, selfId, killerId )
end
