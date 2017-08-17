--ÂåÑôNPC   ÍõµÂ¸» Ñ§Ï°ÖýÔì¼¼ÄÜ Éý¼¶ÖýÔì¼¼ÄÜ
--Ìú½³
--ÆÕÍ¨

--½Å±¾ºÅ
x000035_g_ScriptId = 000035

--ÉÌµê±àºÅ
x000035_g_shoptableindex=64

--ËùÓµÓÐµÄÊÂ¼þIdÁÐ±í
--estudy_zhuzao = 713505
--elevelup_zhuzao = 713564
--edialog_zhuzao = 713604
--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000035_g_eventList={713505,713564,713604}
--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000035_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"#{OBJ_luoyang_0014}")
	for i, eventId in x000035_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	--ÉÌµêÑ¡Ïî
	AddNumText(sceneId,x000035_g_ScriptId,"Mua hình chª tÕo",7,ABILITY_TEACHER_SHOP)
  AddNumText(sceneId,x000035_g_ScriptId,"#{INTERFACE_XML_1194}",7,12)
	
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000035_OnDefaultEvent( sceneId, selfId,targetId )
	x000035_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==ABILITY_TEACHER_SHOP	then
		DispatchShopItem( sceneId, selfId,targetId, x000035_g_shoptableindex )
  elseif	GetNumText()==12	then
		DispatchShopItem( sceneId, selfId,targetId, 199 )  
	end
	for i, findId in x000035_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x000035_g_ScriptId )
		return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x000035_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000035_g_eventList do
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
function x000035_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x000035_g_eventList do
		if missionScriptId == findId then
			x000035_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x000035_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000035_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x000035_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000035_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000035_OnDie( sceneId, selfId, killerId )
end
