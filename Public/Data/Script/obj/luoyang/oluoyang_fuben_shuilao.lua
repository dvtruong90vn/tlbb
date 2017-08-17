--Ë®ÀÎ¸±±¾ÈÎÎñnpc

--½Å±¾ºÅ
x000089_g_scriptId = 000090


--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000089_g_eventList={231000}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000089_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		AddText(sceneId,"  "..PlayerName..", t¾i ðây. \n")
		for i, findId in x000089_g_eventList do
			CallScriptFunction( x000089_g_eventList[i], "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000089_OnDefaultEvent( sceneId, selfId, targetId )
------------------------------------------------------
--[Nov.1 2006]Lybin Close
--x000089_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Các hÕ mau ðªn BÕch Mã tñ, Trí Thanh ðÕi sß ðang r¤t nóng lòng g£p các hÕ ðó! Ta m¤y hôm nay vi®c quá b§n, ðþi ta bình ð¸nh xong loÕn ðäng · Thüy lao, nh¤t ð¸nh s¨ ðªn BÕch Mã tñ quyên tª cho dân t¸ nÕn" )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
------------------------------------------------------
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000089_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x000089_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x000089_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000089_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x000089_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x000089_g_eventList do
		if missionScriptId == findId then
			x000089_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x000089_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000089_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x000089_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000089_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000089_OnDie( sceneId, selfId, killerId )
end
