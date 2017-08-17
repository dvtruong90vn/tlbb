--ÅÓÍò´º

--½Å±¾ºÅ
x011005_g_scriptId = 011005

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x011005_g_eventList={}
--x011005_g_eventList={200912,201011,201612,201811}		

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x011005_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
		AddText(sceneId,"#{MJJZ_081103_03}");
		x011005_g_MenPai = GetMenPai(sceneId, selfId)
		if x011005_g_MenPai == 1 then
			AddNumText(sceneId, x011005_g_scriptId, "KÛ nång h÷c t§p",12,0)
		end
	for i, eventId in x011005_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	
	AddNumText(sceneId, x011005_g_scriptId, "Gi¾i thi®u v« tâm pháp",11,10)
	--AddNumText(sceneId, x011005_g_scriptId, "#{JZBZ_081031_02}",11,11)
	
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x011005_OnDefaultEvent( sceneId, selfId,targetId )
	x011005_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x011005_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 10 then
			BeginEvent(sceneId)	
					
				AddText( sceneId, "#{function_xinfajieshao_001}" )
								
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	elseif GetNumText() == 11 then
		BeginEvent(sceneId)					
			AddText( sceneId, "#{JZBZ_081031_01}" )							
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end


	if	GetNumText()==0	then
			DispatchXinfaLevelInfo( sceneId, selfId, targetId, 1 );
	else
		for i, findId in x011005_g_eventList do
			if eventId == findId then
				CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
				return
			end
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x011005_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x011005_g_eventList do
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
function x011005_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x011005_g_eventList do
		if missionScriptId == findId then
			x011005_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x011005_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x011005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x011005_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x011005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x011005_OnDie( sceneId, selfId, killerId )
end
