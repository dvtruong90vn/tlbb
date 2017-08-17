--ÏôÇ¾

--½Å±¾ºÅ
x020003_g_scriptId = 020003

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x020003_g_eventList={212125}--211102,211103,211104,211107,211106}	--211108,211105

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x020003_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	local IsStepDone1 = IsHaveMission(sceneId,selfId,542)
	local IsStepDone2 = IsHaveMission(sceneId,selfId,543)
	local IsStepDone3 = IsHaveMission(sceneId,selfId,544)
	local IsStepDone4 = IsHaveMission(sceneId,selfId,548)
	
	--Íê³É¡°Áé»êµÄºô»½¡±ÈÎÎñÖ®ºó
	if IsStepDone4 == 1 then
		AddText(sceneId,"  "..PlayerName.."#{OBJ_caoyuan_0004}")
	--Ã»ÓÐÍê³É¡°¿¤Ö÷µÄÃüÁî¡±¡¢¡°Âí·ËÊ×Áì¡±¡¢¡°Ó¢ÐÛµÄÖ¤Ã÷¡±ÈÎÎñÖ®Ç°
	elseif IsStepDone1 == 0 and IsStepDone2 == 0 and IsStepDone3 == 0 then
		AddText(sceneId,"Ngß½i chính là "..PlayerName.."? #r#rCa ca t× #G NhÕn B¡c#W gØi thß t¾i nói ngß½i là 1 anh hùng, kêu ta tiªp ðãi tØ tª. Nhßng ta th¤y ngß½i không gi¯ng 1 anh hùng")
	--Íê³É¡°Áé»êµÄºô»½¡±ÈÎÎñÖ®Ç°
	else
		AddText(sceneId,"Ta không phäi là ngß¶i ai nói gì cûng tin. Nªu ngß½i thñc sñ là 1 anh hùng, ta tñ kh¡c tiªp ðãi ngß½i tØ tª")
	end
	for i, eventId in x020003_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x020003_OnDefaultEvent( sceneId, selfId,targetId )
	x020003_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x020003_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x020003_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x020003_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x020003_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x020003_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x020003_g_eventList do
		if missionScriptId == findId then
			x020003_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x020003_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x020003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x020003_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x020003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x020003_OnDie( sceneId, selfId, killerId )
end
