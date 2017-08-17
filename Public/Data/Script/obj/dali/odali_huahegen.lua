--´óÀíNPC
--»ªºÕôÞ
--ÆÕÍ¨

--½Å±¾ºÅ
x002014_g_scriptId = 002014

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x002014_g_eventList={200001,200005}


--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002014_OnDefaultEvent( sceneId, selfId,targetId )
  local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "Cô nß½ng"
	else
		PlayerSex = "Thiªu hi®p"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  "..PlayerName..PlayerSex.."#{OBJ_dali_0004}")

		for i, eventId in x002014_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
-- Ñ¡ÖÐÒ»Ïî
--**********************************
function x002014_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x002014_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end

end
