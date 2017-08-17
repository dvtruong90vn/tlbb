--¶Ô»°ÊÂ¼þ npc°×Ó±Ã÷

--½Å±¾ºÅ
x713621_g_ScriptId = 713621

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x713621_OnDefaultEvent( sceneId, selfId, targetId)
	dialog = "#{event_liveabilityevent_0030}"
		BeginEvent(sceneId)
		AddText(sceneId, dialog)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x713621_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713621_g_ScriptId,"TÕi hÕ mu¯n tìm hi¬u dßÞng sinh pháp",11,-1)
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x713621_CheckAccept( sceneId, selfId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x713621_OnAccept( sceneId, selfId, AbilityId )
end
