--ÌìÉ½NPC
--À¼½£
--ÆÕÍ¨

x017002_g_scriptId = 017002

x017002_g_eventList = { 228902 }

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x017002_OnDefaultEvent( sceneId, selfId, targetId )
	x017002_g_MenPai = GetMenPai( sceneId, selfId )
	if x017002_g_MenPai == 7 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{TSJZ_081103_04}" )

			for i, eventId in x017002_g_eventList do
				CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
			end

			AddNumText( sceneId, x017002_g_scriptId, "KÛ nång h÷c t§p", 12, 0 )
			AddNumText( sceneId, x017002_g_scriptId, "Gi¾i thi®u v« tâm pháp", 11, 10 )
			--AddNumText(sceneId, x017002_g_scriptId, "#{JZBZ_081031_02}",11,11)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	else
		BeginEvent( sceneId )
			AddText( sceneId, "Thñc ra ta là nh¸ sß tÖ trong ðám ð® tØ cüa phái Thiên S½n, Mai Kiªm tÖ tÖ m¾i là ðÕi sß tÖ. Hì hì" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x017002_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x017002_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end

	if GetNumText() == 10 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_xinfajieshao_001}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	elseif GetNumText() == 11 then
		BeginEvent(sceneId)					
			AddText( sceneId, "#{JZBZ_081031_01}" )							
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	DispatchXinfaLevelInfo( sceneId, selfId, targetId, 7 )
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x017002_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x017002_g_eventList do
		if missionScriptId == findId then
			local ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
			end

			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x017002_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x017002_g_eventList do
		if missionScriptId == findId then
			x017002_OnDefaultEvent( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x017002_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x017002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x017002_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x017002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x017002_OnDie( sceneId, selfId, killerId )
end
