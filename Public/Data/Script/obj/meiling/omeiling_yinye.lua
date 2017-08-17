--Ã·ÁëNPC
--ÒøÒ¶
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x033006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Nghe nhæng l¶i cüa Kinh Cúc ğÕi hµ pháp, m¾i biªt m¤y chøc nåm nay s¯ng vô ích. Sau này m÷i ngß¶i ği theo Kinh Cúc ğÕi hµ pháp, d¥u sôi lØa böng cûng nguy®n mµt lòng.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
