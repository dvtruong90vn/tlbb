--åÐÒ£NPC
--ÆÕÍ¨µÜ×Ó
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x014030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"C¦n th§n trong Lång Ba Ðµng ð¥y rçy c½ quan, ð×ng nên ði vào trong khu c¤m ð¸a. Nªu các hÕ c¥n sñ giúp ðÞ, m¶i ðªn g£p Tri khách sÑ · g¥n cØa ðµng ð¬ tìm sñ giúp ðÞ.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
