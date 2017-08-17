--ÊøºÓ¹ÅÕòNPC....
--²ÉÒ©´óÊ¦....

--½Å±¾ºÅ
x001189_g_ScriptId = 001189

--ËùÓµÓÐµÄÊÂ¼þIdÁÐ±í
--estudy_caiyao = 713509
--elevelup_caiyao = 713568
--edialog_caiyao = 713608
--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x001189_g_eventList={713509,713568,713608}

x001189_g_shoptableindex = 73

x001189_g_MsgInfo = { "#{SHGZ_0612_11}",
											"#{SHGZ_0620_31}",
											"#{SHGZ_0620_32}",
											"#{SHGZ_0620_33}",
										}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x001189_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local msgidx = random(getn(x001189_g_MsgInfo))
		AddText(sceneId, x001189_g_MsgInfo[msgidx])
		AddNumText( sceneId, x001189_g_ScriptId, "Mua công cø", 6, 29 )
		for i, eventId in x001189_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001189_OnDefaultEvent( sceneId, selfId,targetId )
	x001189_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x001189_OnEventRequest( sceneId, selfId, targetId, eventId )

	local	arg	= GetNumText()

  if arg == 29 then
  	DispatchShopItem( sceneId, selfId, targetId, x001189_g_shoptableindex )
  	return 0
  end

	for i, findId in x001189_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x001189_g_ScriptId )
		return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x001189_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001189_g_eventList do
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
function x001189_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x001189_g_eventList do
		if missionScriptId == findId then
			x001189_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x001189_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001189_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x001189_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001189_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end
