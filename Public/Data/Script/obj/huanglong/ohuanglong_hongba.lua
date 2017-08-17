--»ÆÁúNPC
--ºé°Ô
--Ò°Íâ±¦Ê¯··×Ó

x023007_g_scriptId = 023007
x023007_g_shoptableindex = 111

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x023007_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Giá bán cüa chúng tôi · ðây th¤p h½n trong thành ph¯ r¤t nhi«u, tin hay không thì tùy..." )
		AddNumText( sceneId, x023007_g_scriptId, "Xem ngß½i có món gì", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x023007_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		if(GetLevel(sceneId, selfId) < 30 ) then
			BeginEvent( sceneId )
			AddText( sceneId, "#{BSSR_20080131_01}" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		DispatchShopItem( sceneId, selfId, targetId, x023007_g_shoptableindex )
	end
end
