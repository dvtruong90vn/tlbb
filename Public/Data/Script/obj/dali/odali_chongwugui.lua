--´óÀíNPC
--ÕäÊŞ¹ê
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x002067_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local roll = random(0,2)
	if roll <= 0 then
			AddText(sceneId,"Vân Diêu Diêu tÖ tÖ s· hæu r¤t nhi«u trân thú quı hiªm. Diêu Diêu, Diêu Diêu ta yêu tÖ tña nhß chuµt yêu ğÕi m­!")
	elseif roll <= 1 then
			AddText(sceneId,"Ğ×ng cho là ta không biªt nói! Diêu Diêu tÖ tÖ ğã dÕy ta nói r°i. Không tin chúng ta hãy tÖ thí!")
	else
			AddText(sceneId,"Ngß½i biªt không. Nghe nói Diêu Diêu tÖ tÖ còn hai ch¸ em sinh ğôi næa, gi¯ng nhau nhß ğúc...")
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
