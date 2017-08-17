--ÂåÑôNPC  ²É¿ónpc  Ñ§Ï°²É¿ó¼¼ÄÜ  Éý¼¶²É¿ó¼¼ÄÜ
--Ñ¦Í­´¸
--ÆÕÍ¨

--½Å±¾ºÅ
x000061_g_ScriptId = 000061

--ÉÌµê±àºÅ
x000061_g_shoptableindex=73

--ËùÓµÓÐµÄÊÂ¼þ
--estudy_caikuang = 713508
--elevelup_caikuang = 713567
--edialog_caikuang = 713607
--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000061_g_eventList={713508,713567}--,713607}
--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000061_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"#{OBJ_luoyang_0018}")
	for i, eventId in x000061_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	--ÉÌµêÑ¡Ïî
	AddNumText(sceneId,x000061_g_ScriptId,"Mua công cø",7,ABILITY_TEACHER_SHOP)
	AddNumText( sceneId, x000061_g_ScriptId, "Gi¾i thi®u khai khoáng", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000061_OnDefaultEvent( sceneId, selfId,targetId )
	x000061_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000061_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_005}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	if	GetNumText() == ABILITY_TEACHER_SHOP	then
		DispatchShopItem( sceneId, selfId,targetId, x000061_g_shoptableindex )
	end
	for i, findId in x000061_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x000061_g_ScriptId )
		return
		end
	end

end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x000061_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000061_g_eventList do
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
function x000061_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x000061_g_eventList do
		if missionScriptId == findId then
			x000061_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x000061_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000061_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x000061_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000061_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000061_OnDie( sceneId, selfId, killerId )
end
