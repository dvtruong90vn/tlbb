--ÂåÑôNPC
--ÎäÌïĞÅĞş
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x000048_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"ĞÕi T¯ng có r¤t nhi«u ği«u ğáng cho chúng tôi h÷c höi, ğ£c bi®t là <<Tôn TØ binh pháp>>, qua ĞÕi hµi túc c¥u này hy v÷ng hai nß¾c có th¬ giao lßu trao ğ±i nhi«u v¾i nhau")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
