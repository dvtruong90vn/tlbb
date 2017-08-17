--´óÀíNPC
--Ê¿±ø
--ÆÕÍ¨
--½Å±¾ºÅ
x000080_g_scriptId = 000080

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000080_g_eventList={500000}	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000080_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = " Cô nß½ng"
		else
			PlayerSex = " Thiªu hi®p"
		end
		AddText(sceneId,"  "..PlayerName..PlayerSex..", vì sñ an nguy cüa nß¾c ÐÕi T¯ng, ð¬ cho ngß¶i thân chúng ta có th¬ s¯ng yên bình, chúng tôi s¨ càng døng công t§p luy®n!")
		for i, eventId in x000080_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000080_OnDefaultEvent( sceneId, selfId,targetId )
	x000080_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000080_OnEventRequest( sceneId, selfId, targetId, eventId )
	CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
	return
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x000080_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000080_g_eventList do
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
function x000080_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x000080_g_eventList do
		if missionScriptId == findId then
			x000080_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x000080_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000080_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x000080_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000080_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000080_OnDie( sceneId, selfId, killerId )
end
