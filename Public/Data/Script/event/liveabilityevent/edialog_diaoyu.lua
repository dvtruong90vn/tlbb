--¶Ô»°ÊÂ¼þ 

--½Å±¾ºÅ
x713609_g_ScriptId = 713609

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x713609_OnDefaultEvent( sceneId, selfId, targetId )
	dialog = "#{event_liveabilityevent_0009}"
		BeginEvent(sceneId)
		AddText(sceneId, dialog)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x713609_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713609_g_ScriptId,"Tìm hi¬u câu cá",11,-1)
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x713609_CheckAccept( sceneId, selfId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x713609_OnAccept( sceneId, selfId, AbilityId )
end
