--Îäµ±NPC
--ÆÕÍ¨µÜ×Ó
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x012033_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta là ð® tØ cüa phái Võ Ðang.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
