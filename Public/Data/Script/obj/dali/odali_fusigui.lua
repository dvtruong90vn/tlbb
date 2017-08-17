--¸µË¼¹é

--½Å±¾ºÅ
x002013_g_scriptId = 002013

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x002013_g_eventList={}
--x002013_g_eventList={201002,201101,201102,201103}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x002013_UpdateEventList( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "Cô nß½ng"
	else
		PlayerSex = "Thiªu hi®p"
	end
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"Nghe nói · Vô Lßþng S½n, Cao S½n BÕch Viên luôn ðä thß½ng ngß¶i, "..PlayerName..PlayerSex..", ch¶ thêm vài ngày næa r°i cùng chúng ta - TÑ ÐÕi Hµ V® cùng lên núi mµt chuyªn tr× yêu thß·ng ngoÕn luôn nhé!");
	for i, eventId in x002013_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002013_OnDefaultEvent( sceneId, selfId,targetId )
	x002013_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002013_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x002013_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x002013_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002013_g_eventList do
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
function x002013_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x002013_g_eventList do
		if missionScriptId == findId then
			x002013_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x002013_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002013_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x002013_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002013_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x002013_OnDie( sceneId, selfId, killerId )
end
