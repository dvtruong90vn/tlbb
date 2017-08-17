--Ãç½®NPC
--ºéÌì
--Ò°Íâ±¦Ê¯··×Ó

x029006_g_scriptId = 029006
x029006_g_shoptableindex = 109

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x029006_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Xem hàng thì ðßþc, nhßng ð×ng hòng m½ tß·ng t¾i vi®c thåm dò lai l¸ch Bäo ThÕch · ch² ta. M¤y huynh ð® ta chï có con ðß¶ng sinh nhai này thôi" )
		AddNumText( sceneId, x029006_g_scriptId, "Xem ngß½i có hàng gì t¯t", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x029006_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		if(GetLevel(sceneId, selfId) < 30 ) then
			BeginEvent( sceneId )
			AddText( sceneId, "#{BSSR_20080131_01}" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		DispatchShopItem( sceneId, selfId, targetId, x029006_g_shoptableindex )
	end
end
