--ËÕÖİNPC
--ÅÓ´Ğ
--²¹Ò©µê

x001057_g_shoptableindex=29

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x001057_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"TÕi hÕ ğang nghiên cÑu bào chª b± dßşc dß¾i sñ hß¾ng dçn cüa sß phø, ğşi hôm nào thành công, tÕi hÕ có th¬ bán v¯n cho các hÕ. SuÜt -... Ngß¶i bình thß¶ng tÕi hÕ không bao gi¶ cho biªt.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	--DispatchShopItem( sceneId, selfId,targetId, x001057_g_shoptableindex )
end
