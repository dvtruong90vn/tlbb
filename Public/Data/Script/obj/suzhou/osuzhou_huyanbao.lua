--ËÕÖÝNPC
--ºôÑÓ±ª
--ÆÕÍ¨

--½Å±¾ºÅ
x001061_g_ScriptId	= 001061

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x001061_g_EventList	= { 232000, 232001, 500618 }

--È±Ê¡¶Ô»°
x001061_g_dlg	= "ÐÕi sñ không may r°i, phÕm nhân trong thuÖ trÕi chúng ta bÕo ðµng, ph¥n l¾n binh lính lÕi ð«u r¶i h° ði luy®n t§p, khiªn ngß¶i trong thuÖ trÕi không ðü. Ta phäi c¥u cÑu Tri phü Tô Châu. Sao? Các hÕ tình nguy®n giúp chúng ta t¾i thuÖ trÕi bình ð¸nh phÕm nhân phän loÕn?"

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x001061_UpdateEventList( sceneId, selfId, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, x001061_g_dlg )

		for i, findId in x001061_g_EventList do
			if findId == 232000 or findId == 500618 then
				CallScriptFunction( findId, "OnEnumerate", sceneId, selfId, targetId )
			end
		end

		AddNumText( sceneId, x001061_g_ScriptId, "Gi¾i thi®u nhi®m vø thüy trÕi", 11, 10 )

	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001061_OnDefaultEvent( sceneId, selfId, targetId )

	x001061_UpdateEventList( sceneId, selfId, targetId )

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x001061_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 10 then
			BeginEvent(sceneId)	
					
				AddText( sceneId, "#{function_help_074}" )
								
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end

	local i				= 1
	local findId	= 0
	for i, findId in x001061_g_EventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x001061_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )

	local i				= 1
	local findId	= 0
	for i, findId in x001061_g_EventList do
		if missionScriptId == findId then
			local ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId, targetId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId, missionScriptId )
			end
			return
		end
	end

end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x001061_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )

	local i				= 1
	local findId	= 0
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x001061_g_EventList do
		if missionScriptId == findId then
			x001061_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x001061_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )

	local i				= 1
	local findId	= 0
	for i, findId in x001061_g_EventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x001061_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )

	local i				= 1
	local findId	= 0
	for i, findId in x001061_g_EventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end

end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x001061_OnDie( sceneId, selfId, killerId )
end
