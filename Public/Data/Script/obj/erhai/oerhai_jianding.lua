--¶ýº£NPC
--¼ò¶¡
--5¡«7¼¶¼ø¶¨ÉÌ

x024006_g_scriptId = 024006
x024006_g_shoptableindex = 139

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x024006_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Không sai, tÕi hÕ chính là ngß¶i bán phù giám ð¸nh, các hÕ mu¯n chång?" )
		AddNumText( sceneId, x024006_g_scriptId, "Mua Phù giám ð¸nh", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x024006_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x024006_g_shoptableindex )
	end
end
