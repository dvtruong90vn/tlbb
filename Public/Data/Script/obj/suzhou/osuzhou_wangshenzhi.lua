--ËÕÖÝNPC ²ÉÒ©¼¼ÄÜNPC   °üº¬¹¦ÄÜ£º1²ÉÒ©¼¼ÄÜµÄÑ§Ï° 2½²½â²ÉÒ©¼¼ÄÜ
--ÍõÉóÖ¥
--ÆÕÍ¨

--½Å±¾ºÅ
x001044_g_ScriptId = 001044

--ÉÌµê±àºÅ
x001044_g_shoptableindex=73

--ËùÓµÓÐµÄÊÂ¼þIdÁÐ±í
--estudy_caiyao = 713509
--elevelup_caiyao = 713568
--edialog_caiyao = 713608
--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x001044_g_eventList={713509,713568,713608}
--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x001044_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"#{OBJ_suzhou_0017}")
	for i, eventId in x001044_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	--ÉÌµêÑ¡Ïî
	AddNumText(sceneId,x001044_g_ScriptId,"Mua công cø",7,ABILITY_TEACHER_SHOP)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001044_OnDefaultEvent( sceneId, selfId,targetId )
	x001044_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x001044_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText() == ABILITY_TEACHER_SHOP	then
		DispatchShopItem( sceneId, selfId,targetId, x001044_g_shoptableindex )
	end
	for i, findId in x001044_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x001044_g_ScriptId )
		return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x001044_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001044_g_eventList do
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
function x001044_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x001044_g_eventList do
		if missionScriptId == findId then
			x001044_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x001044_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001044_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x001044_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001044_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x001044_OnDie( sceneId, selfId, killerId )
end
