--Ã·ÁëNPC
--Ì«Ñô»¨
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x033002_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ðàn ông? Trong bµ tµc S½n Vi®t ta ðàn ông chï là nô bµc, sinh ra ðã chï có th¬ làm hµ pháp, ch¸u sai khiªn cüa næ tª tß b÷n ta. Phong tøc này có t× ngàn nåm trß¾c, là ý cüa th¥n linh, không ðßþc ch¯ng lÕi!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
