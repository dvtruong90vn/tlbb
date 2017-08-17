--´óÀíNPC
--³õ»÷Æ½
--¼ø¶¨·ûÉÌÈË

x002077_g_scriptId = 002077
x002077_g_shoptableindex = 10

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002077_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Bän nhân bán ra các loÕi ðµc nh¤t vô nh¸ bí chª phù, có khä nång giám ð¸nh thuµc tính các loÕi hình trang b¸. Ngß½i có mu¯n xem không?" )
		AddNumText( sceneId, x002077_g_scriptId, "Xem ngß½i bán nhæng gì", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002077_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x002077_g_shoptableindex )
	end
end
