--Â¥À¼NPC....
--²ÉÒ©´óÊ¦....

--½Å±¾ºÅ
x001114_g_ScriptId = 001114
x001114_g_shoptableindex = 73

--ËùÓµÓÐµÄÊÂ¼þIdÁÐ±í
--estudy_caiyao = 713509
--elevelup_caiyao = 713568
--edialog_caiyao = 713608
--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x001114_g_eventList={713509,713568,713608}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x001114_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{LLGC_20080324_07}")
		for i, eventId in x001114_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	--ÉÌµêÑ¡Ïî
	AddNumText(sceneId,x001114_g_ScriptId,"Mua công cø",7,ABILITY_TEACHER_SHOP)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001114_OnDefaultEvent( sceneId, selfId,targetId )
	x001114_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x001114_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x001114_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x001114_g_ScriptId )
		return
		end
	end
		if	GetNumText() == ABILITY_TEACHER_SHOP	then
		DispatchShopItem( sceneId, selfId,targetId, x001114_g_shoptableindex )
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x001114_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001114_g_eventList do
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
function x001114_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x001114_g_eventList do
		if missionScriptId == findId then
			x001114_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x001114_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001114_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x001114_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001114_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end
