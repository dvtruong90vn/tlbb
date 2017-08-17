--ÊøºÓ¹ÅÕòNPC....
--ÎäÆ÷Ïà¹Ø¹¦ÄÜ....

--½Å±¾ºÅ
x001178_g_ScriptId = 001178
x001178_g_MsgInfo = { "#{SHGZ_0612_04}",
											"#{SHGZ_0620_10}",
											"#{SHGZ_0620_11}",
											"#{SHGZ_0620_12}",
										}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001178_OnDefaultEvent( sceneId, selfId, targetId )

	
	BeginEvent( sceneId )
		local msgidx = random(getn(x001178_g_MsgInfo))
		AddText( sceneId, x001178_g_MsgInfo[msgidx] )
		AddNumText( sceneId, x001178_g_ScriptId, "Giám ð¸nh tß ch¤t trang b¸", 6, 1 )
		AddNumText( sceneId, x001178_g_ScriptId, "Gi¾i thi®u giám ð¸nh tß ch¤t trang b¸", 11, 3 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x001178_OnEventRequest( sceneId, selfId, targetId, eventId )

	
	if GetNumText() == 1 then

		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1001 )

	elseif GetNumText() == 3 then
	
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_081}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return

	end

end
