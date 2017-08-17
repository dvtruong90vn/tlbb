--Â¥À¼NPC....
--»¨µê....

x001131_g_scriptId = 001131
x001131_g_shoptableindex = 74

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001131_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "#{LLGC_20080324_03}" )
		AddNumText( sceneId, x001131_g_scriptId, "Ngß½i mu¯n mua gì", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x001131_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x001131_g_shoptableindex )
	end
end
