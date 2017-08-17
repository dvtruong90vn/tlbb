--¶ëáÒNPC
--ÆÕÍ¨µÜ×Ó
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x015030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Hoan nghênh ngß½i t¾i Nga My S½n. nªu ngß½i c¥n giúp ğŞ, hãy t¾i g¥n S½n Môn tìm Tri Khách SÑ ğ¬ nh¶ giúp ğŞ.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
