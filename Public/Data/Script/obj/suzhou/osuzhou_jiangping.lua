--ËÕÖÝNPC		µöÓãnpc		1Éý¼¶µöÓã¼¼ÄÜ		2µöÓã¼¼ÄÜËµÃ÷
--½¯Æ½
--ÆÕÍ¨
--ÒÑÊ¹ÓÃÊÂ¼þ±àºÅ 0-Ñ§Ï°¼¼ÄÜ 2-È·¶¨Ñ§Ï°	3-·ÅÆúÑ§Ï°	
--½Å±¾ºÅ
x001032_g_ScriptId = 001032

--ÉÌµê±àºÅ
x001032_g_shoptableindex=73

--ËùÓµÓÐµÄÊÂ¼þIdÁÐ±í
--estudy_diaoyu = 713510
--elevelup_diaoyu = 713569
--edialog_diaoyu = 713609
--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x001032_g_eventList={713510,713569}--,713609}
--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x001032_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"#{OBJ_suzhou_0011}")
	for i, eventId in x001032_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	--ÉÌµêÑ¡Ïî
	AddNumText(sceneId,x001032_g_ScriptId,"Mua công cø",7,ABILITY_TEACHER_SHOP)
	AddNumText( sceneId, x001032_g_ScriptId, "Gi¾i thi®u câu cá", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001032_OnDefaultEvent( sceneId, selfId,targetId )
	x001032_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x001032_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_003}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	if	GetNumText() == ABILITY_TEACHER_SHOP	then
		DispatchShopItem( sceneId, selfId,targetId, x001032_g_shoptableindex )
	end
	for i, findId in x001032_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x001032_g_ScriptId )
		return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x001032_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001032_g_eventList do
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
function x001032_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x001032_g_eventList do
		if missionScriptId == findId then
			x001032_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x001032_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001032_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x001032_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001032_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x001032_OnDie( sceneId, selfId, killerId )
end
