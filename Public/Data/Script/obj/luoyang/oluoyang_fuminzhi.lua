--ÂåÑôNPC		·ìÈÒnpc		1Ñ§Ï°·ìÈÒ¼¼ÄÜ		2ÖÐÒ½¼¼ÄÜËµÃ÷
--·ûÃôÖ®
--Éú»î¼¼ÄÜnpc

--½Å±¾ºÅ
x000067_g_ScriptId = 000067

--ÉÌµê±àºÅ
x000067_g_shoptableindex=65

--ËùÓµÓÐµÄÊÂ¼þIdÁÐ±í
--estudy_fengren = 713506
--elevelup_fengren = 713565
--edialog_fengren = 713605
--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000067_g_eventList={713506,713565}--,713605}
--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000067_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"#{OBJ_luoyang_0020}")
	for i, eventId in x000067_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	--ÉÌµêÑ¡Ïî
	AddNumText(sceneId,x000067_g_ScriptId,"Mua hình mçu",7,ABILITY_TEACHER_SHOP)
	AddNumText(sceneId,x000067_g_ScriptId,"#{INTERFACE_XML_1195}",7,12)      
	AddNumText( sceneId, x000067_g_ScriptId, "Gi¾i thi®u may vá", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000067_OnDefaultEvent( sceneId, selfId,targetId )
	x000067_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000067_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_010}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	if	GetNumText()==ABILITY_TEACHER_SHOP	then
		DispatchShopItem( sceneId, selfId,targetId, x000067_g_shoptableindex )
	elseif GetNumText()==12	then
		DispatchShopItem( sceneId, selfId,targetId, 200 ) 
	end
	for i, findId in x000067_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x000067_g_ScriptId )
		return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x000067_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000067_g_eventList do
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
function x000067_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x000067_g_eventList do
		if missionScriptId == findId then
			x000067_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x000067_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000067_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x000067_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000067_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000067_OnDie( sceneId, selfId, killerId )
end
