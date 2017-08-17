--Ã·ÁëNPC
--ÉòÍòÈý
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x033001_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Không ng¶ chuyªn hàng ph¤n son này bán nhanh thª, xem ra l¥n này ðên ðây r¤t ðúng. Ði qua thäo nguyên, Lan Lång qu§n chúa còn khen ngþi hàng cüa ta, ta phäi tính toán kÛ xem chuyªn này kiªm bao nhiêu l¶i...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
