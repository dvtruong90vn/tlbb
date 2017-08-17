--Îäµ±NPC
--ÕÅº¯Ö¥
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x012005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Nhìn bµ dÕng cüa ngß½i, hình nhß không ğßşc vui vë cho l¡m. Có c¥n ta cùng ği ch½i v¾i ngß½i hay không?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
