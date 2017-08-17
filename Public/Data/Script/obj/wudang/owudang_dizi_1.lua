--Îäµ±NPC
--ÆÕÍ¨µÜ×Ó
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x012030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Viên chuy¬n nhß ı, thanh t¸nh vô vi, ğây chính là núi Võ Ğang. Nªu bÕn c¥n sñ giúp ğŞ, m¶i ğªn tìm Tri khách ğÕo nhân · g¥n ğây ğ¬ nh¶ giúp ğŞ.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
