--´óÀíNPC
--ÕäÊŞÍÃ
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x002068_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local roll = random(0,2)
	if roll <= 0 then
			AddText(sceneId,"Vân Phiêu Phiêu tÖ tÖ s· hæu r¤t nhi«u trân thú quı hiªm. Phiêu Phiêu, Phiêu Phiêu, ta yêu tÖ gi¯ng nhß chuµt yêu ğÕi m­!")
	elseif roll <= 1 then
			AddText(sceneId,"Ğ×ng cho là ta không biªt nói. Phiêu Phiêu tÖ tÖ ğã dÕy ta r°i. Không tin chúng ta hãy tÖ thí!")
	else
			AddText(sceneId,"Ngß½i biªt không, Phiêu Phiêu tÖ tÖ còn hai ch¸ em sinh ba næa, gi¯ng nhau nhß ğúc...")
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
