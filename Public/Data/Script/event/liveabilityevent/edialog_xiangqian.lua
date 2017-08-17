--¶Ô»°ÊÂ¼þ 

--½Å±¾ºÅ
x713603_g_ScriptId = 713603

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x713603_OnDefaultEvent( sceneId, selfId, targetId )
	dialog = "#{event_liveabilityevent_0003}"
		BeginEvent(sceneId)
		AddText(sceneId, dialog)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x713603_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713603_g_ScriptId,"TÕi hÕ mu¯n tìm hi¬u chÕm khäm",11,-1)
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x713603_CheckAccept( sceneId, selfId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x713603_OnAccept( sceneId, selfId, AbilityId )
end
