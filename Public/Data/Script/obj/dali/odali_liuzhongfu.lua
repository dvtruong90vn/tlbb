-- ´óÀíNPC
-- ÁõÖÙ¸¦

x002092_g_scriptId = 002092

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x002092_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Lßu M² ğªn nay phàm 52 nåm, vçn chßa th¤y có ai xÑng ğáng là ğ¸ch thü. M¤y nåm trß¾c, ta ğã bÕi dß¾i tay mµt v¸ Lı S½n Tiên Nhân, lúc ğó ta m¾i biªt thiên ngoÕi hæu thiên, nhân thßşng hæu nhân..." )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
