--ÂåÑôNPC
--°×Ó±ÖÐ
--²¹Ò©µê

x000085_g_shoptableindex=29

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000085_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta chuyên nghiên cÑu chª tÕo thu¯c b±. Ch¶ mµt ngày nào ðó nghiên cÑu thành công, ta có th¬ bán cho ngß½i l¤y ti«n. H×, ngß¶i bình thß¶ng thì ta s¨ không nói ðâu nha...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	--DispatchShopItem( sceneId, selfId,targetId, x000085_g_shoptableindex )
end
