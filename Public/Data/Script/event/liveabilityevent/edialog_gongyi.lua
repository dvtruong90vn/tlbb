--¶Ô»°ÊÂ¼þ npc°×Ó±Ã÷

--½Å±¾ºÅ
x713606_g_ScriptId = 713606

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x713606_OnDefaultEvent( sceneId, selfId, targetId )
	dialog = "#{event_liveabilityevent_0006}"
		BeginEvent(sceneId)
		AddText(sceneId, dialog)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x713606_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713606_g_ScriptId,"Tìm hi¬u công ngh®",11,-1)
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x713606_CheckAccept( sceneId, selfId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x713606_OnAccept( sceneId, selfId, AbilityId )
end
