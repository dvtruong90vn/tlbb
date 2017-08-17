--ËÕÖÝNPC ²É¿ónpc  Ñ§Ï°²É¿ó¼¼ÄÜ  Éý¼¶²É¿ó¼¼ÄÜ
--ÕÅÐ¡ºÓ
--ÆÕÍ¨

--½Å±¾ºÅ
x001039_g_ScriptId = 001039

--ÉÌµê±àºÅ
x001039_g_shoptableindex=73

--ËùÓµÓÐµÄÊÂ¼þIdÁÐ±í
--estudy_caikuang = 713508
--elevelup_caikuang = 713567
--edialog_caikuang = 713607
--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x001039_g_eventList={713508,713567,713607}
--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x001039_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"#{OBJ_suzhou_0013}")
	for i, eventId in x001039_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	--ÉÌµêÑ¡Ïî
	AddNumText(sceneId,x001039_g_ScriptId,"Mua công cø",7,ABILITY_TEACHER_SHOP)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001039_OnDefaultEvent( sceneId, selfId,targetId )
	x001039_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x001039_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText() == ABILITY_TEACHER_SHOP	then
		DispatchShopItem( sceneId, selfId,targetId, x001039_g_shoptableindex )
	end
	for i, findId in x001039_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x001039_g_ScriptId )
		return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x001039_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001039_g_eventList do
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
function x001039_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x001039_g_eventList do
		if missionScriptId == findId then
			x001039_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x001039_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001039_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x001039_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001039_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x001039_OnDie( sceneId, selfId, killerId )
end
