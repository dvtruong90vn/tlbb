--·ï³¯Ñô

--½Å±¾ºÅ
x002037_g_scriptId = 002037


--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x002037_g_eventList={}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x002037_UpdateEventList( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "Cô nß½ng"
	else
		PlayerSex = "Thiªu hi®p"
	end
	BeginEvent(sceneId)
			AddText(sceneId,"  "..PlayerName..PlayerSex..", nªu ngß½i mu¯n cùng ngß¶i khác lu§n bàn võ công, hãy lên trên Lôi Ðài ði!")
			AddNumText(sceneId,x002037_g_scriptId,"Ðªn Lôi Ðài",11,0)
	for i, eventId in x002037_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002037_OnDefaultEvent( sceneId, selfId,targetId )
	x002037_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002037_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText() == 0	then
		BeginEvent(sceneId)
			local  PlayerName=GetName(sceneId,selfId)
			AddText(sceneId,"#{OBJ_dali_0055}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	for i, findId in x002037_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x002037_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002037_g_eventList do
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
function x002037_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x002037_g_eventList do
		if missionScriptId == findId then
			x002037_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x002037_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002037_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x002037_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002037_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x002037_OnDie( sceneId, selfId, killerId )
end
