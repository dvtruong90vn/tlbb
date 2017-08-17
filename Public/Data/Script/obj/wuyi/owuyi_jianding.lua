--ÎäÒÄNPC
--½§Í¡
--5¡«8¼¶¼ø¶¨ÉÌ

x032006_g_scriptId = 032006
x032006_g_shoptableindex = 140

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x032006_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "— ðây ta có mµt vài cu¯n sách có th¬ giám ð¸nh trang b¸, ngß½i có mu¯n xem không?" )
		AddNumText( sceneId, x032006_g_scriptId, "Mua Phù giám ð¸nh", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x032006_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x032006_g_shoptableindex )
	end
end
