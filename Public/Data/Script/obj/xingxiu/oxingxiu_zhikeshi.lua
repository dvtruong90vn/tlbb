--ÐÇËÞNPC
--ÎÊÂ·
--½Å±¾ºÅ
x016034_g_scriptId = 016034

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x016034_g_eventList={500067}	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x016034_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = " cô nß½ng "
		else
			PlayerSex = " thiªu hi®p "
		end
		AddText(sceneId,"Tinh Túc Häi ðµc trùng kh¡p n½i, nªu không c¦n th§n các hÕ có th¬ s¨ bö mÕng chï vì mµt con rªt con. T¯t nh¤t hãy t¾i ðây tÕi hÕ chï ðß¶ng r°i các hÕ hãy vào bái kiªn chß·ng môn nhé.")
		for i, eventId in x016034_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x016034_OnDefaultEvent( sceneId, selfId,targetId )
	x016034_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x016034_OnEventRequest( sceneId, selfId, targetId, eventId )
	CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
	return
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x016034_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x016034_g_eventList do
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
function x016034_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x016034_g_eventList do
		if missionScriptId == findId then
			x016034_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x016034_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x016034_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x016034_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x016034_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x016034_OnDie( sceneId, selfId, killerId )
end
