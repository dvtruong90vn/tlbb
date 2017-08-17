--ÑãÄÏNPC
--°ÙÐÕ
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x018007_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"H÷ ð«u là chúng sinh cüa ÐÕi T¯ng, ð«u sinh s¯ng · NhÕn Môn Quan ðã m¤y ð¶i r°i, ð¤t vàng ð¤t bÕc cûng không b¢ng ð¤t nhà mình. H÷ s¨ không bö ði.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
