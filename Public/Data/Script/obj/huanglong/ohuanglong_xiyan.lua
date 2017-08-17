--»ÆÁúNPC
--Ï¦ÑÕ
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x023003_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"TÕi hÕ chï · vài ngày · tr¤n Hoàng Long, nhßng vài ngày ðó cho tÕi hÕ cäm giác vô cùng ¤m áp yên lành. So v¾i cuµc s¯ng ð¸a ngøc trß¾c ðây, thñc sñ là t¯t h½n không biªt bao nhiêu l¥n.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
