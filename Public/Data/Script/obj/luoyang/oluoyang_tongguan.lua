--Í¯¹á

--½Å±¾ºÅ
x000004_g_scriptId = 000004

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000004_g_eventList={402040}		

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000004_UpdateEventList( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " Cô nß½ng"
	else
		PlayerSex = " Thiªu hi®p"
	end
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"  "..PlayerName..PlayerSex.."th¤y các hÕ th§t vui m×ng! Ta hi®n gi¶ phø trách công vi®c cüa cuµc thi Túc C¥u. Cuµc thi túc c¥u b¡t ð¥u vào 19h t¯i chü nh§t tu¥n thÑ ba và thÑ nh¤t cüa m²i tháng, ðªn 23h kªt thÑc. C½ hµi hiªm có, ð×ng bö lÞ!");
	for i, eventId in x000004_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	--[tx45411]AddNumText(sceneId, x000004_g_scriptId, "#{NSRQ_081110_2}", 11, 999);    
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000004_OnDefaultEvent( sceneId, selfId,targetId )
	x000004_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000004_OnEventRequest( sceneId, selfId, targetId, eventId )
	--[tx45411]if GetNumText() == 999 then                                           
		--BeginEvent(sceneId)					
		--	AddText( sceneId, "#{NSRQ_081110_3}" )						
		--EndEvent(sceneId)
		--DispatchEventList(sceneId,selfId,targetId)
		--return		
	--[/tx45411]end
	for i, findId in x000004_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x000004_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000004_g_eventList do
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
function x000004_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x000004_g_eventList do
		if missionScriptId == findId then
			x000004_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x000004_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x000004_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000004_OnDie( sceneId, selfId, killerId )
end
