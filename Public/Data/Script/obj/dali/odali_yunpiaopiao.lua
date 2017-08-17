--ÔÆÆ®Æ®

--½Å±¾ºÅ
x002051_g_scriptId = 002051

x002051_g_shoptableindex=27

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
--x002051_g_eventList={210214,210215,210216,210220,210223, 808090, 808091, 806020}	--808090:ÁìÈ¡ÕÐÅÆ»î¶¯	--add by xindefeng
x002051_g_eventList={210214,210215,210216,210220,210221,210223, 808091, 806020}	--808090:ÁìÈ¡ÕÐÅÆ»î¶¯	--add by xindefeng

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x002051_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"#{OBJ_dali_0029}")
	AddNumText(sceneId,x002051_g_scriptId,"Mua ð° dùng trân thú",7,0)
	for i, eventId in x002051_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002051_OnDefaultEvent( sceneId, selfId,targetId )
	x002051_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002051_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText() == 0	then
		DispatchShopItem( sceneId, selfId,targetId, x002051_g_shoptableindex )
	end
	for i, findId in x002051_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x002051_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002051_g_eventList do
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
function x002051_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x002051_g_eventList do
		if missionScriptId == findId then
			x002051_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x002051_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002051_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x002051_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002051_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x002051_OnDie( sceneId, selfId, killerId )
end

--**********************************
--Ìá½»ÕäÊÞ
--**********************************
function x002051_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
	for i, findId in x002051_g_eventList do
		if scriptId == findId then
			CallScriptFunction( scriptId, "OnMissionCheck", sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
			return
		end
	end
end
