--ÁÉÎ÷NPC
--Îä¼ª
--5¼¶´òÔìÍ¼Ö½ÉÌ

x021007_g_scriptId = 021007
x021007_g_shoptableindex = 107

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x021007_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "G¥n ðây khách ðªn làm bän ð° ngày càng nhi«u, sao, Trung Nguyên lÕi s¡p giao tranh r°i hä?" )
		AddNumText( sceneId, x021007_g_scriptId, "Ngß½i mu¯n mua gì nào?", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x021007_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x021007_g_shoptableindex )
	end
end
