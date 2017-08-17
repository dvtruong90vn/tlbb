--¸ßÉýÌ©

--½Å±¾ºÅ
x002018_g_scriptId = 002018


--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x002018_g_eventList={}
--x002018_g_eventList={200301,200302}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x002018_UpdateEventList( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "Cô nß½ng"
	else
		PlayerSex = "Thiªu hi®p"
	end
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"Hi®n tÕi có r¤t nhi«u võ lâm nhân sÛ tø t§p tÕi thành ÐÕi Lý. "..PlayerName..PlayerSex..", nªu ngß½i mu¯n ðóng góp hy sinh vì tri«u ðình, hãy ðªn Ngû Hoa Ðàn tìm Lý Công Bµ, ông ta có r¤t nhi«u nhi®m vø c¥n ngß½i giúp ðÞ! S¨ có nhæng v§t ph¦m quý giá thß·ng cho ngß½i sau khi ngß½i hoàn thành nhi®m vø ông ta giao.")
	--ËÄ´ó¶ñÈË´Ë´ÎÇ°À´´óÀí,²»ÖªÓÐºÎËùÍ¼,µ«×Ü¶øÑÔÖ®,²»ÊÇºÃÊÂ.");
	for i, eventId in x002018_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002018_OnDefaultEvent( sceneId, selfId,targetId )
	x002018_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002018_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x002018_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x002018_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002018_g_eventList do
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
function x002018_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x002018_g_eventList do
		if missionScriptId == findId then
			x002018_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x002018_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002018_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x002018_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002018_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x002018_OnDie( sceneId, selfId, killerId )
end
