--ÂåÑôNPC ¹¤ÒÕ¼¼ÄÜNPC   °üº¬¹¦ÄÜ£º1¹¤ÒÕ¼¼ÄÜµÄÑ§Ï° 2½²½â¹¤ÒÕ¼¼ÄÜ
--ÁúÈýÉÙ
--ÆÕÍ¨

--½Å±¾ºÅ
x000106_g_ScriptId = 000106

--ÉÌµê±àºÅ
x000106_g_shoptableindex=66

--ËùÓµÓÐµÄÊÂ¼þIdÁÐ±í
--estudy_gongyi = 713507
--elevelup_gongyi = 713566
--edialog_gongyi = 713606
--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000106_g_eventList={713507,713566}--,713606}
--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000106_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"#{OBJ_luoyang_0029}")
	for i, eventId in x000106_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	--ÉÌµêÑ¡Ïî
	AddNumText(sceneId,x000106_g_ScriptId,"Mua hình mçu",7,ABILITY_TEACHER_SHOP)
  AddNumText(sceneId,x000106_g_ScriptId,"#{INTERFACE_XML_1196}",7,12)	
	AddNumText( sceneId, x000106_g_ScriptId, "Gi¾i thi®u công ngh®", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000106_OnDefaultEvent( sceneId, selfId,targetId )
	x000106_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000106_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_009}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	if	GetNumText()==ABILITY_TEACHER_SHOP	then
		DispatchShopItem( sceneId, selfId,targetId, x000106_g_shoptableindex )
  elseif	GetNumText()==12	then
		DispatchShopItem( sceneId, selfId,targetId, 201 )
	end
	for i, findId in x000106_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x000106_g_ScriptId )
		return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x000106_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000106_g_eventList do
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
function x000106_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x000106_g_eventList do
		if missionScriptId == findId then
			x000106_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x000106_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000106_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x000106_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000106_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000106_OnDie( sceneId, selfId, killerId )
end
