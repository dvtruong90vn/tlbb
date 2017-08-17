--´óÀíNPC
--ÕäÊŞÃ¨
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x002066_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local roll = random(0,2)
	if roll <= 0 then
			AddText(sceneId,"Vân Phi Phi tÖ tÖ s· hæu r¤t nhi«u trân thú quı hiªm. Phi Phi, Phi Phi, ta yêu tÖ gi¯ng nhß chuµt yêu ğÕi m­!")
	elseif roll <= 1 then
			AddText(sceneId,"Ğ×ng cho là ta không biªt nói, Phi Phi tÖ tÖ ğã dÕy ta nói r°i. Không tin chúng ta hãy tÖ thí!")
	else
			AddText(sceneId,"Ngß½i biªt không, nghe nói Phi Phi tÖ tÖ còn hai ch¸ em sinh ba næa, gi¯ng nhau nhß ğúc...")
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
