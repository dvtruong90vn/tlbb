--Ø¤°ïNPC
--·ðÓ¡
--ÆÕÍ¨

--½Å±¾ºÅ
x010002_g_scriptId = 010002

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x010002_g_eventList={221901}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x010002_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		AddText(sceneId,"Trong h¥m rßþu cüa Cái Bang quä thñc là r¤t nhi«u rßþu ngon"..PlayerName..", các hÕ không mu¯n thØ xem sao? #rTa làm hòa thßþng m¤y ngày, chÆng có gì hay, gi¶ làm kh¤t cái, m¾i th¤y bõ ð¶i")
		for i, findId in x010002_g_eventList do
			CallScriptFunction( x010002_g_eventList[i], "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x010002_OnDefaultEvent( sceneId, selfId,targetId )
	x010002_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x010002_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x010002_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x010002_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x010002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x010002_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x010002_g_eventList do
		if missionScriptId == findId then
			x010002_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x010002_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x010002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x010002_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x010002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x010002_OnDie( sceneId, selfId, killerId )
end

