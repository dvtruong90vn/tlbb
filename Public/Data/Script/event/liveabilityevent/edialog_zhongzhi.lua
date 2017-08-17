--¶Ô»°ÊÂ¼ş npcÖÜÀÏÊµ

--½Å±¾ºÅ
x713610_g_ScriptId = 713610

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x713610_OnDefaultEvent( sceneId, selfId, targetId )
	dialog = "#{event_liveabilityevent_0010}"
		BeginEvent(sceneId)
		AddText(sceneId, dialog)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x713610_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713610_g_ScriptId,"TÕi hÕ mu¯n tìm hi¬u tr°ng tr÷t",11,-1)
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x713610_CheckAccept( sceneId, selfId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x713610_OnAccept( sceneId, selfId, AbilityId )
end
