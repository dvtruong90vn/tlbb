--Ã÷½ÌNPC
--Ê¿±ø
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x011010_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Quang Minh ðïnh là ð¤t c¤m. Không ðßþc chÕy lung tung! C¦n th§n lÕc ðß¶ng!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
