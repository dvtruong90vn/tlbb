--ÇíÖİNPC
--Áõ¼¾
--6¼¶´òÔìÍ¼Ö½ÉÌ

x035006_g_scriptId = 035006
x035006_g_shoptableindex = 108

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x035006_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Này... mau ch÷n thÑ các hÕ thích r°i ği ği, ğ×ng ğ¬ m÷i ngß¶i biªt ta ğang · ğây." )
		AddNumText( sceneId, x035006_g_scriptId, "Ngß½i mu¯n mua gì nào?", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x035006_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x035006_g_shoptableindex )
	end
end
