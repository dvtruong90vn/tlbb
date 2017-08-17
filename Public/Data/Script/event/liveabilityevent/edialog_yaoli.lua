--¶Ô»°ÊÂ¼þ 

--½Å±¾ºÅ
x713620_g_ScriptId = 713620

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x713620_OnDefaultEvent( sceneId, selfId, targetId)
	dialog = "#{event_liveabilityevent_0029}"
		BeginEvent(sceneId)
		AddText(sceneId, dialog)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x713620_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713620_g_ScriptId,"TÕi hÕ mu¯n tìm hi¬u dßþc lý",11,-1)
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x713620_CheckAccept( sceneId, selfId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x713620_OnAccept( sceneId, selfId, AbilityId )
end
