--Â³Æ½


--½Å±¾ºÅ
x024001_g_scriptId = 024001

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x024001_g_eventList={808099, 808100, 808101, 808094}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x024001_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Ngß¶i trë tu±i, · ðây không ðßþc chÕy lung tung! #r#rNgß¶i r×ng và ngß¶i sói ð«u r¤t ðáng sþ, hãy xem tình hình trong làng, các hÕ s¨ hi¬u b÷n xâm lßþc ðó hung dæ ðªn ðâu. #r#rCon ðß¶ng l¾n phía trß¾c tên Trà Mã ÐÕo, r¤t nhi«u thß½ng nhân v§n chuy¬n trà ðªn các nß¾c xa xôi, trß¾c ðây ðôi khi cûng có ðµi ngña phi qua làng, tiªng nhÕc ngña có th¬ vang r¤t xa...")
	for i, eventId in x024001_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x024001_OnDefaultEvent( sceneId, selfId,targetId )
	x024001_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x024001_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x024001_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x024001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x024001_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId, targetId )
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
function x024001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x024001_g_eventList do
		if missionScriptId == findId then
			x024001_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x024001_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x024001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x024001_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x024001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x024001_OnDie( sceneId, selfId, killerId )
end

