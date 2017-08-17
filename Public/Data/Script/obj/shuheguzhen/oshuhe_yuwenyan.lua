--ÊøºÓ¹ÅÕòNPC....
--²É¿ó¼¼ÄÜ´óÊ¦....

--½Å±¾ºÅ
x001180_g_ScriptId = 001180

--ËùÓµÓÐµÄÊÂ¼þIdÁÐ±í
--estudy_caikuang = 713508
--elevelup_caikuang = 713567
--edialog_caikuang = 713607
--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x001180_g_eventList={713508,713567,713607}

x001180_g_shoptableindex = 73

x001180_g_MsgInfo = { "#{SHGZ_0612_05}",
											"#{SHGZ_0620_13}",
											"#{SHGZ_0620_14}",
											"#{SHGZ_0620_15}",
										}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x001180_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local msgidx = random(getn(x001180_g_MsgInfo))
		AddText(sceneId, x001180_g_MsgInfo[msgidx])
		AddNumText( sceneId, x001180_g_ScriptId, "Mua công cø", 6, 26 )
		for i, eventId in x001180_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001180_OnDefaultEvent( sceneId, selfId,targetId )
	x001180_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x001180_OnEventRequest( sceneId, selfId, targetId, eventId )

	local	arg	= GetNumText()

  if arg == 26 then
  	DispatchShopItem( sceneId, selfId, targetId, x001180_g_shoptableindex )
  	return 0
  end

	for i, findId in x001180_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x001180_g_ScriptId )
		return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x001180_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001180_g_eventList do
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
function x001180_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x001180_g_eventList do
		if missionScriptId == findId then
			x001180_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x001180_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001180_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x001180_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001180_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end
