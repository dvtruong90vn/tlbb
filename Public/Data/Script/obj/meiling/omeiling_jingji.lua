--Ã·ÁëNPC
--¾£¼¬
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x033003_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"— ðâu có áp bÑc, · ðó có ð¤u tranh. S½n Vi®t Hµ Pháp chúng ta không th¬ gi¯ng nhß t± tiên, ch¸u áp bÑc cüa S½n Vi®t næ tª tß næa! Cho dù ð¶i này chúng ta th¤t bÕ¸, thì con cháu chúng ta cûng tiªp tøc ð¤u tranh ðªn cùng!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
