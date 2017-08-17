--ÇíÖİNPC
--ÔÀÀÏÈı
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x035004_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"G¥n ğây NhÕc Lão Nh¸ ta có bái mµt v¸ sß phø m¾i · ĞÕi Lı, bän lãnh không h« bình thß¶ng. Không nói ğâu khác, chï mµt tuy®t kÛ \"Lång Ba Vi Bµ\" cüa sß phø thôi, ch¡c thª gian này không có kë thÑ 2. #r#rL¥n này v« QuÏnh Châu, chü yªu là ğªn ğón phu nhân ta.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
