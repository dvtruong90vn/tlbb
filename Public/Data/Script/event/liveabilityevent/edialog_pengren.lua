--¶Ô»°ÊÂ¼þ 

--½Å±¾ºÅ
x713601_g_ScriptId = 713601

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x713601_OnDefaultEvent( sceneId, selfId, targetId )
	dialog = "#{event_liveabilityevent_0001}"
		BeginEvent(sceneId)
		AddText(sceneId, dialog)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x713601_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713601_g_ScriptId,"TÕi hÕ mu¯n tìm hi¬u n¤u nß¾ng",11,-1)
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x713601_CheckAccept( sceneId, selfId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x713601_OnAccept( sceneId, selfId, AbilityId )
end
