--Ø¤°ïNPC
--È«¹ÚÇå
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x010004_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Thù l¾n cüa phó bang chü nh¤t ð¸nh phäi báo, ai phän ð¯i kë ðó chính là ð°ng b÷n cüa lû giªt chªt Mã phó bang chü.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
