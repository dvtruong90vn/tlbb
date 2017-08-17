--ÊøºÓ¹ÅÕòNPC....
--¹¤ÒÕ´óÊ¦....

--½Å±¾ºÅ
x001200_g_ScriptId = 001200

--ËùÓµÓÐµÄÊÂ¼þIdÁÐ±í
--estudy_gongyi = 713507
--elevelup_gongyi = 713566
--edialog_gongyi = 713606
--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x001200_g_eventList={713507,713566,713606}

x001200_g_shoptableindex = 69

x001200_g_MsgInfo = { "#{SHGZ_0612_17}",
											"#{SHGZ_0620_49}",
											"#{SHGZ_0620_50}",
											"#{SHGZ_0620_51}",
										}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x001200_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local msgidx = random(getn(x001200_g_MsgInfo))
		AddText(sceneId, x001200_g_MsgInfo[msgidx])
		AddNumText( sceneId, x001200_g_ScriptId, "Mua hình chª tÕo", 7, 32 )
		AddNumText( sceneId, x001200_g_ScriptId, "#{INTERFACE_XML_1196}", 7, 33 )

		for i, eventId in x001200_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001200_OnDefaultEvent( sceneId, selfId,targetId )
	x001200_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x001200_OnEventRequest( sceneId, selfId, targetId, eventId )

	local	arg	= GetNumText()

  if arg == 32 then
  	DispatchShopItem( sceneId, selfId, targetId, x001200_g_shoptableindex )
  elseif arg == 33 then
    DispatchShopItem( sceneId, selfId, targetId, 204 ) 	
    return 0
  end

	for i, findId in x001200_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x001200_g_ScriptId )
		return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x001200_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001200_g_eventList do
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
function x001200_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x001200_g_eventList do
		if missionScriptId == findId then
			x001200_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x001200_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001200_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x001200_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001200_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end
