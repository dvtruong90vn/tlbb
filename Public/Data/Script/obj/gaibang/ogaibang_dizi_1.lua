--Ø¤°ïNPC
--ÆÕÍ¨µÜ×Ó
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x010030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"N½i ðây là t±ng ðà cüa Cái Bang. Nªu ngß½i c¥n giúp ðÞ, hãy ðªn ch² g¥n c±ng vi®n tìm Tri Khách Cái giúp cho.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
