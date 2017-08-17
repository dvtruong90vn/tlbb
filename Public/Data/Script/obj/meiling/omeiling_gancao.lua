--Ã·ÁëNPC
--¸Ê²Ý
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x033004_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Kinh Cúc ðÕi hµ pháp nói r¤t phäi, Mai Lînh m÷i chuy®n l¾n bé không có gì n¢m ngoài tính toán cüa ðÕi hµ pháp. Chúng ta cÑ làm theo ý cüa ÐÕi hµ pháp, cho dù chªt hàng vÕn l¥n cûng sung sß¾ng h½n s¯ng m½ h° mù quáng.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
