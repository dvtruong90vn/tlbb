--ËÕÖÝNPC
--Ê¿±ø
--ÆÕÍ¨
--½Å±¾ºÅ
x001054_g_scriptId = 001054

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x001054_g_eventList={500020}	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x001054_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = " Cô nß½ng"
		else
			PlayerSex = " Thiªu hi®p"
		end
		AddText(sceneId,""..PlayerName..PlayerSex.." vì sñ an nguy cüa ÐÕi T¯ng, vì ngß¶i thân có th¬ yên tâm s¯ng, chúng ta phäi chåm chï luy®n t§p hàng ngày.")
		for i, eventId in x001054_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001054_OnDefaultEvent( sceneId, selfId,targetId )
	x001054_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x001054_OnEventRequest( sceneId, selfId, targetId, eventId )
	CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
	return
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x001054_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001054_g_eventList do
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
function x001054_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x001054_g_eventList do
		if missionScriptId == findId then
			x001054_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x001054_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001054_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x001054_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001054_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x001054_OnDie( sceneId, selfId, killerId )
end
