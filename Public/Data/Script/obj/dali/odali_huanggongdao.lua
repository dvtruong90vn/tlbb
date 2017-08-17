--´óÀíNPC
--»Æ¹«µÀ
--·þ×°µê

x002024_g_scriptId = 002024
x002024_g_shoptableindex = 2

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002024_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Ti®m ta có r¤t nhi«u thß½ng ph¦m bán chÕy, hoan nghênh ðã ghé thåm!" )
		AddNumText( sceneId, x002024_g_scriptId, "Mua thß½ng ph¦m", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002024_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x002024_g_shoptableindex )
	end
end
