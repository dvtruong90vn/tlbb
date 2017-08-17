--¶Ô»°ÊÂ¼þ 

--½Å±¾ºÅ
x713604_g_ScriptId = 713604

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x713604_OnDefaultEvent( sceneId, selfId, targetId )
	dialog = "#{event_liveabilityevent_0004}"
		BeginEvent(sceneId)
		AddText(sceneId, dialog)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x713604_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713604_g_ScriptId,"TÕi hÕ mu¯n tìm hi¬u ngh« ðúc",11,-1)
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x713604_CheckAccept( sceneId, selfId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x713604_OnAccept( sceneId, selfId, AbilityId )
end
