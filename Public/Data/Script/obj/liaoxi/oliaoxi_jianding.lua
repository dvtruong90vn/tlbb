--ÁÉÎ÷NPC
--½£¶¨
--7¡«10¼¶¼ø¶¨ÉÌ

x021008_g_scriptId = 021008
x021008_g_shoptableindex = 141

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x021008_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Ta tñ nh§n trong lînh vñc giám ð¸nh cûng có chút bän lãnh, có th¬ giúp gì cho các hÕ chång?" )
		AddNumText( sceneId, x021008_g_scriptId, "Mua Phù giám ð¸nh", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x021008_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x021008_g_shoptableindex )
	end
end
