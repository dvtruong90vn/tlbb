--ÌìÁúNPC
--ºÎºìç±
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x013012_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"B±n Tß¾ng ğÕi sß g¥n ğây luôn nh¡c v¾i ta v« 1 h§u b¯i cüa ông. Ngß¶i ğó chính là chính là cháu trai cüa Hoàng Thßşng, tên là Ğoàn Dñ.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
