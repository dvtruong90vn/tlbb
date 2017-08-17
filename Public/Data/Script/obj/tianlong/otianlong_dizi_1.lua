--´óÀíNPC
--ÆÕÍ¨µÜ×Ó
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x013030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Thiên Long Tñ là mµt n½i ğ¬ yên tînh tu hành cüa cØa Ph§t. Nªu ngß½i c¥n giúp ğŞ, hãy ğªn ch² g¥n cØa Thiên Long Tñ ğ¬ tìm sß Tri Khách nh¶ giúp ğŞ.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
